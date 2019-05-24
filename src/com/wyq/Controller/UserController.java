package com.wyq.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.wyq.Bean.User;
import com.wyq.Service.UserService;

@Controller
public class UserController {  
    
    @Autowired
    @Qualifier("userService")
    private UserService userService; 
    
    
    @RequestMapping(value="/login")
    public  ModelAndView login(String loginname,String password,ModelAndView mv,HttpSession session){
        
        User user = userService.login(loginname, password); 
        
        if (user!=null) {  
           
            session.setAttribute("userid", user.getUserid());
            System.out.println("22222");
            mv.setView(new RedirectView("/BookApp/main1")); 
           
        }else {
            
            mv.addObject("message","用户名或密码错误");
            System.out.println("11111");
            mv.setViewName("loginForm");
     
        }
        
        return mv;
    }
    
}