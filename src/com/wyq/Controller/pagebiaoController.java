package com.wyq.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wyq.Bean.User;
import com.wyq.Bean.page;
import com.wyq.Service.ALLPageService;
import com.wyq.Service.UserService;
@Controller
public class pagebiaoController {
	@Autowired
    @Qualifier("ALLPageService")   
    private ALLPageService allpageService;
	
	@Autowired
	@Qualifier("userService")
    private UserService userService;
	
    @RequestMapping(value ="/biao", method = RequestMethod.POST)
    public void test(HttpServletRequest request,HttpServletResponse response,String userid,int page, int limit) {
		String result = null;
		//取得客户端传来的值
		//int start = Integer.parseInt(request.getParameter("start"));
		//int start=1;
		int count=allpageService.getoneCount(userid);
		//向客户端返回一句话
		System.out.println("用户名"+userid);
		List<page> pages1=allpageService.getOneuser(userid,(page-1)*limit, limit);//start是页数
        int n=pages1.size();
        StringBuffer m = new StringBuffer();
        m.append("{\"code\": 200,\"msg\": \"\",\"count\":"+count+",\"data\":[");
        for(int i=0;i<n;i++)
        {
        	User usermes=userService.getUser(pages1.get(i).getUserid());
        	m.append("{\"title\":\""+pages1.get(i).getTitle()+"\",\"time\":\""+pages1.get(i).getTime()+"\",\"tag\":\""+pages1.get(i).getTag()+"\",\"open\":\""+pages1.get(i).getOpen()+"\",\"artical\":\""+pages1.get(i).getArtical()+"\",\"pageid\":\""+pages1.get(i).getPageid()+"\",\"userid\":\""+ pages1.get(i).getUserid()+"\",\"name\":\""+usermes.getName()+"\"},");
        }
        int size=m.length();
        String s1=m.substring(0, size-1);
        StringBuffer m2 = new StringBuffer();
        m2.append(s1);
        m2.append("]}");
        String m1=m2.toString();
        result = m1;
        System.out.println(m2);
		PrintWriter out = null;
		response.setContentType("text/plain;charset=UTF-8");
		try {
			out = response.getWriter();
			out.write(result);
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			out.close();
		}
    }



}
