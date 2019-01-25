<%@page import="java.net.CookieHandler"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.Statement"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Cyber Droid</title>
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<link rel="stylesheet"
	href="bower_components/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="bower_components/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="bower_components/Ionicons/css/ionicons.min.css">
<link rel="stylesheet" href="dist/css/AdminLTE.min.css">
<link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
<link rel="stylesheet" href="bower_components/morris.js/morris.css">
<link rel="stylesheet"
	href="bower_components/jvectormap/jquery-jvectormap.css">
<link rel="stylesheet"
	href="bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
<link rel="stylesheet"
	href="bower_components/bootstrap-daterangepicker/daterangepicker.css">
<link rel="stylesheet"
	href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
  <link rel="stylesheet" href="bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">	
<!-- DataTables -->
  <link rel="stylesheet" href="bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">

</head>


<script src="bower_components/fastclick/lib/fastclick.js"></script>
	

<body class="hold-transition skin-blue sidebar-mini">
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		response.setHeader("Expires", "0"); // Proxies.
	%>
	<%@include file="connection.jsp"%>
	<%
		Integer useridheder = (Integer) session.getAttribute("usridInSession");
	String useremailheader = (String) session.getAttribute("usremailInSession");
	%>
	 <%
		if (useridheder == null)
			response.sendRedirect(request.getContextPath() + "/applogin.jsp");
	%> 

	
	<%
	if (session.getAttribute("usremailInSession")==null) {
		session.invalidate();
		session.setMaxInactiveInterval(0);
		  
		//changing the maximum age to 0 seconds  
		
		RequestDispatcher rd=request.getRequestDispatcher("applogin.jsp");
		rd.forward(request, response);
		}
	%>
	<div class="wrapper">
  <header class="main-header">
    <!-- Logo -->
    <a href="index2.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>C</b>D</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>CyberDroid</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
         
          <!-- Notifications: style can be found in dropdown.less -->
          
          <!-- Tasks: style can be found in dropdown.less -->
          
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
              <span class="hidden-xs"><%=useremailheader%></span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

              </li>
              <!-- Menu Body -->
              
              <!-- Menu Footer-->
             
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">Profile</a>
                </div>
                 <form action="logout" method="post">
                <div class="pull-right">
                  <input type="submit" value="Sign out"class="btn btn-default btn-flat">
                </div>
                </form>
              </li>
              
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
         
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
     
      <!-- search form -->
    
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
        
        

        <li class="treeview"><a href="stuProfile.jsp"> <i
      class="fa  fa-edit "></i><span> Profile</span> <span
            class="pull-right-container"> <i
              class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
          <ul class="treeview-menu">
            <li><a href="stuProfile.jsp"><i class="fa fa-user"></i>
                Personal</a></li>
            <li><a href="stuProfile.jsp"><i class="fa fa-mortar-board "></i>
                Educational</a></li>
            <li><a href="sstuProfile.jsp"><i class="fa fa-paper-plane-o"></i>
                Exprience</a></li>
            <li><a href="stuProfile.jsp"><i
                class="fa  fa-book "></i> Cources</a></li>
            <li><a href="stuProfile.jsp"><i
                class="fa fa-folder-open-o"></i> Projects</a></li>
            <li><a href="stuProfile.jsp"><i
                class="fa  fa-university"></i> Skills</a></li>
            <li><a href="stuProfile.jsp"><i class="fa  fa-university"></i>
                Resume</a></li>
          </ul></li>
        <li class="treeview"><a href="stuJob.jsp"> <i
            class="fa fa-briefcase"></i> <span>Jobs</span> <i
            class="fa fa-angle-left pull-right"></i>
        </a>
          <ul class="treeview-menu">
            <li><a href="stuJob.jsp"><i
                class="fa fa-circle-o"></i> Listed jobs</a></li>
            <li><a href="stuJob.jsp"><i
                class="fa fa-circle-o"></i> Applied Job</a></li>
            <li><a href="stuJob.jsp"><i
                class="fa fa-circle-o"></i> Call Letter</a></li>
            <li><a href="stuJob.jsp"><i
                class="fa fa-circle-o"></i> Recruiters</a></li>
          </ul></li>
        <li class="treeview">
          <a href="#"> 
            <i  class="fa  fa-envelope"></i> <span>Messages</span> 
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="pages/UI/general.html">
              <i class="fa fa-circle-o"></i> Admin</a></li>
            <li><a href="pages/UI/icons.html">
              <i class="fa fa-circle-o"></i> Listed jobs</a></li>
            <li><a href="pages/UI/buttons.html">
              <i class="fa fa-circle-o"></i> Company Messages</a></li>
          </ul>
        </li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>


  <!-- /.content-wrapper -->
  

  <!-- Control Sidebar -->

  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
 
<!-- ./wrapper -->


</body>
</html>