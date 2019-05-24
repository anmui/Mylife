package com.wyq.Controller;

import java.io.UnsupportedEncodingException;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.wyq.Bean.content;
import com.wyq.Bean.page;
import com.wyq.Service.ALLPageService;
import com.wyq.Service.ContentService;

@Controller
public class ContentController {
	@Autowired
    @Qualifier("ContentService")   
    private ContentService contentService;
    
    @RequestMapping(value="/addcontent")  
    public ModelAndView main(HttpServletRequest request, HttpServletResponse response,String userid,String pageid,String contentid,ModelAndView mv,HttpSession session){
        
         
        int count=contentService.getid();
        System.out.println(count);
        List<content> content=contentService.getallContent(pageid);
        session.setAttribute("mes","注册失败");
		mv.setView(new RedirectView("/BookApp/zhucetest")); 
		return mv;
    }
    @RequestMapping(value="/submitreply")
    public   ModelAndView onsubmit(HttpServletRequest request, HttpServletResponse response,String pageid,String contentid,String rfrom_id,String rto_id,String content,ModelAndView mv,HttpSession session) throws UnsupportedEncodingException{
		int count=contentService.getreplyid()+1;
		String replyid="";
		replyid=count+"";
		request.setCharacterEncoding("UTF-8");//客户端网页我们控制为UTF-8
		//title=java.net.URLDecoder.decode(title,"UTF-8");
		//article_desc=java.net.URLDecoder.decode(article_desc,"UTF-8");
	    pageid = request.getParameter("pageid");
	    rfrom_id=request.getParameter("rfrom_id");
	    rto_id=request.getParameter("rto_id");
	    content=request.getParameter("content");
	   
	    contentid=request.getParameter("contentid");
	    String rfrom_name=contentService.getname(rfrom_id);
	    String rto_name=contentService.getname(rto_id);
	    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
	    String time=df.format(new Date());// new Date()为获取当前系统时间
	    //article_desc=request.getParameter("article_desc");
	    //article_desc=article_desc.replace("\"","\\\"");
		int num=contentService.submitcontent(replyid, rfrom_id, rto_id, contentid, content, time, rfrom_name, rto_name, pageid);
		if(num>0)
		{
			contentService.setcount(count);
			session.setAttribute("result",1);
		}
		else
		{
			session.setAttribute("result",0);
		}
		//session.setAttribute("userid", userid);
        //System.out.println(article_desc);
        mv.setView(new RedirectView("/BookApp/page?pageid="+pageid+"&userid="+rfrom_id)); 
		return mv;
		
		
	}
	

}
