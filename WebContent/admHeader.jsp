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
	
<!-- DataTables -->
  <link rel="stylesheet" href="bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
</head>


<script src="bower_components/fastclick/lib/fastclick.js"></script>
	


<body class="hold-transition skin-blue sisdebar-mini">
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		response.setHeader("Expires", "0"); // Proxies.
	%>
	<%@include file="connection.jsp"%>
	<%
		Integer useridheder1 = (Integer) session.getAttribute("usridInSession1");
		
	%>
	

	<div class="wrapper">

		<header class="main-header">
			<!-- Logo -->
			<a href="stuDashboard.jsp" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini"><b>C</b>D</span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>Cyber</b>Droid</span>
			</a>
			<nav class="navbar navbar-static-top">

				<a href="#" class="sidebar-toggle" data-toggle="push-menu"
					role="button"> <span class="sr-only">Toggle navigation</span>
				</a>
						
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<li class="dropdown user user-menu">
						<a href="#"	class="dropdown-toggle" data-toggle="dropdown"> 
						<img src="dist/img/user2-160x160.jpg" class="user-image"
						alt="User Image"> <span class="hidden-xs">Amruta</span></a>
						</li>
					</ul>
				</div>
			</nav>
		</header>
	</div>
	<!-- Left side column. contains the logo and sidebar -->
	<aside class="main-sidebar">
		<section class="sidebar">
			

			<ul class="sidebar-menu" data-widget="tree">
				<li class="header">MAIN NAVIGATION</li>
				
				

				 <li><a href="admDashboard.jsp"> 
				 	<i	class="fa  fa-edit "></i>
				 		<span> Dashboard</span> 
					</a>
				</li>
				<li class="treeview"><a href="admStudent.jsp">
				 <i
						class="fa fa-briefcase"></i> <span>Student</span> <i
						class="fa fa-angle-left pull-right"></i>
				</a>
					<ul class="treeview-menu">
						<li><a href="admStudent.jsp"><i
					
								class="fa fa-circle-o"></i> Student</a></li>
						
					</ul></li>
					
					<li class="treeview"><a href="admListedCompany.jsp"> <i
						class="fa fa-briefcase"></i> <span>Job</span> <i
						class="fa fa-angle-left pull-right"></i>
				</a>
					<ul class="treeview-menu">
					<li><a href="admListedCompany.jsp"><i
				
								class="fa fa-circle-o"></i> listed job</a></li>
						
						<li><a href="admApplied.jsp"><i
				
								class="fa fa-circle-o"></i>Applied job</a></li>
						
					</ul></li>
				
					<li class="treeview"><a href="admRecurters.jsp"> <i
						class="fa fa-briefcase"></i> <span>recurters</span> <i
						class="fa fa-angle-left pull-right"></i>
				</a>
					<ul class="treeview-menu">
			
					
					
						<li><a href="admRecurters.jsp"><i
								class="fa fa-circle-o"></i> Admin recurters</a></li>
						
					</ul></li>
				<li class="treeview">
					<a href="#"> 
						<i	class="fa  fa-envelope"></i> <span>Mailbox</span> 
						<i class="fa fa-angle-left pull-right"></i>
					</a>
					<ul class="treeview-menu">
						<li><a href="admMail.jsp"><i
								class="fa fa-circle-o"></i> inbox</a></li>
								<li><a href="admMailCompose.jsp"><i
								class="fa fa-circle-o"></i> compose</a></li>
								
						<li><a href="admMailRead.jsp"><i
								class="fa fa-circle-o"></i> read</a></li>
								
						
						
								
								
						
								
						
					</ul></li>
						
					
						
					
				
				
				
			</ul>
		</section>
	</aside>