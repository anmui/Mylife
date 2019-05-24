<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>ͼ��ͳ��</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="./layui/layui.js" charset="utf-8"></script>
<script src="./layui/allin.js" charset="utf-8"></script>

<script type="text/javascript">
	(function($) { // encapsulate jQuery
		$(document).ready(function() {
			var jsonXData = [];
			var jsonyD1 = [];
			var jsonyD2 = [];
			$.ajax({
				url : 'biao',
				cache : false,
				async : false,
				success : function(data) {
					var json = eval("(" + data + ")");
					if (json.Rows.length > 0) {
						for (var i = 0; i < json.Rows.length; i++) {
							var rows = json.Rows[i];
							var Time = rows.timeinterval;
							var wendu = rows.wendu;
							var shidu = rows.shidu;
							jsonXData.push(Time); //��ֵ
							jsonyD1.push(parseInt(wendu));
							jsonyD2.push(parseInt(shidu));
						} //for
						var chart;
						chart = new Highcharts.Chart({
							chart : {
								renderTo : 'container',
								type : 'line',
								marginRight : 220,
								marginBottom : 25
							},
							title : {
								text : '�¶Ⱥ�ʪ����ʱ��仯����ͼ��',
								x : -20 //center
							},
							xAxis : { //X������
								categories : jsonXData
							},
							yAxis : { //Y����ʾ����
								lineWidth : 2,
								title : {
									text : '��ֵ'
								}
							},
							tooltip : {
								formatter : function() {
									return '<b>' + this.x + '</b><br/>' + this.series.name + ': ' + Highcharts.numberFormat(this.y, 0);
								}
							},
							plotOptions : {
								column : {
									dataLabels : {
										enabled : true
									},
									enableMouseTracking : true //�Ƿ���ʾtitle
								}
							},
							legend : {
								layout : 'vertical',
								align : 'right',
								verticalAlign : 'top',
								x : -20,
								y : 200,
								borderWidth : 0
							},
							series : [ {
								name : '�¶�',
								data : jsonyD1
							},
								{
									name : 'ʪ��',
									data : jsonyD2
								} ]
						});
					//$("tspan:last").hide(); //�ѹ��ɾ����
					} //if
				}
			});
		});
	})(jQuery);
</script>
<body>
	<div style="margin: 0 2em">
		<div id="container"
			style="min-width: 400px; height: 400px; margin: 0 auto"></div>
	</div>
</body>
</html>