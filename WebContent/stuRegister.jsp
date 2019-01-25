<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Cyber Droid</title>  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">  <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
  <link rel="stylesheet" href="bower_components/bootstrap-daterangepicker/daterangepicker.css">
  <link rel="stylesheet" href="bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
  <link rel="stylesheet" href="plugins/iCheck/all.css">
  <link rel="stylesheet" href="bower_components/bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css">
  <link rel="stylesheet" href="plugins/timepicker/bootstrap-timepicker.min.css">
  <link rel="stylesheet" href="bower_components/select2/dist/css/select2.min.css">
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">

  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
       
</head>
<body class="hold-transition register-page">

<form action="register" method="post">
  <!-- Content Wrapper. Contains page content -->
 <div class="container">
        
        <div class="register-logo">
          <a href="appLogin.html"><b>Cyber</b>Droid Registration</a>
        </div>
        
    <!-- Main content -->
    <section class="Content">
       
      <!-- SELECT2 EXAMPLE -->
      <div class="box box-default">
        
        
        <div class="box-body">

          <div class="row col-md-12">
              <div class="col-md-3 text-center"> 
                <label>Upload Photo</label>
                <center><img src="dist/img/avatar5.png" width="120px" height="120px"/></center>
              </div>
              <div class="col-md-3">
                  <label>First name:</label>
                  <div class="input-group">
                   <span class="input-group-btn">
                                 <button type="button" class="btn btn-default">Mr</button>
                          <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                            <span class="caret"></span>
                            <span class="sr-only">Toggle Dropdown</span>
                          </button>
                          <ul class="dropdown-menu" role="menu">
                            <li><a href="#">Mr</a></li>                           
                            <li class="divider"></li>
                            <li><a href="#">Ms</a></li>
                          </ul>
                        </span>
                  <input type="text" class="form-control" placeholder="First name" name="fname">
                  
              </div>
            </div>
              <div class="col-md-3"> 
                  <label>Middle name:</label>
                   <input type="text" class="form-control" placeholder="Middle name" name="mname">
              </div>
              <div class="col-md-3"> 
                  <label>Last name:</label>
                  <input type="text" class="form-control" placeholder="Last name" name="lname">
              <br>
              </div>

           
              <div class="col-md-6"> 
              <label>Address:</label>
              <input type="text" class="form-control" placeholder="Address" name="add">
                </div>
                <div class="col-md-3"> 
              <label>PIN:</label>
              <input type="text" class="form-control" placeholder="PIN" name="pin"><br>
                </div>
              </div>
              <div class="row col-md-12">
               <div class="col-md-4">
                <label>Country</label>
                <select class="form-control select2" name="country" style="width: 100%;">
                  <option selected="selected">Select</option>
                  <option>U.S.A.</option>
                  <option>California</option>
                  <option>India</option>
                  <option>Japan</option>
                  <option>Russia</option>
                  <option>Pakistan</option>
                </select>

               </div>
               <div class="col-md-4">
                <label>State</label>
                <select class="form-control select2" name="state" style="width: 100%;">
                  <option selected="selected">Select</option>
                  <option>Karnataka</option>
                  <option>Maharashtra</option>
                  <option>Gujarat</option>
                  <option>Haryana</option>
                  <option>Goa</option>
                  <option>Aasam</option>
                </select>
               </div>
               <div class="col-md-4">
                <label>City</label>
                <select class="form-control select2" name="city" style="width: 100%;">
                  <option selected="selected">Select</option>
                  <option>Nashik</option>
                  <option>Pune</option>
                  <option>Mumbai</option>
                  <option>Aurangabad</option>
                  <option>Nagpur</option>
                  <option>Ratnagiri</option>
                </select>
               </div>
             </div>

             <div class="row col-md-12">
             <br>
              <div class="col-md-4">
                    <label>Email:</label>
                       <input type="email" class="form-control" placeholder="Email" name="email">
                    <br>
                </div>
                <div class="col-md-4">
                  <label>Primary mobile:</label>
                    <div class="input-group">
                      <div class="input-group-addon">
                        <i class="fa fa-phone"></i>
                       </div>
                        <input type="text" class="form-control" name="pmobile">
                    </div>
                </div>
                <div class="col-md-4">
                  <label>Secondary mobile:</label>

                    <div class="input-group">
                      <div class="input-group-addon">
                        <i class="fa fa-phone"></i>
                       </div>
                        <input type="text" class="form-control" name="smobile" >
                    </div>
                </div>
                <div class="row col-md-12">
                <div class="col-md-4"> 
                  <label>Password:</label>
                   <input type="password" class="form-control" name="pass" placeholder="password ">
              </div>
               <div class="col-md-4"> 
                  <label>Retype Password:</label>
                   <input type="password" class="form-control" name="repass" placeholder="password">
                   	<br>
              </div>
             
                </div>
               
             </div>
         	   	  <label> </label>
         	   	
                  <div class="col-md-4"></div>
                  
                  <div class="col-md-4">
                   <a href="stujob.jsp"><button type="submit" class="btn btn-block btn btn-primary ">Register</button></a>
                  </div>
                   <div class="col-md-4"></div>

                </div>
      </div> 
     
    
     </section>

  </div>
