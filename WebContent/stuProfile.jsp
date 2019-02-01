<!--  -->
<html>
<head>
<%@include file="header.jsp"%>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<!--  -->
</head>
<body>
	<div class="content-wrapper">
		<div class="container">
			<div class="row col-md-12">
				<br>

				<!-- Custom Tabs -->
				<div class="nav-tabs-custom">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#tab_1" data-toggle="tab">Personal</a></li>
						<li><a href="stueducational.jsp">Educational</a></li>
						<li><a href="stuexperience.jsp">Experience</a></li>
						<li><a href="stuproject.jsp">Project</a></li>

					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="tab_1">
							<!-- profile -->
							<form action="personal" onsubmit="return validation()" method="post">
								<sql:query dataSource="${webappDataSource}" var="result1">
						          select * from cyberedu.studregistration where userid=<%=useridheder%>;
				          		</sql:query>
								<section class="Content">
									<div class="box box-default">
										<div class="box-body">
										<c:forEach var="row1" begin="0" end="0"
														items="${result1.rows}">
											<!---open- box body -->

											<!--open- col-md-12 -->
											<div class="row col-md-12">
												<div class="col-md-3 text-center">
													<label>Upload Photo</label>

													<center>
														<img src="dist/img/avatar5.png" width="120px"
															height="120px" />
													</center>
												</div>

												<div class="col-md-3">
													<label>First name:</label>
													<div class="input-group">
														<span class="input-group-btn">
															<button type="button" class="btn btn-default">Mr</button>
															<button type="button"
																class="btn btn-default dropdown-toggle"
																data-toggle="dropdown">
																<span class="caret"></span> <span class="sr-only">Toggle
																	Dropdown</span>
															</button>
															<ul class="dropdown-menu" role="menu">
																<li><a href="#">Mr</a></li>
																<li><a href="#">Ms</a></li>

															</ul>
														</span> <input type="text" class="form-control"
															 id="firstname" autocomplete="off"
															value="${row1.firstname}" name="fname"> <span id="firsterror"
															class="text-danger text-weight-bold"></span>
													</div>
												</div>
												<div class="col-md-3">
													<label>Middle name:</label> <input type="text" 
														class="form-control" value="${row1.middlename}" id="middlename"
														autocomplete="off" name="mname">
														<span id="middleerror" class="text-danger text-weight-bold"></span>
												</div>
												<div class="col-md-3">
													<label>Last name:</label> <input type="text"
														class="form-control" value="${row1.lastname}"
														autocomplete="off" name="lname"> <br>
												</div>


												<div class="col-md-6">
													<label>Address:</label> <input type="text"
														class="form-control" value="${row1.address}"
														autocomplete="off" name="add">
												</div>
												<div class="col-md-3">
													<label>PIN:</label> <input type="text" class="form-control"
														value="${row1.pin}" name="pin"><br>
												</div>
											</div>
											<!--close- col-md-12 -->
											<!-- open-col-md-12 -->
											<div class="row col-md-12">
												<div class="col-md-4">
													<label>Country</label> <select class="form-control select2"
														style="width: 100%;" name="ountry">
														<option selected="selected">${row1.country}</option>
														<option>Alaska</option>
														<option>California</option>
														<option>Delaware</option>
														<option>Tennessee</option>
														<option>Texas</option>
														<option>Washington</option>
													</select>
												</div>
												<div class="col-md-4">
													<label>State</label> <select class="form-control select2"
														style="width: 100%;" name="state">
														<option selected="selected">${row1.state}</option>
														<option>Alaska</option>
														<option>California</option>
														<option>Delaware</option>
														<option>Tennessee</option>
														<option>Texas</option>
														<option>Washington</option>
													</select>
												</div>
												<div class="col-md-4">
													<label>City</label> <select class="form-control select2"
														style="width: 100%;" name="city">
														<option selected="selected">${row1.city}</option>
														<option>Alaska</option>
														<option>California</option>
														<option>Delaware</option>
														<option>Tennessee</option>
														<option>Texas</option>
														<option>Washington</option>
													</select><br>
												</div>
											</div>

											<!--close- col-md-12 -->


											<!--open- col-md-12 -->
											<div class="row col-md-12">
												<div class="col-md-4">
													<label>Email:</label> <input type="email"
														class="form-control" value="${row1.email}" name="email">
													<br>
												</div>
												<div class="col-md-4">
													<label>Primary mob:</label>
													<div class="input-group">
														<div class="input-group-addon">
															<i class="fa fa-phone"></i>
														</div>
														<input type="text" class="form-control" value="${row1.primarymobileno}" name="pmobile">
													</div>
												</div>
												<div class="col-md-4">
													<label>Secondary mob:</label>
													<div class="input-group">
														<div class="input-group-addon">
															<i class="fa fa-phone"></i>
														</div>
														<input type="text" class="form-control" value="${row1.secondarymobileno}" name="smobile">

													</div>
												</div>
											</div>
											<!--close- col-md-12 -->
											<!--open- col-md-12 -->
											<div class="row col-md-12">
												<div class="col-md-4"></div>
												<div class="col-md-4 text-center">

													<a href="Personal.java"><button type="submit"
															class="btn btn-block btn btn-primary btn-flat margin">Save
															Changes</button></a>

												</div>
												<div class="col-md-4"></div>
											</div>
											<!--close- col-md-12 -->
											</c:forEach>
										</div>
										<!--close- box body -->
									</div>
									<!--close- box box-default -->

								</section>
							</form>
						</div>
						<!-- /.tab-pane -->


					</div>
					<!-- /.tab-content -->
				</div>
				<!-- nav-tabs-custom -->
			</div>
		</div>
	</div>


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
<footer>
	<%@include file="Stufooter.jsp"%>

</footer>
</html>



