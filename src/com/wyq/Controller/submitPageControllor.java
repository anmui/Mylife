package com.wyq.Controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.wyq.Service.submitPageService;

@Controller
public class submitPageControllor {
	
	@Autowired
    @Qualifier("submitPageService")
    private submitPageService submitpageservice;
	
	@RequestMapping(value="/submit")
    public   ModelAndView onsubmit(HttpServletRequest request, HttpServletResponse response,String title,String open,String tag,String article_desc,ModelAndView mv,String userid,HttpSession session) throws UnsupportedEncodingException{
		int count=submitpageservice.gatid()+1;
		String s="";
		s=count+"";
		request.setCharacterEncoding("UTF-8");//客户端网页我们控制为UTF-8
		//title=java.net.URLDecoder.decode(title,"UTF-8");
		//article_desc=java.net.URLDecoder.decode(article_desc,"UTF-8");
	    title = request.getParameter("title");
	    tag=request.getParameter("tag");
	    open=request.getParameter("open");
	    article_desc=request.getParameter("article_desc");
	    article_desc=article_desc.replace("\"","\\\"");
		int num=submitpageservice.submitpage(s, userid, title, article_desc,tag,open);
		if(num>0)
		{
			submitpageservice.setid(count);
			session.setAttribute("result",1);
		}
		else
		{
			session.setAttribute("result",0);
		}
		session.setAttribute("userid", userid);
        System.out.println(article_desc);
        mv.setView(new RedirectView("/BookApp/edit")); 
		return mv;
		
		
	}
	@RequestMapping(value="/zhuce")
    public   ModelAndView onsubmituser(HttpServletRequest request, HttpServletResponse response,String id,String name,String password,String sex,ModelAndView mv,String phone,HttpSession session,String email,String qq) throws UnsupportedEncodingException{
		
		
		request.setCharacterEncoding("UTF-8");//客户端网页我们控制为UTF-8
		//title=java.net.URLDecoder.decode(title,"UTF-8");
		//article_desc=java.net.URLDecoder.decode(article_desc,"UTF-8");
		
	    id = request.getParameter("id");
	    System.out.println(id);
	    name=request.getParameter("name");
	    password=request.getParameter("password");
	    sex=request.getParameter("sex");
	    phone=request.getParameter("phone");
	    qq=request.getParameter("QQ");
	    email=request.getParameter("email");
	    if(sex=="on")sex="1";
	    else sex="2";
	    int num1=submitpageservice.IDok(id);
	   
	    if(num1>0)
	    {
	    	session.setAttribute("mes", "ID已使用");
			mv.setView(new RedirectView("/BookApp/zhucetest"));
		
			return mv;
	    }
	    else
	    {
		int num=submitpageservice.submituser(id, password, name, email, qq, phone, sex);
		
		if(num>0)
		{
			
			session.setAttribute("mes","注册成功");
			session.setAttribute("userid", id);
			mv.setView(new RedirectView("/BookApp/main")); 
		}
		else
		{
			session.setAttribute("mes","注册失败");
			mv.setView(new RedirectView("/BookApp/zhucetest")); 
		}
		//session.setAttribute("userid", userid);
        
	    }
		return mv;
		
		
	}

}
