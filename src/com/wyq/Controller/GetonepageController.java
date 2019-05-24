package com.wyq.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wyq.Bean.User;
import com.wyq.Bean.page;
import com.wyq.Service.ALLPageService;
import com.wyq.Service.AlertService;
import com.wyq.Service.UserService;

@Controller
public class GetonepageController {
		@Autowired
	    @Qualifier("ALLPageService")   
	    private ALLPageService allpageService;
	    /*
	    @RequestMapping(value="/onepage",produces = "application/json;charset=utf-8")  
	    @ResponseBody
	    public String main(Integer start){
	        
	    	 System.out.println("111"); 
	        int count=allpageService.getCount();
	        List<page> pages1=allpageService.getOne((start-1)*8, 8);//start是页数
	        int n=pages1.size();
	        StringBuffer m = new StringBuffer();
	        m.append("[");
	        for(int i=0;i<n;i++)
	        {
	        	m.append("{\"title\":\""+pages1.get(i).getTitle()+"\",\"artical\":"+pages1.get(i).getArtical()+"},");
	        }
	        m.append("]");
	        String m1=m.toString();
	       
	        System.out.println(m1);
	        return m1;        
	    }
	    */
		
		@Autowired
		@Qualifier("userService")
	    private UserService userService;
		
		@Autowired
		@Qualifier("AlertService")
	    private AlertService alertservice;
		
	    @RequestMapping(value = "/onepage", method = RequestMethod.POST)
	    public void test(HttpServletRequest request,HttpServletResponse response) {
			String result = null;
			//取得客户端传来的值
			int start = Integer.parseInt(request.getParameter("start"));
			//向客户端返回一句话
			List<page> pages1=allpageService.getOne((start-1)*8, 8);//start是页数
	        int n=pages1.size();
	        StringBuffer m = new StringBuffer();
	        String tag=null;
	        m.append("[");
	        for(int i=0;i<n;i++)
	        {
	        	User usermes=userService.getUser(pages1.get(i).getUserid());
	        	m.append("{\"title\":\""+pages1.get(i).getTitle()+"\",\"tag\":\"" + tag+"\",\"artical\":\""+pages1.get(i).getArtical()+"\",\"pageid\":\""+pages1.get(i).getPageid()+"\",\"userid\":\""+ pages1.get(i).getUserid()+"\",\"name\":\""+usermes.getName()+"\"},");
	        }
	        int size=m.length();
	        String s1=m.substring(0, size-1);
	        StringBuffer m2 = new StringBuffer();
	        m2.append(s1);
	        m2.append("]");
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
			@RequestMapping(value = "/updateopen", method = RequestMethod.POST)
		    public void updateopen(HttpServletRequest request,HttpServletResponse response) {
				String pageid = request.getParameter("pageid");
				String open=request.getParameter("open");
			
				alertservice.Alertopen(pageid, open);
				PrintWriter out = null;
				String m="1";
				response.setContentType("text/plain;charset=UTF-8");
				try {
					out = response.getWriter();
					out.write(m);
				} catch (IOException e) {
					e.printStackTrace();
				} finally {
					out.close();
				}
			}
			@RequestMapping(value = "/updatetag", method = RequestMethod.POST)
		    public void updatetag(HttpServletRequest request,HttpServletResponse response) {
				String pageid = request.getParameter("pageid");
				String tag=request.getParameter("tag");
			
				alertservice.Alerttag(pageid, tag);
				PrintWriter out = null;
				String m="1";
				response.setContentType("text/plain;charset=UTF-8");
				try {
					out = response.getWriter();
					out.write(m);
				} catch (IOException e) {
					e.printStackTrace();
				} finally {
					out.close();
				}
			}
			@RequestMapping(value = "/mypage", method = RequestMethod.POST)
		    public void testmy(HttpServletRequest request,HttpServletResponse response) {
				String result = null;
				//取得客户端传来的值
				int start = Integer.parseInt(request.getParameter("start"));
				String userid=request.getParameter("userid");
				//向客户端返回一句话
				List<page> pages1=allpageService.getOneuser(userid,(start-1)*8, 8);//start是页数
		        int n=pages1.size();
		        StringBuffer m = new StringBuffer();
		        String tag=null;
		        m.append("[");
		        for(int i=0;i<n;i++)
		        {
		        	User usermes=userService.getUser(pages1.get(i).getUserid());
		        	m.append("{\"title\":\""+pages1.get(i).getTitle()+"\",\"tag\":\"" + tag+"\",\"artical\":\""+pages1.get(i).getArtical()+"\",\"pageid\":\""+pages1.get(i).getPageid()+"\",\"userid\":\""+ pages1.get(i).getUserid()+"\",\"name\":\""+usermes.getName()+"\"},");
		        }
		        int size=m.length();
		        String s1=m.substring(0, size-1);
		        StringBuffer m2 = new StringBuffer();
		        m2.append(s1);
		        m2.append("]");
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
			@RequestMapping(value = "/tagpage", method = RequestMethod.POST)
		    public void testtag(HttpServletRequest request,HttpServletResponse response) {
				String result = null;
				//取得客户端传来的值
				int start = Integer.parseInt(request.getParameter("start"));
				String tag=request.getParameter("tag");
				//向客户端返回一句话
				List<page> pages1=allpageService.gettag(tag, (start-1)*8, 8);//start是页数
		        int n=pages1.size();
		        
		        StringBuffer m = new StringBuffer();
		        
		        m.append("[");
		        for(int i=0;i<n;i++)
		        {
		        	
		        	User usermes=userService.getUser(pages1.get(i).getUserid());
		        	m.append("{\"title\":\""+pages1.get(i).getTitle()+"\",\"artical\":\""+pages1.get(i).getArtical()+"\",\"pageid\":\""+pages1.get(i).getPageid()+"\",\"userid\":\""+ pages1.get(i).getUserid()+"\",\"name\":\""+usermes.getName()+"\"},");
		        }
		        int size=m.length();
		        String s1=m.substring(0, size-1);
		        StringBuffer m2 = new StringBuffer();
		        m2.append(s1);
		        m2.append("]");
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



