
	<!-- Left side column. contains the logo and sidebar -->
	<aside class="main-sidebar">
		<section class="sidebar">


			<ul class="sidebar-menu" data-widget="tree">
				<li class="header">MAIN NAVIGATION</li>



				<li><a href="admDashboard.jsp"> <i class="fa  fa-edit "></i>
						<span> Dashboard</span>
				</a></li>
				<li class="treeview"><a href="admStudent.jsp"> <i
						class="fa fa-briefcase"></i> <span>Student</span> <i
						class="fa fa-angle-left pull-right"></i>
				</a>
					<ul class="treeview-menu">
						<li><a href="admStudent.jsp"><i class="fa fa-circle-o"></i>
								Student</a></li>

					</ul></li>

				<li class="treeview"><a href="admListedCompany.jsp"> <i
						class="fa fa-briefcase"></i> <span>Job</span> <i
						class="fa fa-angle-left pull-right"></i>
				</a>
					<ul class="treeview-menu">
						<li><a href="admListedCompany.jsp"><i
								class="fa fa-circle-o"></i> listed job</a></li>

						<li><a href="admApplied.jsp"><i class="fa fa-circle-o"></i>Applied
								job</a></li>

					</ul></li>

				<li class="treeview"><a href="admRecurters.jsp"> <i
						class="fa fa-briefcase"></i> <span>recurters</span> <i
						class="fa fa-angle-left pull-right"></i>
				</a>
					<ul class="treeview-menu">



						<li><a href="admRecurters.jsp"><i class="fa fa-circle-o"></i>
								Admin recurters</a></li>

					</ul></li>
				<li class="treeview"><a href="#"> <i
						class="fa  fa-envelope"></i> <span>Mailbox</span> <i
						class="fa fa-angle-left pull-right"></i>
				</a>
					<ul class="treeview-menu">
						<li><a href="admMail.jsp"><i class="fa fa-circle-o"></i>
								inbox</a></li>
						<li><a href="admcompose.jsp"><i
								class="fa fa-circle-o"></i> compose</a></li>

						<li><a href="admMailRead.jsp"><i class="fa fa-circle-o"></i>
								read</a></li>


					</ul></li>

			</ul>
		</section>
	</aside>

	<footer class="main-footer">
		<div class="pull-right hidden-xs">
			<b>Version</b> 2.4.0
		</div>
		<strong>Copyright &copy; 2017-2018 <a
			href="https://cyberdriod.com">CyberDroid Solutions (P) Ltd.</a>
		</strong> All rights reserved.
	</footer>

	<script src="bower_components/jquery/dist/jquery.min.js"></script>
	<script src="bower_components/jquery-ui/jquery-ui.min.js"></script>
	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script>
	<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="bower_components/raphael/raphael.min.js"></script>
	<script src="bower_components/morris.js/morris.min.js"></script>
	<script
		src="bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
	<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script src="bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
	<script src="bower_components/moment/min/moment.min.js"></script>
	<script
		src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
	<script
		src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
	<script
		src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<script
		src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="bower_components/fastclick/lib/fastclick.js"></script>
	<script src="dist/js/adminlte.min.js"></script>
	<script src="dist/js/pages/dashboard.js"></script>

	<!-- DataTables -->
	<script src="bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
	<script
		src="bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
	<script>
		$(function() {
			$('#example1').DataTable()
			$('#example2').DataTable({
				'paging' : true,
				'lengthChange' : false,
				'searching' : false,
				'ordering' : true,
				'info' : true,
				'autoWidth' : false
			})
		})
	</script>

	
	
	<script src="dist/js/demo.js"></script>
	<script>  $(function () {
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
	</script>

	


</html>