<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
<style  type="text/css">
body{
   background:url(./images/back2.png);
   
   background-attachment:fixed;
   background-color:#f2eada;
   
}

.layui-card-body
{
padding:40px 40px 40px 40px;
 background-color:#fff;
  box-shadow: 5px 5px 5px #7D9EC0;
	 
}
.layui-card-body:hover
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
.layui-input-block 
{
	width:300px;
	height:35px;
	margin-right:20px
}
</style> 

<base href="<%=basePath%>">
<title>��¼ҳ��</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="./layui/css/layui.css" type="text/css" model="all">
    <!-- bootstrap -->
    <link rel="stylesheet" href="./css/bootstrap.min.css">
   <!-- stylesheet -->
    <link rel="stylesheet" href="./css/style.css"> 
    
</head>
<body>
<!-- div class="wrapper">
<ul class="bg-bubbles">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>-->

<span id="t1" hidden="hidden">${requestScope.message}</span>
<div style="width:30px;height:30px;margin:0 auto;margin-top:200px;"></div>
<div style="padding: 20px;">
  <div class="layui-row layui-col-space15 ">
    <div class="layui-col-md4 layui-col-md-offset4">
  
      <div class="layui-card">
        <div class="layui-card-body">
        <div style="width:30px;height:30px;margin:0 auto;"></div>
       
		<form class="layui-form" name="form1" action="login" method="post">
		  <div class="layui-form-item">
		      
		    <label class="layui-form-label">�û���</label>
		    <div class="layui-input-block">
		    
		      <input type="text" name="loginname" lay-verify="title" id="loginname" name="loginname" autocomplete="off" placeholder="�������û���" class="layui-input">
		    </div>
		  </div>
		  <div class="layui-form-item">
		    <label class="layui-form-label">����</label>
		    <div class="layui-input-block">
		      <input type="password" id="password" name="password" lay-verify="pass" placeholder="������6-12λ����" autocomplete="off" class="layui-input">
		    </div>
		  </div>
		   <div class="layui-form-item">
		    <div class="layui-input-block">
		  
		      <button class="layui-btn layui-btn-radius" lay-submit="submit"  lay-filter="demo1">�����ύ</button>
		       <a  class="layui-btn layui-btn-radius" href="/BookApp/zhucetest">ע��</a>
		      <button type="reset" class="layui-btn layui-btn-primary layui-btn-radius">����</button>
		    </div>
		    </div>
		</form>
		</div>
        </div>
        

  	</div>
  	
	</div> 
	
</div> 
</ul>
</div>
<script src="./layui/layui.js" charset="utf-8"></script>
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
  
  //����
  laydate.render({
    elem: '#date'
  });
  laydate.render({
    elem: '#date1'
  });
  
  //����һ���༭��
  var editIndex = layedit.build('LAY_demo_editor');
 
  //�Զ�����֤����
  form.verify({
    title: function(value){
      if(value.length < 5){
        return '�������ٵ�5���ַ���';
      }
    }
    ,pass: [
      /^[\S]{6,12}$/
      ,'�������6��12λ���Ҳ��ܳ��ֿո�'
    ]
    ,content: function(value){
      layedit.sync(editIndex);
    }
  });
 
});

layui.use('layer', function(){ //�������layer����ִ����һ��
	  var $ = layui.jquery, layer = layui.layer; //�������layer����ִ����һ��
	  
	  //�����¼�
	  var active = {
			  confirmTrans: function(){
			      //����һ��͸����ѯ�ʿ�
			      layer.msg('�û������������', {
			        time: 20000, //20s���Զ��ر�
			        btnAlign: 'c' ,//��ť����
			        btn: ['֪����']
			      });
			    }
	  }
	  var t=document.getElementById("t1").innerHTML;
		if(t!='')
		  {
				active.confirmTrans();
		  }
});



</script>

</body>
</html>
