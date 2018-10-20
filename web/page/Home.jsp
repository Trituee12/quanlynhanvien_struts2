<%@page import="java.text.SimpleDateFormat"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>DASHGUM - FREE Bootstrap Admin Template</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/core/css/bootstrap.css"/>" rel="stylesheet">
    <!--external css-->
    <link href="<c:url value="/core/font-awesome/css/font-awesome.css"/>" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/core/css/zabuto_calendar.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/core/js/gritter/css/jquery.gritter.css"/>" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/core/lineicons/style.css"/>">    
    <link href='https://fonts.googleapis.com/css?family=Orbitron' rel='stylesheet' type='text/css'>
    
    <!-- Custom styles for this template -->
    <link href="<c:url value="/core/css/style.css"/>" rel="stylesheet">
    <link href="<c:url value="/core/css/style-responsive.css"/>" rel="stylesheet">

    <script src="<c:url value="/core/js/chart-master/Chart.js"/>"></script>
   
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  
        <script>
 $('#myclock').thooClock({
	
        size:250,
	dialColor:'#000000',
	dialBackgroundColor:'transparent',
	secondHandColor:'#F3A829',
	minuteHandColor:'#222222',
	hourHandColor:'#222222',
	alarmHandColor:'#FFFFFF',
	alarmHandTipColor:'#026729',
	hourCorrection:'+0',
	alarmCount:1,

	showNumerals:true});
onAlarm: function(){},
	offAlarm: function(){},
	onEverySecond: function(){},
