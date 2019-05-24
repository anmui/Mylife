<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@page import ="com.wyq.Bean.User" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" /> 
      <link rel="stylesheet" href="./layui/css/layui.css" type="text/css" media="all">
    <!-- bootstrap -->
    <link rel="stylesheet" href="./css/bootstrap.min.css">
   <!-- stylesheet -->
    <link rel="stylesheet" href="./css/style.css">
 
  <base href="<%=basePath%>">
  <title>主页</title>
  <style>
  body{
  background:url(./images/back2.png);
   background-color:#F5F5DC;
    margin: 0 auto;
   overflow: hidden;
}
.layui-card-header
{
height:auto;
font-size:20px;
color : #f00;
text-align:left;
}
.layui-card
{
border-radius:20px;
height:auto;
}
.layui-card-body
{

font-size:10px;
height:auto;
}
.layui-card:hover 
{
background-color:#F0F0F0;
transform: scale(1.1);
color:#fff !important;
background:url(./images/1234.jpg);
}
.abc:hover
{
color:#fff;
}
.layui-carousel
{
position: fixed;
left: 5%;
top: 120px;
z-index: 1;
}
.abcd
{
height:80px;
width:auto;
background:url(./images/1234.jpg);
}
.abcd1
{
height:80px;
width:auto;
background:url(./images/1234.jpg);
border-radius:20px;
 padding:25px 10px 10px 20px;
 font-weight:bold;
 font-size:20px;

 box-shadow: 5px 5px 5px #888888;
}

.abcd2
{
top: 200px;
position: fixed;
margin:0;
padding:25px 10px 10px 20px;
height:300px;
width:140px;
left:78%;
 background-color:#Fff;
 border-radius:20px;
}
.mybu
{
	top: 600px;
	left:80%;
	position: fixed;
	 opacity :0.5;
}
</style>
<!-- border:#969696 solid 1px; -->
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>
<body>

<!-- header begin-->
    <div class="header">
        <div class="container">
                    <div class="row justify-content-between d-flex">
                <div class="col-xl-2 col-lg-2 d-xl-flex d-lg-flex d-block align-items-center mobile-header">
                    <div class="row d-flex">
                        <div class="col-xl-12 col-lg-12 col-6 d-flex align-items-center">
                            <div class="logo">
                                <a href="/BookApp/main1"><img src="./images/logo.png" alt=""></a>
                            </div>
                        </div>
                        <div class="col-xl-12 col-6 d-xl-none d-lg-none d-block">
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
                                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"><i class="fas fa-bars"></i></span>
                            </button>
                        </div>
                    </div>
                </div>
    
                <div class="col-xl-8 col-lg-8 min-height-none">
                    <div class="main-menu">
                        <nav class="navbar navbar-expand-lg">
                            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                                <ul class="navbar-nav nav justify-content-center">
                                    <li class="nav-item">
                                        <a class="nav-link active" href="/BookApp/main1">Look<span class="sr-only">(current)</span></a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link"  id ="new" href="/BookApp/edit">Edit</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="houtai" href="/BookApp/edit2?userid=${sessionScope.userid}">Set</a>
                                    </li>
    								 <li class="nav-item">
                                        <a class="nav-link active" id="myhome" href="/BookApp/myHome1?userid=${sessionScope.userid}">Home<span class="sr-only">(current)</span></a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
    
                <div class="col-xl-2 col-lg-2 d-xl-flex d-lg-flex d-none align-items-center">
                    <div class="login" id="login">
                        <a href="/BookApp/loginForm" id="name1">login</a>
                    </div>
                </div>
             
            </div>
        </div>
  </div>
    <!-- header end -->
     
    <span id="t2" hidden="hidden">${sessionScope.userid}</span>
    <div class="abcd"></div><div class="mybu" id="totop"><img src="./images/top1.png" alt=""></div>
	<span id="t1" hidden="hidden">${requestScope.count}</span>
	
	<div style="padding: 45px;background:rgba(255,255,255,0);"></div>
	 <div class="layui-col-md6 layui-col-md-offset3">
		<div class="abcd1">热门博文</div>
		</div>
		
		<div style="padding: 15px;background:rgba(255,255,255,0);"></div>
	<div class="layui-row layui-col-space10">
	<div class="layui-col-md2 layui-col-md-offset1">
      <div class="grid-demo">
      
      <div class="layui-carousel" position="fixed" id="test1">
        <div carousel-item>
          <div><img src="./images/one1.jpg"></div>
          <div><img src="./images/two2.jpg"></div>
          
        </div>
      </div>
      </div>
    </div>
    <div class="layui-col-md6">
    
      <div class="grid-demo grid-demo-bg1">	<ul class="flow-default" id="LAY_demo1"></ul></div>
      </div>

    <div class="layui-col-md3">
      <div class="grid-demo">
      
		<div class="abcd2"> 标签<hr>
		<a  class="layui-btn layui-btn-primary layui-btn-radius" href="/BookApp/tag1?tag=1&userid=${sessionScope.userid}">#生活</a><br>
    <div style="padding: 12px;background:rgba(255,255,255,0);"></div>
   	<a  class="layui-btn layui-btn-primary layui-btn-radius" href="/BookApp/tag1?tag=2&userid=${sessionScope.userid}">#学习</a><br>
    <div style="padding: 12px;background:rgba(255,255,255,0);"></div>
	<a  class="layui-btn layui-btn-primary layui-btn-radius" href="/BookApp/tag1?tag=3&userid=${sessionScope.userid}">#其他</a>
		
      </div>
      </div>
    </div>
  </div>
  
   <script src="./layui/layui.js" charset="utf-8"></script>
	<script src="./layui/allin.js" charset="utf-8"></script>
 <!-- jquery -->
    <script src="./js/jquery.js"></script>
    
     <!-- main -->
    <script src="./js/main.js"></script>
    
  <script type="text/javascript">
