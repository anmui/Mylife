package com.wyq.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class getIUseridController {
	@RequestMapping(value="/edit1")
    public ModelAndView onsubmit(String userid,ModelAndView mv,HttpSession session){
		session.setAttribute("userid", userid);
		mv.setView(new RedirectView("/BookApp/edit"));
		return mv;
	}
	@RequestMapping(value="/edit2")
    public ModelAndView onsubmit2(String userid,ModelAndView mv,HttpSession session){
		session.setAttribute("userid", userid);
		
		mv.setView(new RedirectView("/BookApp/houtai"));
		return mv;
	}
}