</form>


<!-- jQuery 3 -->
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Select2 -->
<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
<!-- InputMask -->
<script src="plugins/input-mask/jquery.inputmask.js"></script>
<script src="plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="plugins/input-mask/jquery.inputmask.extensions.js"></script>
<!-- date-range-picker -->
<script src="bower_components/moment/min/moment.min.js"></script>
<script src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- bootstrap datepicker -->
<script src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- bootstrap color picker -->
<script src="bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
<!-- bootstrap time picker -->
<script src="plugins/timepicker/bootstrap-timepicker.min.js"></script>
<!-- SlimScroll -->
<script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- iCheck 1.0.1 -->
<script src="plugins/iCheck/icheck.min.js"></script>
<!-- FastClick -->
<script src="bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<!-- Page script -->
<script>
  $(function () {
    //Initialize Select2 Elements
    $('.select2').select2()

    //Datemask dd/mm/yyyy
    $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
    //Datemask2 mm/dd/yyyy
    $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
    //Money Euro
    $('[data-mask]').inputmask()

    //Date range picker
    $('#reservation').daterangepicker()
    //Date range picker with time picker
    $('#reservationtime').daterangepicker({ timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A' })
    //Date range as a button
    $('#daterange-btn').daterangepicker(
      {
        ranges   : {
          'Today'       : [moment(), moment()],
          'Yesterday'   : [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
          'Last 7 Days' : [moment().subtract(6, 'days'), moment()],
          'Last 30 Days': [moment().subtract(29, 'days'), moment()],
          'This Month'  : [moment().startOf('month'), moment().endOf('month')],
          'Last Month'  : [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        },
        startDate: moment().subtract(29, 'days'),
        endDate  : moment()
      },
      function (start, end) {
        $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'))
      }
    )

    //Date picker
    $('#datepicker').datepicker({
      autoclose: true
    })

    //iCheck for checkbox and radio inputs
    $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
      checkboxClass: 'icheckbox_minimal-blue',
      radioClass   : 'iradio_minimal-blue'
    })
    //Red color scheme for iCheck
    $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
      checkboxClass: 'icheckbox_minimal-red',
      radioClass   : 'iradio_minimal-red'
    })
    //Flat red color scheme for iCheck
    $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
      checkboxClass: 'icheckbox_flat-green',
      radioClass   : 'iradio_flat-green'
    })

    //Colorpicker
    $('.my-colorpicker1').colorpicker()
    //color picker with addon
    $('.my-colorpicker2').colorpicker()

    //Timepicker
    $('.timepicker').timepicker({
      showInputs: false
    })
  })
</script>
</body>
</html>
