<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="./layui/css/layui.css" type="text/css" >
       <!-- bootstrap -->
    <link rel="stylesheet" href="./css/bootstrap.min.css">
   <!-- stylesheet -->
    <link rel="stylesheet" href="./css/style.css">

<title>Insert title here</title>
 <style>
  body{
   background-color:#fff;
}
.content {
            color: #000;
            font-size: 30px;
        }
        .bg {
            background: url(./images/timg.jpg);
            height:300px;
            text-align: center;
            line-height: 600px;
            padding:1px;
        }
        .bg-blur {
            float: left;
            width: 100%;
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
           
            filter: blur(3px);
        }
        .content-front {
          position:absolute;
          left: 400px;
          right: 10px;
          height:10px;
          line-height: 300px;
          
        }
        .pad1
        {
        color: #000;
        padding:30px;
        position:absolute;
          height:100px;
        }

</style>
</head>
<body>
<%@ page import="com.wyp.Other.VisitorCounter"%>
<%
    //訪問量
    String count = VisitorCounter.readCount("C:\\Users\\Mac\\Desktop\\visitCount.txt");
    if (session.getAttribute("visit") == null) {
        session.setAttribute("visit", "y");//将未访问设置为访问
        session.setMaxInactiveInterval(60 * 60 * 24);//设置最大时效    单位是秒
    
        int count1 = Integer.parseInt(count);
        count1 = count1 + 1;
        count = String.valueOf(count1).toString();
        VisitorCounter.writeCount("C:\\Users\\Mac\\Desktop\\visitCount.txt", count);
    }
    request.setAttribute("count", count);
%>
	 <!-- header begin-->
    <div class="header">
        <div class="container">
                    <div class="row justify-content-between d-flex">
                <div class="col-xl-2 col-lg-2 d-xl-flex d-lg-flex d-block align-items-center mobile-header">
                    <div class="row d-flex">
                        <div class="col-xl-12 col-lg-12 col-6 d-flex align-items-center">
                            <div class="logo">
                                <a href="index.html"><img src="assets/img/logo.png" alt=""></a>
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
                                        <a class="nav-link active" href="index.html">Home <span class="sr-only">(current)</span></a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="about.html">About</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="contact.html">Contact</a>
                                    </li>
    
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
    
                <div class="col-xl-2 col-lg-2 d-xl-flex d-lg-flex d-none align-items-center">
                    <div class="login">
                        <a href="#">login</a>
                    </div>
                </div>
            </div>
        </div>
  </div>
    <!-- header end -->
    <div class="pad1"></div>
    <div class="bg bg-blur"></div>
     <div class="content content-front">${count}</div>
     <hr>
    <div style="width:80px;height:30px;margin:0 auto;margin-top:50px;"></div>
    <div class="layui-col-md6 layui-col-md-offset3">
    会议强调，今年是中华人民共和国成立70周年，开展“不忘初心、牢记使命”主题教育，是以习近平同志为核心的党中央统揽伟大斗争、伟大工程、伟大事业、伟大梦想作出的重大部署，对我们党不断进行自我革命，团结带领人民在新时代把坚持和发展中国特色社会主义这场伟大社会革命推向前进，对统筹推进“五位一体”总体布局、协调推进“四个全面”战略布局，实现“两个一百年”奋斗目标、实现中华民族伟大复兴的中国梦，具有十分重大的意义。

会议强调，开展这次主题教育，要坚持思想建党、理论强党，推动全党深入学习贯彻习近平新时代中国特色社会主义思想；要贯彻新时代党的建设总要求，同一切影响党的先进性、弱化党的纯洁性的问题作坚决斗争，努力把我们党建设得更加坚强有力；要坚持以人民为中心，把群众观点和群众路线深深植根于思想中、具体落实到行动上，不断巩固党执政的阶级基础和群众基础；要引导全党同志勇担职责使命，焕发干事创业的精气神，把党的十九大精神和党中央决策部署特别是全面建成小康社会各项任务落实到位。

会议指出，开展“不忘初心、牢记使命”主题教育，根本任务是深入学习贯彻习近平新时代中国特色社会主义思想，锤炼忠诚干净担当的政治品格，团结带领全国各族人民为实现伟大梦想共同奋斗。这次主题教育要贯彻守初心、担使命，找差距、抓落实的总要求，达到理论学习有收获、思想政治受洗礼、干事创业敢担当、为民服务解难题、清正廉洁作表率的目标。要将力戒形式主义、官僚主义作为主题教育重要内容，教育引导党员干部牢记党的宗旨，坚持实事求是的思想路线，树立正确政绩观，真抓实干，转变作风。要把学习教育、调查研究、检视问题、整改落实贯穿全过程。

会议要求，各级党委（党组）要高度重视、精心组织，党委（党组）主要领导同志要履行第一责任人职责。领导机关、领导干部首先要抓好自身的教育，作出表率。要把开展主题教育同推进“两学一做”学习教育常态化制度化结合起来，同应对化解各种风险挑战、推动本地区本部门本单位的中心工作结合起来，防止“两张皮”。要以好的作风开展主题教育，坚决防止形式主义。要从领导干部自身素质提升、解决问题成效、群众评价反映等方面，评估主题教育效果。要健全完善制度，把主题教育中形成的好经验好做法用制度形式运用好、坚持好。

会议指出，长三角是我国经济发展最活跃、开放程度最高、创新能力最强的区域之一，在全国经济中具有举足轻重的地位。长三角一体化发展具有极大的区域带动和示范作用，要紧扣“一体化”和“高质量”两个关键，带动整个长江经济带和华东地区发展，形成高质量发展的区域集群。

会议强调，把长三角一体化发展上升为国家战略是党中央作出的重大决策部署。要坚持稳中求进，坚持问题导向，抓住重点和关键。要树立“一体化”意识和“一盘棋”思想，深入推进重点领域一体化建设，强化创新驱动，建设现代化经济体系，提升产业链水平。要有力有序有效推进，抓好统筹协调、细化落实，把《规划纲要》确定的各项任务分解落实，明确责任主体。上海、江苏、浙江、安徽要增强一体化意识，加强各领域互动合作，扎实推进长三角一体化发展。</div>


	 <!-- jquery -->
    <script src="./js/jquery.js"></script>
     <!-- main -->
    <script src="./js/main.js"></script>
</body>

</html>