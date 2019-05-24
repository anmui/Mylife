package com.wyq.Controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.wyq.Service.AlertService;

@Controller
public class alertPageController {
	@Autowired
    @Qualifier("AlertService")
    private AlertService alertpageservice;
	
	@RequestMapping(value="/alert")
    public    ModelAndView onsubmit(HttpServletRequest request, HttpServletResponse response,String title,String article_desc,ModelAndView mv,String userid,String pageid,HttpSession session) throws IOException{
		request.setCharacterEncoding("UTF-8");//客户端网页我们控制为UTF-8
		//title=java.net.URLDecoder.decode(title,"UTF-8");
		//article_desc=java.net.URLDecoder.decode(article_desc,"UTF-8");
	    title = request.getParameter("title");
	    pageid = request.getParameter("pageid");
	    userid = request.getParameter("userid");
	    article_desc=request.getParameter("article_desc");
	    article_desc=article_desc.replace("\"","\\\"");
		int num=alertpageservice.Alertpage(pageid, title, article_desc);
		int mes=0;
		//request.setCharacterEncoding("UTF-8");
		if(num>0)
		{
			session.setAttribute("result",1);
			//mv.addObject("message",1);
		}
		else
		{
			session.setAttribute("result",0);
			//mv.addObject("message",0);
		} 
		session.setAttribute("userid", userid);
        System.out.println(article_desc);
        mv.setView(new RedirectView("/BookApp/houtai"));
        
		return mv;
		

}
	@RequestMapping(value="/alertuser")
    public    ModelAndView onalertuser(HttpServletRequest request, HttpServletResponse response,ModelAndView mv,String userid,String name,String password,String sex,String phone,String email,String QQ,HttpSession session) throws IOException{
		request.setCharacterEncoding("UTF-8");//客户端网页我们控制为UTF-8
		//title=java.net.URLDecoder.decode(title,"UTF-8");
		//article_desc=java.net.URLDecoder.decode(article_desc,"UTF-8");
		   userid = request.getParameter("userid");
		    System.out.println(userid);
		    name=request.getParameter("name");
		    password=request.getParameter("password");
		    sex=request.getParameter("sex");
		    phone=request.getParameter("phone");
		    QQ=request.getParameter("QQ");
		    email=request.getParameter("email");
		    if(sex=="on")sex="1";
		    else sex="2";
		int num=alertpageservice.Alertuser(userid,name,password,sex,phone,QQ,email);
		int mes=0;
		//request.setCharacterEncoding("UTF-8");
		if(num>0)
		{
			session.setAttribute("mes","修改失败");
			//mv.addObject("message",1);
		}
		else
		{
			session.setAttribute("mes","修改成功！");
			//mv.addObject("message",0);
		} 
		session.setAttribute("userid", userid);

        mv.setView(new RedirectView("/BookApp/houtaiuser"));
        
		return mv;
		

}
}
