<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ taglib prefix="e" uri="/struts-tags" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
    <!--external css-->
    <link href="<c:url value="/core/font-awesome/css/font-awesome.css"/>" rel="stylesheet" />
        
    <!-- Custom styles for this template -->
    <link href="<c:url value="/core/css/style.css"/>" rel="stylesheet">
    <link href="<c:url value="/core/css/style-responsive.css"/>" rel="stylesheet">

    <link href="<c:url value="/core/css/table-responsive.css"/>" rel="stylesheet">
<script src="<c:url value="/core/js/chart-master/Chart.js"/>"></script>
<script src="<c:url value="/core/js/jquery-1.8.3.min.js"/>"></script>
<script src="<c:url value="/core/js/bootstrap.min.js"/>"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script>
      
        function openPopup(){
    var dheight = document.body.clientHeight;
    var dwidth = document.body.clientWidth;
 
    $("#background").width(dwidth).height(dheight);
 
    $("#background").fadeTo("slow",0.8);
 
    var $popup1=$("#popup1");
    $popup1.css("top", (dheight-$popup1.height())/2);
    $popup1.css("left",(dwidth-$popup1.width())/2);
 
    $popup1.fadeIn();
}
  
   function myFunction() {
  // Declare variables 
  var input, filter, table, tr, td, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[6];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    } 
  }
}
		
    </script>
    
    <style>
        .trr:hover{
            background: lightsteelblue;
          color: #F7F8F9;
            cursor: pointer;
         
            
        }
        .trr{
            background: #ffffff;
            
        }
        .span1{
            font-size: 15px;
            font-weight: bold;
        }
        body{
            font-family: sans-serif;
        }
        
    </style>
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
          <section class="wrapper site-min-height">
    
              <div style="float:left"><h3><i class="fa fa-angle-right "></i><strong>DANH SÁCH PHÒNG BAN</strong></h3></div>
             
                                <div style="float:right; padding-bottom: 10px"><a href="${pageContext.request.contextPath}/addpb"><h3><button type="button" class="btn btn-theme col-sm-12"><i class="glyphicon glyphicon-home"></i>&nbsp;&nbsp;Thêm</button></h3></a></div>
                  
              <div class="row mt">
          		<div class="col-lg-12">
          		
					<! -- 1st ROW OF PANELS -->
					<div class="row">
						<!-- TWITTER PANEL -->
						<!-- /col-md-4 -->
						
						<div class="col-lg-12 col-md-12 col-sm-12 mb">
							<!-- WHITE PANEL - TOP USER -->
                                                        <div style="text-align: center">
								<div class="white-header">
									<div class="content-panel">
                      
                          <section id="unseen">
                          
                             
                                   <input class="form-control round-form"  type="text" id="myInput" onkeyup="myFunction()" placeholder="Tìm kiếm">
                                
                                
                                               
                                                                                  
  
                                                                                              
		                      <table  class="table table-striped table-bordered"   id="myTable">
                              <thead>
                                  <tr style="color : navy"> 
                                  <th  style="text-align: center;font-weight: bold">ID</th>
                                  <th  style="text-align: center;font-weight: bold">Họ tên</th>
                                  <th  style="text-align: center;font-weight: bold">Giới tính</th>
                         
                                  <th  style="text-align: center;font-weight: bold">số điện thoại</th>
                                  <th  style="text-align: center;font-weight: bold">Email</th>
                                  <th  style="text-align: center;font-weight: bold">lương(VND)</th>
                                  <th  style="text-align: center;font-weight: bold"></th>
                                
                                  
                              </tr>
                              </thead>
                              <tbody>
                                  
                                   <c:forEach var="item" items="${list}">
                                       
            
                                       <tr class="trr" style="color:black">
                                    
                                  <td  style="text-align: center; vertical-align: middle"><c:out value="${item.id}"></c:out></td>
                                  <td  style="text-align: center; vertical-align: middle"><c:out value="${item.name}"></c:out></td>
                                  <td  style="text-align: center; vertical-align: middle"><c:out value="${item.gender}"></c:out></td>
                                  <td  style="text-align: center; vertical-align: middle"><c:out value="${item.phone}"></c:out></td>
                                  <td  style="text-align: center; vertical-align: middle"> <c:out value="${item.email}"></c:out></td>
                                  <td style="text-align: center; vertical-align: middle"><fmt:formatNumber value="${item.luong}" maxFractionDigits="3" /></td>
                                  </tr> 
                              </c:forEach>
                               <tfoot>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Gender</th>

                <th>Phone</th>
                <th>Email</th>
                <th>Lương</th>

            </tr>
        </tfoot>
                              </tbody>
                              
                          </table>
                                           
                                                    </section>
                                           
                                               
                                              
                                                          <input type="submit" value="Điểm danh" class="btn btn-primary">  
                                                      
                                                    
                                                      
                                                   
                                              
                                    
                                              
                                                                           
									
                                                                        </div>
							</div>
						</div><!-- /col-md-4 -->
                                                </div></div></div></div>
		</section><! --/wrapper -->
      </section><!-- /MAIN CONTENT -->
<div id="clock" class="light">
			<div class="display">
				<div class="weekdays">  <span style="color: black;font-weight: bold; font-size: 40px; font-family: 'Orbitron', sans-serif;" id="abcd"></span></div>
				
		</div>
</div>
      <!--main content end-->
      <!--footer start-->
      <footer class="site-footer">
          <div class="text-center">
              2014 - Alvarez.is
              <a href="basic_table.html#" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a>
          </div>
      </footer>
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="<c:url value="/assets/core/js/jquery.js"/>"></script>
    <script src="<c:url value="/assets/core/js/bootstrap.min.js"/>"></script>
    <script class="include" type="text/javascript" src="<c:url value="/assets/core/js/jquery.dcjqaccordion.2.7.js"/>"></script>
    <script src="<c:url value="/assets/core/js/jquery.scrollTo.min.js"/>"></script>
    <script src="<c:url value="/assets/core/js/jquery.nicescroll.js"/>" type="text/javascript"></script>


    <!--common script for all pages-->
    <script src="<c:url value="/assets/core/js/common-scripts.js"/>"></script>

    <!--script for this page-->
    
  <script>
      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });

  </script>

  </body>
</html>
