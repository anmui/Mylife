<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>编辑</title>
 	<meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="./layui/css/layui.css" type="text/css" media="all">
    <!-- bootstrap -->
    <link rel="stylesheet" href="./css/bootstrap.min.css">
   <!-- stylesheet -->
    <link rel="stylesheet" href="./css/style.css">
</head>
<style type="text/css">
body{
   background:url(./images/back2.png);
  
   background-attachment:fixed;
   background-color:#f2eada;
   overflow: hidden;
}
.demo{
  padding: 25px;
  opacity: 0.8;
}
.a8{
height: 445px;
background: #fff;
margin-left: 10px;
margin-top: 30px;
margin-right: 10px;
float: center;
box-shadow: 10px 10px 5px #888888;
}
.abcd
{
height:80px;
width:auto;
background:url(./images/1234.jpg);
}
.a7{
background: rgba(255,255,255,0);

float: center;
box-shadow: 10px 10px 5px #888888;
}
.layui-input-block .layui-input-inline
{
	width:600px;
	height:35px;
	margin-right:20px
}
</style>
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
    <span id="t2" hidden="hidden">${sessionScope.userid}</span>
    <div class="abcd"></div>
    	<div style="padding: 42px;background:rgba(255,255,255,0);"></div>
	<div class="layui-row layui-col-space10">
	<div class="layui-col-md2">
     
    </div>
    <div class="layui-col-md8">
      <div class="grid-demo grid-demo-bg1">
      <form class="layui-form" action="submit" id="tf">
      <div class="a7">
  		<div class="layui-form-item">
    <label class="layui-form-label">输入框</label>
    <div class="layui-input-block">
      	<input type="text" name="title"  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input-inline">
    </div>
  	</div>
  	
  	</div>
<div class="layui-form-item">

    <label class="layui-form-label">公开</label>
      <input type="checkbox" checked="" name="open" lay-skin="switch" lay-filter="switchTest" lay-text="ON|OFF">
    </div>
    <div class="layui-form-item">
     <label class="layui-form-label">标签</label>
      <input type="radio" name="tag" value="1" title="生活" checked="">
      <input type="radio" name="tag" value="2" title="学习">
      <input type="radio" name="tag" value="3" title="其他">
    
  </div>
    
  
  	<div class="a8">
      <textarea id="demo" style="display: none;" name="article_desc" lay-verify="article_desc"></textarea>
    </div>
    <input type="hidden" name="userid" value=${sessionScope.userid}>
    <div style="padding: 20px;background:rgba(255,255,255,0);"></div>
    <div class="layui-form-item layui-col-md-offset6" >
		    <div class="layui-input-block">
		      <button class="layui-btn layui-btn-radius" lay-submit="submit" lay-filter="demo1">立即提交</button>
		      <button type="reset" class="layui-btn layui-btn-radius layui-btn-primary">重置</button>
		    </div>
	</div>
  	</form>
    </div>
    </div>
   
      </div>
   

 <!-- jquery -->
    <script src="./js/jquery.js"></script>
    
     <!-- main -->
    <script src="./js/main.js"></script>
<script src="./layui/layui.js" charset="utf-8"></script> 
<script>
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
	window.location.href='/BookApp/loginForm';
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