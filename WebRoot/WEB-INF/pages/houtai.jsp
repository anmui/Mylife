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
            <dd class="layui-this"><a href="javascript:;">文章管理</a></dd>
            <dd><a href="/BookApp/houtaiuser?userid=${sessionScope.userid}">资料编辑</a></dd>
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
   
     
     <table class="layui-hide" id="test" lay-filter="test" lay-data="{height: 'full-200', cellMinWidth: 80, page: true, limit:30, url:'/demo/table/user/'}"> </table>
    </div>
  </div>
</div>
  </div>


  <div class="layui-footer">
    <!-- 底部固定区域 -->
    © anmui - 2019.fzu

<script src="./layui/layui.js" charset="utf-8"></script>
<script src="./layui/allin.js" charset="utf-8"></script>
<script type="text/html" id="barDemo">
 
  <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script type="text/html" id="IsPurchased">
 
 
           <input type="radio"  name="t" value="1" lay-filter='t' title="生活" />
           <input type="radio"  name="t" value="2" lay-filter='t' title="学习" />
   		 <input type="radio"  name="t" value="3" lay-filter='t' title="其他" />
</script>
<script>
var t=document.getElementById("userid").innerHTML;
layui.use(['form','table'], function(){

	  var form = layui.form;
  var table = layui.table;
 
  table.render({
    elem: '#test'
    ,url: '/BookApp/biao?userid='+t
    ,method:'post'
    ,toolbar: true
    ,title: '用户数据表'
    ,totalRow: true
   
    
    ,cols: [[
      {field:'title', title:'标题', width:300, edit: 'text', unresize: true, totalRowText: '合计行'}
      ,{field:'pageid', title:'ID', width:0, edit: 'text',hide: true}
      ,{field:'artical', title:'内容', width:150, edit: 'text'}
      ,{
          field: 'open',
          title: '公开',
          align: 'center',
          width:100,
          templet: function (d) {
              var state = "";
              if (d.open == "on") {
                  state = "<input type='checkbox' id='status' lay-filter='stat' name='status' checked=\"\" lay-skin='switch' lay-text='ON|OFF' >";
              }
              else {
                  state = "<input type='checkbox'  id='status' lay-filter='stat' name='status'  lay-skin='switch' lay-text='ON|OFF' >";

              }

              return state;
          }
      }
     
      ,{field:'time', title:'时间', width:150,sort: true}
      ,{field:'', title:'浏览量', width:100,sort: true}
      ,{field: 'tag', title:'标签',width:190, 
    	
    		  templet: function (d) {
    			  console.log(d.tag);
                  var state = "";
                  if (d.tag == 1) {
                	  console.log("111");
                      state = "<div style='padding: 5px;background:rgba(255,255,255,0);'></div><input type='radio'   checked value=\"1\" lay-filter='t' title=\"生活\" /><input type=\"radio\"   value=\"2\" lay-filter='t' title=\"学习\" /><input type=\"radio\"   value=\"3\" lay-filter='t' title=\"其他\" />";
                  }
                  else if(d.tag==2) {
                	  console.log("222");
                	  state = "<div style='padding: 5px;background:rgba(255,255,255,0);'></div><input type='radio'   value=\"1\" lay-filter='t' title=\"生活\" /><input type=\"radio\"   value=\"2\" lay-filter='t' checked=\"\" title=\"学习\" /><input type=\"radio\"   value=\"3\" lay-filter='t' title=\"其他\" />";
                  }
                  else if(d.tag==3)
                	  {
                	  console.log("333");
                	  state = "<div style='padding: 5px;background:rgba(255,255,255,0);'></div><input type='radio' value=\"1\" lay-filter='t' title=\"生活\" /><input type=\"radio\"   value=\"2\" lay-filter='t' title=\"学习\" /><input type=\"radio\"   value=\"3\" checked=\"\" lay-filter='t' title=\"其他\" />";
                	  }
                  else
                	  {
                	  console.log("444");
                	  state = "<div style='padding: 5px;background:rgba(255,255,255,0);'></div><input type='radio'    value=\"1\" lay-filter='t' title=\"生活\" /><input type=\"radio\"   value=\"2\" lay-filter='t' title=\"学习\" /><input type=\"radio\"   value=\"3\" lay-filter='t' title=\"其他\" />";
                	  }

                  return state;
              }
    	  }
      ,{ width:178, align:'center', toolbar: '#barDemo'}
     
    ]]
  ,done: function () {
      $("[data-field='pageid']").css('display','none');
  }

    ,page: true
    ,response: {
    	    statusCode: '200 ' //规定成功的状态码，默认：0
    }
    ,parseData: function(res){ //将原始数据解析成 table 组件所规定的数据
      return {
        "code": res.code, //解析接口状态
        "msg": res.msg, //解析提示文本
        "count": res.count, //解析数据长度
        "data": res.data //解析数据列表
      };
    }
  });
//监听公开
  form.on('switch(stat)', function(obj){
    //layer.tips(this.value + ' ' + this.name + '：'+ obj.elem.checked, obj.othis);
    var selectIfKey=obj.othis;                                                 
	 // 获取当前所在行                                                                 
	 var parentTr = selectIfKey.parents("tr"); 
       //eq(2): 代表的是表头字段位置 
	 var dataField = $(parentTr).find("td:eq(1)").find(".layui-table-cell").text(); 
 	 console.log(dataField);
    var t;
    if(obj.elem.checked==true)
    	{
    	 t="on";
    	}
    else
    	{
    	 t="off";
    	}
  
    $.ajax({
    	  type: 'POST',
    	  url: '/BookApp/updateopen',
    	  data: {"pageid":dataField,"open":t},
    	  beforeSend:function(){
    		 index_wx = layer.msg('正在切换中，请稍候',{icon: 16,time:false,shade:0.8});     
    		  },
    		  error: function(data){
    			 
    			  console.log(data);	          
    	        layer.msg('数据异常，操作失败！'); 
    			   },
    	 success: function(data){  
    		
    		 console.log(data);
    	  if(data=="1"){ setTimeout(function(){layer.msg('操作成功！',{icon:1});},2000);  
    		  }else{console.log(data);layer.msg('数据异常，操作失败！',{icon:2}); }
    		  },		  
    	  dataType:'html'
    	});	
   
  });
//监听单选
  form.on('radio(t)', function(obj){
    //layer.tips(this.value + ' ' + this.name + '：'+ obj.elem.checked, obj.othis);
    var selectIfKey=obj.othis;                                                 
	 // 获取当前所在行                                                                 
	 var parentTr = selectIfKey.parents("tr"); 
       //eq(2): 代表的是表头字段位置 
	 var dataField = $(parentTr).find("td:eq(1)").find(".layui-table-cell").text(); 
 	 console.log(dataField); 
 	 var t;
    if(obj.elem.value==1)
    	{
    	 t="1";
    	}
    else if(obj.elem.value==2)
    	{
    	 t="2";
    	}
    else{
    	t="3";
    }

    $.ajax({
    	  type: 'POST',
    	  url: '/BookApp/updatetag',
    	  data: {"pageid":dataField,"tag":t},
    	  beforeSend:function(){
    		 index_wx = layer.msg('正在切换中，请稍候',{icon: 16,time:false,shade:0.8});     
    		  },
    		  error: function(data){
    			 
    			  console.log(data);	          
    	        layer.msg('数据异常，操作失败！'); 
    			   },
    	 success: function(data){  
    		
    		 console.log(data);
    	  if(data=="1"){ setTimeout(function(){layer.msg('操作成功！',{icon:1});},2000);  
    		  }else{console.log(data);layer.msg('数据异常，操作失败！',{icon:2}); }
    		  },		  
    	  dataType:'html'
    	});	
 // 刷新表格
    $('.layui-laypage-btn').click();
  });
  
});
</script>
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
</script>
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
layui.use('table', function(){
	  var table = layui.table;
	  //监听表格复选框选择
	  table.on('checkbox(test)', function(obj){
	    console.log(obj)
	  });
	  //监听工具条
	  table.on('tool(test)', function(obj){
	    var data = obj.data;
	    if(obj.event === 'detail'){
	      layer.msg('ID：'+ data.id + ' 的查看操作');
	    } else if(obj.event === 'del'){
	      layer.confirm('真的删除行么', function(index){
	        obj.del();
	        $.ajax({
                type: "Post",
                url: "/BookApp/delect",
                data: { "pageid":data.pageid },
                error: function () {
                	layer.msg("删除失败",{icon:2});
                    
                },
                success: function (data) {
                	
                	layer.msg("删除成功",{icon:1});
                    // 刷新表格
                    $('.layui-laypage-btn').click();

                }
               
            });
	      });
	     
	    } else if(obj.event === 'edit'){
	      layer.alert(      
	    			'<form class="layui-form" action="alert" id="tf">'
		    	      +'<div class="layui-form-item"><label class="layui-form-label">输入框</label><div class="layui-input-block">'
		    	      +	'<input type="text" name="title"  lay-verify="required" value="'
		    	      +data.title
		    	      +'" autocomplete="off" class="layui-input"></div></div><textarea id="demo" style="display: none;" name="article_desc" lay-verify="article_desc"></textarea>'
		    	      +'<input type="hidden" name="pageid" value="'
		    	      +data.pageid
		    	      +'"><input type="hidden" name="userid" value="'
		    	      +data.userid
		    	      +'"><div style="padding: 20px;background:rgba(255,255,255,0);"></div><div class="layui-form-item layui-col-md-offset6" >'
		    		+'<div class="layui-input-block"><button class="layui-btn layui-btn-radius" lay-submit="alert" lay-filter="demo1">立即提交</button><button type="reset" class="layui-btn layui-btn-radius layui-btn-primary">重置</button></div></div></form>'
		 ,{area:['900px','600px']});
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
	    	  var d=data.artical;
	    	  layedit.setContent(index,d);
	    	  
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

	      }
	  });
	  $('.demoTable .layui-btn').on('click', function(){
	    var type = $(this).data('type');
	    active[type] ? active[type].call(this) : '';
	  });
	});
//	var t=document.getElementById("mes").innerHTML;
	/*if(t==1)
		{
		alert(t);
		}
	if(t==0)
		{
		alert(t);
		}*/
</script>
</body>
</html>