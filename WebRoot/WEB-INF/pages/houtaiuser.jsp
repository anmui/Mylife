<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>后台</title>
 <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="./layui/css/layui.css" type="text/css" model="all"> 
</head>
<style type="text/css">
       .layui-table-cell{
    
}
.card
{
border-radius:20px;
height:auto;
width:1000px;
padding:40px 40px 40px 40px;
  background-color:#fff;
  border:#969696 solid 1px;
  
   
}
    </style>

<body class="layui-layout-body">
 
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">Set</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item"><a href="/BookApp/main1">Look</a></li>
      <li class="layui-nav-item"><a href="/BookApp/myHome1?userid=${sessionScope.userid}">Home</a></li>
      
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item"><a href="">${sessionScope.userid}</a></li>
      <li class="layui-nav-item"><a href="/BookApp/loginForm">退了</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="javascript:;">设置</a>
          <dl class="layui-nav-child">
            <dd><a href="/BookApp/houtai?userid=${sessionScope.userid}">文章管理</a></dd>
            <dd  class="layui-this"><a href="javascript:;">资料编辑</a></dd>
          </dl>
        </li>
    
      </ul>
    </div>
  </div>
    <span id="userid" hidden="hidden">${sessionScope.userid}</span>
  <div class="layui-body">
    <!-- 内容主体区域 -->
  <div class="layui-tab-content">
    <div class="layui-tab-item layui-show">
    <div class="card">
   <form class="layui-form" action="alertuser">


<div class="layui-form-item">
    <label class="layui-form-label">Name</label>
    <div class="layui-input-block">
      <input type="text" name="name"  autocomplete="off"  class="layui-input">
    </div>
  </div>

   <div class="layui-form-item">
    <label class="layui-form-label">PassWord</label>
    <div class="layui-input-block">
      <input type="password" name="password" lay-verify="pass" placeholder="请填写6到12位密码" autocomplete="off" class="layui-input">
    </div>
    
  </div>
 <div class="layui-form-item">
    <input type="hidden" name="userid" value=${sessionScope.userid}></div>
       <div class="layui-form-item">
    <label class="layui-form-label">Sex</label>
    <div class="layui-input-block">
      <input type="checkbox" checked="" name="sex" lay-skin="switch" lay-filter="switchTest" lay-text="Gril|Boy">
    </div>
  </div>
	<div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">Phone</label>
      <div class="layui-input-inline">
        <input type="text" name="phone" lay-verify="required|phone" autocomplete="off" class="layui-input">
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">Email</label>
      <div class="layui-input-inline">
        <input type="text" name="email" lay-verify="email" autocomplete="off" class="layui-input">
      </div>
    </div>
     <div class="layui-inline">
      <label class="layui-form-label">QQ</label>
      <div class="layui-input-inline">
        <input type="text" name="QQ" lay-verify="QQ" autocomplete="off" class="layui-input">
      </div>
    </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn layui-btn-radius" lay-submit="alertuser" lay-filter="demo1">Submit</button>
      <button type="reset" class="layui-btn layui-btn-primary layui-btn-radius">Reset</button>
    </div>
  </div></form></div>
     
     
    </div>
  </div>
</div>
  </div>


  <div class="layui-footer">
    <!-- 底部固定区域 -->
    © anmui - 2019.fzu

<script src="./layui/layui.js" charset="utf-8"></script>
<script src="./layui/allin.js" charset="utf-8"></script>

<!-- <div class="layui-form-item"><label class="layui-form-label">公开</label><input type="checkbox" name="open" lay-skin="switch" lay-filter="switchTest" lay-text="ON|OFF">'
	    	      +'</div><div class="layui-form-item"><label class="layui-form-label">标签</label><input type="radio" name="tag" value="1" title="生活" checked=""><input type="radio" name="tag" value="2" title="学习">'
	    	      +'<input type="radio" name="tag" value="3" title="其他"></div> -->
<span id="mes" hidden="hidden">${requestScope.message}</span>
<script type="text/javascript">
layui.use('element', function(){
	  var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块
	  
	  //监听导航点击
	  element.on('nav(demo)', function(elem){
	    //console.log(elem)
	    layer.msg(elem.text());
	  });
	});
layui.use(['form', 'layedit', 'laydate'], function(){
	  var form = layui.form
	  ,layer = layui.layer
	  ,layedit = layui.layedit
	  ,laydate = layui.laydate;
	  
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
	    title: function(value){
	      if(value.length < 5){
	        return 'ID至少得5个字符啊';
	      }
	    }
	    ,pass: [
	      /^[\S]{6,12}$/
	      ,'密码必须6到12位，且不能出现空格'
	    ]
	    ,content: function(value){
	      layedit.sync(editIndex);
	    }
	  });
	  
	  //监听指定开关
	  form.on('switch(switchTest)', function(data){
	    /*layer.msg('开关checked：'+ (this.checked ? 'true' : 'false'), {
	      offset: '6px'
	    });
	    layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)*/
	  });
	  
	  
	  var t=document.getElementById("mes").innerHTML;
	 	//alert(t);
	 	//layer.msg(t,{icon:2});
		if(t!='')
		  {
			layer.msg(t);
		  }

	  
	  
	});
</script>
</body>
</html>