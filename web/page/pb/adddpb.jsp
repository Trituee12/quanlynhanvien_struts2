﻿<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@taglib prefix="e" uri="/struts-tags"%>
<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" %>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>DASHGUM - Bootstrap Admin Template</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/core/css/bootstrap.css"/>" rel="stylesheet">
    <!--external css-->
     <link href="<c:url value="/core/font-awesome/css/font-awesome.css"/>" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/core/js/bootstrap-datepicker/css/datepicker.css"/>" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/core/js/bootstrap-daterangepicker/daterangepicker.css"/>" />
 <script type="text/javascript" src="<e:url value="/core/js/jquery-1.10.2.js"/>" includeParams="false"></script>
    <!-- Custom styles for this template -->
    <link href="<c:url value="/core/css/style.css"/>" rel="stylesheet">
    <link href="<c:url value="/core/css/style-responsive.css"/>" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
     <style>        .span1{
            font-size: 15px;
            font-weight: bold;
        }
        body{
            font-family: sans-serif;
            color: black;
        }
        .round-form {
            color: blue;
        }
    </style>
    <script language="JavaScript">
function validate(evt)
{
    if(evt.keyCode!=8)
    {
        var theEvent = evt || window.event;
        var key = theEvent.keyCode || theEvent.which;
        key = String.fromCharCode(key);
        var regex = /[0-9]|\./;
        if (!regex.test(key))
        {
            theEvent.returnValue = false;

            if (theEvent.preventDefault)
                theEvent.preventDefault();
            }
        }
    }
     function createRequestObject() {
                var tmpXmlHttpObject;

                if (window.XMLHttpRequest) {
                    tmpXmlHttpObject = new XMLHttpRequest();

                } else if (window.ActiveXObject) {
                    tmpXmlHttpObject = new ActiveXObject("Microsoft.XMLHTTP");
                }

                return tmpXmlHttpObject;
            }
            var http = createRequestObject();
            function makeGetRequest2(wordId) {
                var wordId = document.forms["abc"]["maphong"].value;
                http.open('get', 'page/pb/maphong.jsp?maphong=' + wordId);
                http.onreadystatechange = processResponse2;
                http.send(null);
            }

            function processResponse2() {
                if (http.readyState == 4 && http.status == 200) {
                    var response = http.responseText;
                    
                    document.getElementById('description3').innerHTML = response;
                }

            }
              function makeGetRequest3(wordId1) {
                var wordId1 = document.forms["abc"]["tenphong"].value;
                http.open('get', 'page/pb/tenphong.jsp?tenphong=' + wordId1);
                http.onreadystatechange = processResponse3;
                http.send(null);
            }

            function processResponse3() {
                if (http.readyState == 4 && http.status == 200) {
                    var response = http.responseText;
                    
                    document.getElementById('description4').innerHTML = response;
                }

            }
</script>
<script>
   $(document).ready(function(){ 
      
    $("input").blur(function() {
 if($('#description3').text().length === 65 || !$('#description4').text().length === 65 ){
 $('#submit').prop('disabled', true);
            }
           
            
            else{$('#submit').prop('disabled', false);
            }
});

});
</script>
</script>
<script>
   $(document).ready(function(){ 
      
    $("#abcc").click(function() {
 var  a = $("#description4").text().length;
 alert(a);
});

});
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
            <!--logo start-->
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
              
                  
                   
              	 <h5 class="centered table">
                         <e:property value="%{#session.loginID}"/>
                      
                  </h5>
              	  	
                  <li class="mt" >
                      <a  href="${pageContext.request.contextPath}/home">
                          <i class="fa fa-dashboard"></i>
                          <span class="span1">Trang chủ</span>
                      </a>
                  </li>

                  <li class="sub-menu">
                      <a  href="${pageContext.request.contextPath}/home" >
                          <i class="fa fa-user"></i>
                          <span class="span1">Nhân viên</span>
                      </a>
                  </li>

                  <li class="sub-menu">
                      <a class="active" href="${pageContext.request.contextPath}/department" >
                          <i class="fa fa-cogs"></i>
                          <span class="span1" >Phòng ban</span>
                      </a>
                     
                  </li>
                  <li class="sub-menu">
                      <a href="${pageContext.request.contextPath}/home/achievements" >
                          <i class="fa fa-book"></i>
                          <span class="span1" >Thành tích</span>
                      </a>
                  </li>
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper ">
              <h3><i class="fa fa-angle-right"></i><strong>Thêm Phòng ban</strong></h3>
          	
          	<!-- BASIC FORM ELELEMNTS -->
          	<div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel ">
                  	  
                      <form class="form-horizontal style-form" action="addde"  name="abc"  method="POST" >
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Mã phòng ban</label>
                              <div class="col-sm-10">
                                  <input type="text" class="form-control round-form" name="maphong" onblur="makeGetRequest2()" required="">
                                  <span id="description3"></span>
                              </div>
                          </div>
                         <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Tên phòng ban</label>
                              <div class="col-sm-10">
                                  <input type="text" class="form-control round-form" name="tenphong" onblur="makeGetRequest3()"  required="">
                              <span id="description4"></span>
                              </div>
                          </div>
                          <div style="text-align: center">
                              <input type="submit" id="submit" class="btn btn-primary" value="Thêm" disabled=""/></div>
                      </form>
                  </div>
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->
          	
          	<!-- INLINE FORM ELELEMNTS -->
          	
          	
          	
		</section><! --/wrapper -->
      </section><!-- /MAIN CONTENT -->

      <!--main content end-->
      <!--footer start-->
      <footer class="site-footer">
          <div class="text-center">
              2014 - Alvarez.is
              <a href="form_component.html#" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a>
          </div>
      </footer>
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->

    <script src="<c:url value="/core/js/bootstrap.min.js"/>"></script>
    <script class="include" type="text/javascript" src="<c:url value="/core/js/jquery.dcjqaccordion.2.7.js"/>"></script>
    <script src="<c:url value="/core/js/jquery.scrollTo.min.js"/>"></script>
    <script src="<c:url value="/core/js/jquery.nicescroll.js"/>" type="text/javascript"></script>


    <!--common script for all pages-->
    <script src="<c:url value="/core/js/common-scripts.js"/>"></script>

    <!--script for this page-->
    <script src="<c:url value="/core/js/jquery-ui-1.9.2.custom.min.js"/>"></script>

	<!--custom switch-->
	<script src="<c:url value="/core/js/bootstrap-switch.js"/>"></script>
	
	<!--custom tagsinput-->
	<script src="<c:url value="/core/js/jquery.tagsinput.js"/>"></script>
	
	<!--custom checkbox & radio-->
	
	<script type="text/javascript" src="<c:url value="/core/js/bootstrap-datepicker/js/bootstrap-datepicker.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/core/js/bootstrap-daterangepicker/date.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/core/js/bootstrap-daterangepicker/daterangepicker.js"/>"></script>
	
	<script type="text/javascript" src="<c:url value="/core/js/bootstrap-inputmask/bootstrap-inputmask.min.js"/>"></script>
	
	
	<script src="<c:url value="/core/js/form-component.js"/>"></script>    
    
    
  <script>
      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });

  </script>

  </body>
</html>
