package com.wyq.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.wyq.Bean.page;
import com.wyq.Service.ALLPageService;

@Controller
public class ALLPageController {
    
    @Autowired
    @Qualifier("ALLPageService")   
    private ALLPageService allpageService;
    
    @RequestMapping(value="/main1")  
    public String main(Model model,Integer start){
        
        //List<page> pages = allpageService.getAll(); 
        int count=allpageService.getCount();
        System.out.println(count);
        //List<page> pages1=allpageService.getOne((start-1)*8, 8);//start是页数
        model.addAttribute("count",count);//总数
        //model.addAttribute("pages",pages);
      //  model.addAttribute("pages1",pages1);//一页
        return "main";        
    }
    @RequestMapping(value="/myHome1")  
    public ModelAndView main2(String userid,ModelAndView mv,HttpSession session){
        
    	session.setAttribute("userid", userid);
        //List<page> pages = allpageService.getAll(); 
        int count=allpageService.getoneCount(userid);
        System.out.println(count);
        session.setAttribute("count", count);
        //List<page> pages1=allpageService.getOne((start-1)*8, 8);//start是页数
        //model.addAttribute("count",count);//总数
        //model.addAttribute("pages",pages);
      //  model.addAttribute("pages1",pages1);//一页
        mv.setView(new RedirectView("/BookApp/myHome"));
		return mv;      
    }
    @RequestMapping(value="/tag1")  
    public ModelAndView main3(String tag,ModelAndView mv,HttpSession session){
        
    	session.setAttribute("tag", tag);
    	System.out.println(tag);
        //List<page> pages = allpageService.getAll(); 
        int count=allpageService.gettagcount(tag);
        System.out.println(count);
        session.setAttribute("count", count);
        String m=null;
        if(tag.equals("1"))
        {
        m="生活"	;
        }
        else if(tag.equals("2"))
        {
        	m="学习";
        }
        else
        {
        	m="其他";
        }
        session.setAttribute("tag", m);
        //List<page> pages1=allpageService.getOne((start-1)*8, 8);//start是页数
        //model.addAttribute("count",count);//总数
        //model.addAttribute("pages",pages);
      //  model.addAttribute("pages1",pages1);//一页
        mv.setView(new RedirectView("/BookApp/tag"));
		return mv;      
    }

}