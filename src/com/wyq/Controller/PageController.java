package com.wyq.Controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.wyq.Bean.User;
import com.wyq.Bean.content;
import com.wyq.Bean.page;
import com.wyq.Bean.reply;
import com.wyq.Service.ContentService;
import com.wyq.Service.PageService;
import com.wyq.Service.UserService;
@Controller
public class PageController {
	
	@Autowired
    @Qualifier("PageService")
    private PageService pageService;
	@Autowired
	@Qualifier("userService")
    private UserService userService;
	
	@Autowired
	@Qualifier("ContentService")
    private ContentService contentservice;
	
	@RequestMapping(value="/page")
	public ModelAndView getPage(String pageid,ModelAndView mv,HttpSession session) throws UnsupportedEncodingException
	{
		  
		//name=java.net.URLDecoder.decode(name,"UTF-8");
		//title=java.net.URLDecoder.decode(page,"UTF-8");
		List<page> page1=pageService.getoneArtical(pageid);
		//String content = pageService.getContent(pageid); 
		
		User usermes=userService.getUser(page1.get(0).getUserid());
		List<content> contents=contentservice.getallContent(pageid);
		List<reply> replys=contentservice.getallreply(pageid);
		session.setAttribute("title", page1.get(0).getTitle());
		session.setAttribute("pageid", page1.get(0).getPageid());
		session.setAttribute("content", page1.get(0).getArtical());
		session.setAttribute("contentss", contents);
		session.setAttribute("replys", replys);
		mv.addObject("contents",contents);
		
		//mv.addObject("replys",replys);
		//session.setAttribute("replys", replys);
	//	System.out.println(replys.get(0).getTime());
		System.out.println("111");
		String tag=null;
	//System.out.println(page1.get(0).getTag());
		if(page1.get(0).getTag().equals("1"))
		{
			 tag="生活";
		}
		else if(page1.get(0).getTag().equals("2"))
		{
			 tag="学习";
		}
		else if(page1.get(0).getTag().equals("3"))
		{
			 tag="其他";
		}
		//System.out.println(tag);
		session.setAttribute("tag",tag);
		session.setAttribute("name", usermes.getName());
		mv.setView(new RedirectView("/BookApp/MainPage"));
		return mv;
	}

}