</script>
  </head>

  <body>

  <section id="container" >
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
      <!--header start-->
      <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
              </div>
       <a href="index.html" class="logo"><strong>Công ty ABC</strong></a>
            <!--logo end-->
            <div class="nav notify-row" id="top_menu">
                <!--  notification start -->
                <ul class="nav top-menu">
                        <a  href="?lang=en">
                           <img src="${pageContext.servletContext.contextPath}/core/img/USA.png"/>
                        </a>
                        
                    
                    <!-- settings end -->
                    <!-- inbox dropdown start-->
                        <a  href="?lang=vi">
                           <img src="${pageContext.servletContext.contextPath}/core/img/Viet Nam_1.png"/>
                        </a>
                    <!-- inbox dropdown end -->
                </ul>
                <!--  notification end -->
            </div>
            <div class="top-menu">
            	<ul class="nav pull-right top-menu">
                    <li><a class="logout" href="${pageContext.servletContext.contextPath}/">Đăng xuất</a></li>
            	</ul>
            </div>
        </header>
      <!--header end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
   <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              
                  
                   
              
                  <li class="mt" >
                      <a class="active" href="${pageContext.request.contextPath}/home/">
                          <i class="fa fa-dashboard"></i>
                          <span class="span1">Trang chủ"</span>
                      </a>
                  </li>

                  <li class="sub-menu">
                      <a  href="${pageContext.request.contextPath}/home/employed" >
                          <i class="fa fa-user"></i>
                          <span class="span1">Nhân viên</span>
                      </a>
                  </li>

                  <li class="sub-menu">
                      <a href="${pageContext.request.contextPath}/home/Department" >
                          <i class="fa fa-cogs"></i>
                          <span class="span1" >Phòng ban</span>
                      </a>
                     
                  </li>
                  <li class="sub-menu">
                      <a href="${pageContext.request.contextPath}/home/achievements" >
                          <i class="fa fa-book"></i>
                          <span class="span1" >Thành tích và kỷ luật</span>
                      </a>
                  </li>
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
 
      
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">

              <div class="row">
                  <div class="col-lg-9 main-chart">
                  
                  	<div class="row ">
                  		<div class="col-md-5 col-sm-5 col-md-offset-1 box0">
                  			<div class="box1">
					  			<span class="li_user"></span>
                                                                
                                                                <h3>${sonv}</h3>
                                                                
                  			</div>
					  			<p>Số nhân viên ${sonv} Nhân viên</p>
                  		</div>
                  		<div class="col-md-5 col-sm-5 box0">
                  			<div class="box1">
					  			<span class="li_display"></span>
					  			<h3>${sopb}</h3>
                  			</div>
					  			<p>Số phòng ban ${sopb} Phòng ban</p>
                  		</div>
                  		
                  		
                	
                  	</div><!-- /row mt -->	
				
					
                      <!--CUSTOM CHART START -->
                     
                          <h3>1421212</h3>
                  
                      <div id="chart"></div>
                      <div class="custom-bar-chart">
                          <ul class="y-axis">
                              <li><span>100</span></li>
                              <li><span>80</span></li>
                              <li><span>60</span></li>
                              <li><span>40</span></li>
                              <li><span>20</span></li>
                              <li><span>0</span></li>
                          </ul>
                           
                          <div class="bar">
                              <div class="title"></div>
                              <div class="value tooltips" data-original-title="2" data-toggle="tooltip" data-placement="top">20</div>
                          </div>
                         
                        
                      </div>
                      <!--custom chart end-->
					</div><!-- /row -->	
					
                  <!-- /col-lg-9 END SECTION MIDDLE -->
                  
                  
      <!-- **********************************************************************************************************************************************************
      RIGHT SIDEBAR CONTENT
      *********************************************************************************************************************************************************** -->                  
                  
                  <div class="col-lg-3 ds">
                    <!--COMPLETED ACTIONS DONUTS CHART-->
                    
                    			<h3>TOP 10</h3>
                      <!-- First Member -->
                      
                      <div class="desc">
                      	<div class="thumb" >
                            <img src="${pageContext.servletContext.contextPath}/core/img/friends/" width="40px" height="40px" align="" />
                      	</div>
                      	<div class="details">
                            <p><a href="#" style="font-size: 14px;color: #2775e2;font-weight: bold;vertical-align: middle "></a><br/>
                      		   <span style="font-size: 20px;color: #ac2925;font-weight: bold; vertical-align: middle "></span>
                      		</p>
                      	</div>
                      </div>
                                       
                    
						<h3></h3>
                                        
                      <!-- First Action -->
                    
                      <div class="desc">
                      	<div class="thumb" >
                            <img src="${pageContext.servletContext.contextPath}/core/img/friends/" width="40px" height="40px" align="" />
                      	</div>
                      	<div class="details">
                            <p><a href="#" style="font-size: 20px;color: #2775e2;font-weight: bold;vertical-align: middle "></a><br/>
                      		   <span style="font-size: 10px;color: #ac2925;font-weight: bold; vertical-align: middle "></span>
                      		</p>
                      	</div>
                      </div>
                                           
                  
                     

                       <!-- USERS ONLINE SECTION -->
			
                      

                        <!-- CALENDAR-->
                        <div id="calendar" class="mb">
                            <div class="panel green-panel no-margin">
                                <div class="panel-body">
                                    <div id="date-popover" class="popover top" style="cursor: pointer; disadding: block; margin-left: 33%; margin-top: -50px; width: 175px;">
                                        <div class="arrow"></div>
                                        <h3 class="popover-title" style="disadding: none;"></h3>
                                        <div id="date-popover-content" class="popover-content"></div>
                                    </div>
                                    <div id="my-calendar"></div>
                                </div>
                            </div>
                        </div><!-- / calendar -->
                      
                  </div><!-- /col-lg-3 -->
              </div><! --/row -->
          </section>
      </section>

      <!--main content end-->
      <!--footer start-->
      <footer class="site-footer">
          <div class="text-center">
              2014 - Alvarez.is
              <a href="index.html#" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a>
          </div>
      </footer>
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="<c:url value="/core/js/jquery.js"/>"></script>
    <script src="<c:url value="/core/js/jquery-1.8.3.min.js"/>"></script>
    <script src="<c:url value="/core/js/bootstrap.min.js"/>"></script>
    <script class="include" type="text/javascript" src="<c:url value="/core/js/jquery.dcjqaccordion.2.7.js"/>"></script>
    <script src="<c:url value="/core/js/jquery.scrollTo.min.js"/>"></script>
    <script src="<c:url value="/core/js/jquery.nicescroll.js"/>" type="text/javascript"></script>
    <script src="<c:url value="/core/js/jquery.sparkline.js"/>"></script>


    <!--common script for all pages-->
    <script src="<c:url value="/core/js/common-scripts.js"/>"></script>
    
    <script type="text/javascript" src="<c:url value="/core/js/gritter/js/jquery.gritter.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/core/js/gritter-conf.js"/>"></script>

    <!--script for this page-->
    <script src="<c:url value="/core/js/sparkline-chart.js"/>"></script>    
	<script src="<c:url value="/core/js/zabuto_calendar.js"/>"></script>	
	
	
	
	<script type="text/javascript">
        $(document).ready(function () {
            $("#date-popover").popover({html: true, trigger: "manual"});
            $("#date-popover").hide();
            $("#date-popover").click(function (e) {
                $(this).hide();
            });
        
            $("#my-calendar").zabuto_calendar({
                action: function () {
                    return myDateFunction(this.id, false);
                },
                action_nav: function () {
                    return myNavFunction(this.id);
                },
                ajax: {
                    url: "show_data.php?action=1",
                    modal: true
                },
                legend: [
                    {type: "text", label: "Special event", badge: "00"},
                    {type: "block", label: "Regular event", }
                ]
            });
        });
        
        
        function myNavFunction(id) {
            $("#date-popover").hide();
            var nav = $("#" + id).data("navigation");
            var to = $("#" + id).data("to");
            console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
        }
    </script>
  

  </body>
</html>
