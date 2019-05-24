<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  <link rel="stylesheet" href="./layui/css/layui.css" type="text/css" media="all">
    <!-- bootstrap -->
    <link rel="stylesheet" href="./css/bootstrap.min.css">
   <!-- stylesheet -->
    <link rel="stylesheet" href="./css/style.css">
 
  <base href="<%=basePath%>">
  <title>主页</title>
  <style>
  body{
   background-color:#f2eada;
   background:url(./images/back2.png);
    overflow-x:hidden;
	overflow: hidden;
   background-attachment:fixed;
}
.abcd
{
height:80px;
width:auto;
background:url(./images/1234.jpg);
}
.layui-card-header
{
padding:20px ;
background:url(./images/1234.jpg);
height:auto;
}
.layui-card-body
{
padding:30px 30px 30px 30px;
}
.abcd2
{

margin:0;
font-size:20px;
padding:25px 10px 10px 20px;
height:400px;
width:140px;
 background-color:#Fff;
 border-radius:20px;
       box-shadow: 5px 5px 5px #888888;
}
.copy
{
	height:60px;
	background:url(./images/1234.jpg);
}
.abcd2:hover
{
 background-color:#F0F0F0;
font-size:25px;
}
.contentcard
{
padding:10px 10px 10px 14px;
background-color:#FFF;
 border-radius:20px;
line-height:15px;
box-shadow: 5px 5px 5px #888888;
}
.contentcardbody
{
line-height:10px;
 background-color:#F0F0F0;
 border:#969696 solid 1px;
 padding:10px 10px 10px 60px;
}
.n
{
 
	font-size:18px;
	line-height:5px;
}
.c
{

	
	font-size:15px;
	line-height:5px;
	height:auto;
}
.comment-parent
{
padding:10px 10px 10px 14px;
 
}
.div
{

}
</style>
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
                                <a href="index.html"><img src="./images/logo.png" alt=""></a>
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
<!-- <ul class="flow-default" id="LAY_demo1"></ul>-->
   <div class="abcd"></div>
  <span id="t2" hidden="hidden">${sessionScope.userid}</span>
  
<div style="padding: 42px;background:rgba(255,255,255,0);"></div>

      
<div class="layui-row layui-col-space12">
    <div class="layui-col-md2 layui-col-md-offset1">
    <div style="padding: 42px;background:rgba(255,255,255,0);"></div>
   <div class="abcd2">标签<hr>
   <a  class="layui-btn layui-btn-primary layui-btn-radius" href="/BookApp/tag1?tag=1&userid=${sessionScope.userid}">#生活</a><br>
    <div style="padding: 12px;background:rgba(255,255,255,0);"></div>
   	<a  class="layui-btn layui-btn-primary layui-btn-radius" href="/BookApp/tag1?tag=2&userid=${sessionScope.userid}">#学习</a><br>
    <div style="padding: 12px;background:rgba(255,255,255,0);"></div>
	<a  class="layui-btn layui-btn-primary layui-btn-radius" href="/BookApp/tag1?tag=3&userid=${sessionScope.userid}">#其他</a>
      </div>
    </div>
    <div class="layui-col-md7 layui-col-md-offset1" id="left">
  
      <div class="grid-demo">
      <button type="button" class="layui-btn layui-btn-primary layui-btn-radius" onclick="test()">#${sessionScope.tag}</button>
      <div style="padding: 10px;background:rgba(255,255,255,0);"></div>
      <div class="layui-card">
        <div class="layui-card-header">
        <font size="5">${sessionScope.title}</font><br/>
        <font size="2">${sessionScope.name}</font>
        </div>
        <div class="layui-card-body">
		<span id="t1">${sessionScope.content}${sessionScope.replys[0].content}</span>
        </div>
      </div>
    </div>
     <!-- 留言的表单 -->
    <form class="layui-form" action="addcontent" method="post" style="width:80%;">
        <input name="userid" value="${sessionScope.userid}" hidden="hidden"/>
        <input name="pageid" value="${sessionScope.pageid}" hidden="hidden"/>
        <div class="layui-input-block" style="margin-left: 0;">
            <textarea id="content" name="content" placeholder="请输入你的留言" class="layui-textarea" style="height: 150px;"></textarea>
        </div>
        <br/>
        <div class="layui-input-block" style="text-align: left;margin-left: 0;">
            <input type="submit" class="layui-btn" style="margin-left:-10px;margin-top:-60px;" value="留言">
        </div>
    </form>
 
    <!-- 留言信息列表展示 -->
    
       
 			<c:if test="${ not empty sessionScope.contentss}">
            <!-- 先遍历留言信息（一条留言信息，下面的全是回复信息） -->
            <c:forEach items="${sessionScope.contentss}" var="words" varStatus="status">
                
         			
                    <li style="border-top: 1px dotted #01AAED">
                        <br/>
 						<div class="contentcard" >
                      
                           
                               
                      
                            <div class="comment-parent" style="text-align:left;margin-top:0px;color:#444">
                                
                                 <div class="n" >${words.name}</div>  
 
 								<div style="padding: 2px 30px;background:rgba(255,255,255,0);"></div>
 							
 								<span>${words.time}</span> &nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:;" style="text-decoration: none;" onclick="btnReplyClick(this)">回复</a>
 									<hr>
 							
                            <div class="c" onclick="btnReplyClick(this)">${words.content}</div>
                   			  
                              
                                </div>
                                
                                
                           
                            <!-- 回复表单默认隐藏 -->
                            <div class="replycontainer layui-hide" style="margin-left:61px;">
                                <form action="/BookApp/submitreply" method="post" class="layui-form">
                                    <input name="rfrom_id"  value="${sessionScope.userid}" hidden="hidden"/>
                                    <input name="rto_id" value="${words.userid}" hidden="hidden"/>
                            		<input name="contentid" value="${words.contentid}" hidden="hidden"/>
                                    <input name="pageid"  value="${sessionScope.pageid}" hidden="hidden"/>
                                    
                                    <div class="layui-form-item">
                                        <textarea name="content"  lay-verify="content" placeholder="请输入回复内容" class="layui-textarea" style="min-height:80px;width:600px;background-color:#F0f0f0;"></textarea>
                                    </div>
                                    <div class="layui-form-item">
                                        <button id="replyBtn" class="layui-btn layui-btn-mini " style="margin-left:350px;" lay-submit="formReply" lay-filter="formReply">提交</button>
                                    </div>
                                </form>
                            </div>
                        