//一键回顶
  var topbtn = $("#totop"); //想要一键向上的按钮元素
  var lastScroll = 0; 
  topbtn.css("display", "none"); 
   
  window.onscroll = function(){  //onscroll貌似为html5的属性
  	var top = $(window).scrollTop();//初始均为0
   
  	if(top > 0){ 
  		topbtn.css("display", ""); 
  	} 
  	if(top == 0){//若为起始状态，则不显示向上图标 
  		topbtn.css("display", "none"); 
  	} 
  }; 
   
  topbtn.click(function(){ //点击事件
  	var scrollTop = 0; 
  	var curPos = $(window).scrollTop();//现在滚动条的位置 
  	topbtn.addClass("movingtotop"); //运动中显示另外的图片
  	var step = Math.abs(scrollTop - curPos) / 200 ; 
  	var tid = setInterval(function() {//不断调用，帧动成画
  		topbtn.toggleClass("movingtotop"); //精妙的一段代码，用元素属性的设置和删除交替，使得有动态感闪烁效果
  		if (curPos > scrollTop + 14) { 
  			curPos -= step; 
  			step = step * 1.05;//速度逐步加快 
  			window.scrollTo(0, curPos); 
  		} else if (curPos <= scrollTop + 14){//直接跳到起始位置 
  			window.scrollTo(0, scrollTop); 
  			topbtn.removeClass("movingtotop"); 
  			clearInterval(tid); //关闭循环
  		} 
  	}, 0.01); 
  });
  function scroll(){
	    //console.log("打印log日志");实时看下效果
	    console.log("开始滚动！");
	 
	}

	var scrollFunc = function (e) {  
	    e = e || window.event;  
	    if (e.wheelDelta) {  //第一步：先判断浏览器IE，谷歌滑轮事件               
	        if (e.wheelDelta > 0) { //当滑轮向上滚动时  
	            console.log("滑轮向上滚动");  
	        }  
	        if (e.wheelDelta < 0) { //当滑轮向下滚动时
	        	$("#mynavbar").css("margin-top","-70px");//顶部导航
	            console.log("滑轮向下滚动");  
	        }  
	    } else if (e.detail) {  //Firefox滑轮事件  
	        if (e.detail> 0) { //当滑轮向上滚动时  
	            console.log("滑轮向上滚动");  
	        }  
	        if (e.detail< 0) { //当滑轮向下滚动时  
	            console.log("滑轮向下滚动");  
	        }  
	    }  
	}
	//给页面绑定滑轮滚动事件  
	if (document.addEventListener) {//firefox  
	    document.addEventListener('DOMMouseScroll', scrollFunc, false);  
	}  
	//滚动滑轮触发scrollFunc方法  //ie 谷歌  
	window.onmousewheel = document.onmousewheel = scrollFunc;
	</script>
	
	
   
	<script>
	 layui.use(['carousel', 'form'], function(){
		  var carousel = layui.carousel
		  ,form = layui.form;
		  
		  //改变下时间间隔、动画类型、高度
		  carousel.render({
		    elem: '#test1'
		    ,interval: 4000
		    ,anim: 'fade'
		    ,height: '600px'
		    ,width:'200px'
		  });
		  
		});
	layui.use('element', function(){
		  var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块
		  
		  //监听导航点击
		  element.on('nav(demo)', function(elem){
		    //console.log(elem)
		    layer.msg(elem.text());
		  });
		});
