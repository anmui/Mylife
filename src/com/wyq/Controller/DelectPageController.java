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


import com.wyq.Service.DelectService;

@Controller
public class DelectPageController {
	@Autowired
	@Qualifier("DelectService")
    private DelectService DelectService;
	
    @RequestMapping(value = "/delect", method = RequestMethod.POST)
    public void test(HttpServletRequest request,HttpServletResponse response) {
		String result = null;
		//取得客户端传来的值
		String pageid =(String)request.getParameter("pageid");
		//向客户端返回一句话
		int num=DelectService.DelectOne(pageid);//start是页数
        System.out.println("1234");
		PrintWriter out = null;
		response.setContentType("text/plain;charset=UTF-8");
		try {
			out = response.getWriter();
			out.write(num);
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			out.close();
		}
    }




}
