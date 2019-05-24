<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>注册</title>
</head>
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
    <style>
    body{
   background:url(./images/back2.png);
   
   background-attachment:fixed;
   background-color:#f2eada;
   overflow-x:hidden;
	overflow: hidden;
   background-attachment:fixed;
}
.card
{
border-radius:20px;
height:auto;
width:auto;
padding:40px 40px 40px 40px;
  background-color:#fff;
  
  box-shadow: 5px 5px 5px #7D9EC0;  
}
.card:hover
{
 border:#969696 solid 1px;
}

.layui-input
{
	 background-color:#fff;
}
.layui-input:hover
{
    transform: scale(1.1);
	background-color:#F5F5F5;
	
}
</style>
<body>
  <span id="mes" hidden="hidden">${sessionScope.mes}</span>
  
  <div style="width:20px;height:0px;margin:0 auto;margin-top:130px;"></div>

  <div class="layui-row layui-col-space12 ">
    <div class="layui-col-md6 layui-col-md-offset3">
    <div class="card">
<form class="layui-form" action="zhuce">


<div class="layui-form-item">
    <label class="layui-form-label">Name</label>
    <div class="layui-input-block">
      <input type="text" name="name" value="" autocomplete="off"  class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">ID</label>
    <div class="layui-input-block">
      <input type="id" name="id" lay-verify="title" autocomplete="off" placeholder="至少5位数字" class="layui-input">
    </div>
  </div>
   <div class="layui-form-item">
    <label class="layui-form-label">PassWord</label>
    <div class="layui-input-block">
      <input type="password" name="password" lay-verify="pass" placeholder="请填写6到12位密码" autocomplete="off" class="layui-input">
    </div>
    
  </div>
 
    
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
      <button class="layui-btn layui-btn-radius" lay-submit="zhuce" lay-filter="demo1">Submit</button>
      <button type="reset" class="layui-btn layui-btn-primary layui-btn-radius">Reset</button>
    </div>
  </div></form>
  </div></div></div>
<script src="./layui/layui.js" charset="utf-8"></script>
	<script src="./layui/allin.js" charset="utf-8"></script>
 <!-- jquery -->
    <script src="./js/jquery.js"></script>
    
     <!-- main -->
    <script src="./js/main.js"></script>
<script>
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
		layer.msg(t,{icon:2});
	  }

  
  
});

	  
	


</script>
  
</body>
</html>