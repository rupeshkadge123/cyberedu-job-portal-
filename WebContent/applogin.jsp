<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv=+6"X-UA-Compatible" content="IE=edge">
  <title>CyberDroid | Log in</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->              
  <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->         
  <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->               
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/iCheck/square/blue.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.manager.ConnectionManager"%>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href="stuProfile.jsp"><b>Cyber</b>Droid</a>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
  	<div style="color: red" class="col-sm-12 text-center">${error}</div>
  	<br>
    <p class="login-box-msg">Sign in to start your session</p>

    <form action="log" method="post">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="userid" id="firstname" name="email">
         <span id="firsterror"></span>
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
       
      </div>
      <div class="form-group">
        <input type="password" class="form-control" id="middlename" placeholder="password" name="pass">
       <span id="middleerror"></span>
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
        
      </div>
      <div class="row">
        <div class="col-xs-8">
          <div class="checkbox icheck">
            <label>
              <input type="checkbox"> Remember Me
            </label>
          </div>
        </div>
        
        
        <!-- /.col -->
        <div class="col-xs-4">
         	<button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
        </div>
        <!-- /.col -->
      </div>
    </form>

    
    <!-- /.social-auth-links -->

    <a href="#">I forgot my password</a><br>
    <a href="stuRegister.jsp" class="text-center">Register a new User</a>

  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 3 -->
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="plugins/iCheck/icheck.min.js"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' /* optional */
    });
  });
  
</script>
<script type="text/javascript">
	function validatation(){
		var name = document.getElementById('firstname').value;
		var mname = document.getElementById('middlename').value;

		if(name ==""){
			document.getElementById('firsterror').innerHTML ="please enter value";
			return false;
		}
		
		if(mname ==""){
			document.getElementById('middleerror').innerHTML ="please enter value";
			return false;
		}else{
			document.getElementById('middleerror').innerHTML ="successfully taken";
			return false;
		}
	}
</script>
</body>
</html>