​
                        <!-- 以下是回复信息 -->
 						
                 		    <c:forEach items="${sessionScope.replys}" var="reply">
                            <!-- 每次遍历出来的留言下存在回复信息才展示（本条回复信息是本条留言下的就显示在当前留言下） -->
                            <c:if test="${reply.contentid eq words.contentid}">
 									<div style=" padding:0px 10px 10px 90px;">
                            	<div class="contentcardbody">
                                      <div class="n" > ${reply.rfrom_name}&nbsp;&nbsp;&nbsp;&nbsp;TO&nbsp;&nbsp;&nbsp;&nbsp;${reply.rto_name}</div>
                                    <hr>
                                    <div class="c" style="margin-top:5px;" >${reply.content}</div>
                                
                                
                                    <div class="comment-parent" style="margin-left:10px;color:#444">
                                        ${reply.time}      &nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:;" style="text-decoration: none;" onclick="btnReplyClick(this)">回复</a>
                                </div>
   							<!-- 回复表单默认隐藏 -->
                            <div class="replycontainer layui-hide" style="margin-left:61px;">
                                <form action="/BookApp/submitreply" method="post" class="layui-form">
                                   <input name="rfrom_id"  value="${sessionScope.userid}" hidden="hidden"/>
                                    <input name="rto_id" value=" ${reply.rfrom_id}" hidden="hidden"/>
                            		<input name="contentid" value="${words.contentid}" hidden="hidden"/>
                                    <input name="pageid"  value="${sessionScope.pageid}" hidden="hidden"/>
                                    
                                    <div class="layui-form-item">
                                        <textarea name="content"  lay-verify="content" placeholder="请输入回复内容" class="layui-textarea" style="min-height:80px;width:600px;background-color:#F0f0f0;"></textarea>
                                    </div>
                                    <div class="layui-form-item">
                                        <button id="replyBtn" class="layui-btn layui-btn-mini " style="margin-left:350px;" lay-submit="formReply" lay-filter="formReply">提交</button>
                                    </div>
                                </form>
                            </div></div></div>
                            </c:if>
                        </c:forEach>
						 </div>
                    </li>
               
            </c:forEach>  </c:if>
 			 
       
    </div>
  </div>
  
 

  <div style="padding: 82px;background:rgba(255,255,255,0);"></div>
   <!-- footer begin-->
    <footer >
        <div class="copy">
            <div class="row">
                <div class="col-xl-12 col-lg-12 text-center">
                  <div style="padding: 10px;background:rgba(255,255,255,0);"></div>
                    <div class="copyright">
                        <p>anmui &copy; 2019.fzu.</p>
                    </div>
                </div>
            </div></div>
        
    </footer>
    <!-- footer end -->
    
  
<script src="./layui/layui.js" charset="utf-8"></script>
<!-- jquery -->
    <script src="./js/jquery.js"></script>
     <!-- main -->
    <script src="./js/main.js"></script>
<script>

layui.use('element', function(){
  var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块
  
  //监听导航点击
  element.on('nav(demo)', function(elem){
   
    layer.msg(elem.text());
  });
});
 function btnReplyClick(elem) {
	        var $ = layui.jquery;
	        $(elem).parent('.comment-parent').siblings('.replycontainer').toggleClass('layui-hide');
	        if ($(elem).text() == '回复') {
	            $(elem).text('收起')
	        } else {
	            $(elem).text('回复')
	        }
	    }
layui.use(['form', 'layedit', 'laydate'], function(){
	  var form = layui.form
	  ,layer = layui.layer
	  ,layedit = layui.layedit
	  ,laydate = layui.laydate;
	  
	
	  var layedit = layui.layedit;
	  layui.layedit.set({
		
		    uploadImage: {
		        url: '/BookApp/uploadFile'//接口url
		        ,type: 'post' //默认post
		    }
		});
	  var index=layedit.build('demo' ,{
		  height:400 //设置编辑器高度
		});
	  layedit.setContent(index,"你好><");
	  
	  //日期
	  laydate.render({
	    elem: '#date'
	  });
	  laydate.render({
	    elem: '#date1'
	  });
	  
	  //创建一个编辑器
	  var editIndex = layedit.build('LAY_demo_editor');
	  
	  //自定义验证规则
	  form.verify({
		  required: function(value){
	       if(value.length < 5){
	        return '标题至少得5个字符啊';
	      
	      }
	    }
	 
	    ,content: function(value){
	      layedit.sync(editIndex);
	    }
	    ,article_desc: function(value){
	        layedit.sync(index);
	    }

	  });
	});

</script>
<script type="text/javascript">

var t=document.getElementById("t1").innerHTML;
 var t2=t.replace(/\\&quot;/g,"");
 var x=document.getElementById("t1");  // 找到元素

 x.innerHTML=t2;    // 改变内容
 
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