layui.use('flow', function(){
  var flow = layui.flow;
 
  flow.load({
    elem: '#LAY_demo1' //流加载容器
    ,done: function(page, next){ //执行下一页的回调
      
      //模拟数据插入
      setTimeout(function(){
    	  /*
        var lis = [];
        for(var i = 0; i < 8; i++){
	          lis.push('<li>'+ ( (page-1)*8 + i + 1 ) +'</li>')
	        }
        */
        var num=0;
		var titles=new Array();
		var articals=new Array();
		var pageids=new Array();
		var names=new Array();
		var t=Math.ceil(document.getElementById("t1").innerHTML/8);
        $.ajax({
			url : "/BookApp/onepage",
			type : "post",
			data : {"start":page},
			datatype:"json",
			async:false,
			scriptCharset: 'utf-8',
			error: function () {
                alert("加载失败");
            },
			success : function(data) {
				//var s ="[{\"xxx\":\"mmmm\"},{\"xxx\":\"mmmm1\"}]";
				var ss='';
				var data = JSON.parse(data);
				$.each(data,function(index,obj){
                	ss=obj.title;
                	titles[num]=obj.title;
                	articals[num]=obj.artical;
                	pageids[num]=obj.pageid;
                	names[num]=obj.name;
                	num++;
		    	})
			}
			});  
       	 var lis = [];
       	
        for(var i = 0; i < num; i++){
        	var m=articals[i].length;
        	
        	var ss=articals[i].substring(0,49);
        	
        	if(m>49)
        	{
        		ss+="......";
        	}
        	var ss=ss.replace(/src/g,"");
	          lis.push('<li><div style="padding: 5px;background:rgba(255,255,255,0);"></div><div class="layui-card ">'
	        	        +'<div class="layui-card-header"><a href="/BookApp/page?pageid='
	        	        +pageids[i]
	        	       	+'"><div class="abc">'
	        	        +titles[i]
	        	        +'<div class="layui-card-header1">'
	        	        +ss
	        	        +'</div><div class="layui-card-body">'
	        			+'<span id="t1">'
	        	        +names[i]
	        			+'</span></div></div></div></div></a></li>'
	        	        )
	        }
             			
        //执行下一页渲染，第二参数为：满足“加载更多”的条件，即后面仍有分页
        //pages为Ajax返回的总页数，只有当前页小于总页数的情况下，才会继续出现加载更多
        next(lis.join(''), page < t); //假设总页数为 10
      }, 500);
    }
  });
  
  
  
  //按屏加载图片
  flow.lazyimg({
    elem: '#LAY_demo3 img'
    ,scrollElem: '#LAY_demo3' //一般不  用设置，此处只是演示需要。
  });
  
});
var name=document.getElementById("t2").innerHTML;
var div1 = document.getElementById("name1");//获取Id为"div1"的div
var div2 = document.getElementById("houtai");//获取Id为"div1"的div
var div3 = document.getElementById("new");//获取Id为"div1"的div
var div4 = document.getElementById("myhome");//获取Id为"div1"的div
if(name=="")
	{
	div2.href="/BookApp/loginForm";
	div3.href="/BookApp/loginForm";
	div4.href="/BookApp/loginForm";
	}
if(name!="")
{
	
div1.innerHTML =name;//将Id为"div1"的div背景颜色设置为红色。
div1.style.background="rgb(0,0,0,0)";
div1.style.border="#969696 solid 0px";
//div1.style.cssText="height="
div1.href="/";

}
</script>
</body>
</html>
