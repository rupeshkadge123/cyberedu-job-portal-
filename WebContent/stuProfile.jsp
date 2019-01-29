<!--  -->
<%@include file="header.jsp"%>

<!--  -->
<div class="content-wrapper">
	<div class="container">
		<div class="row col-md-12">
			<br>
				
			<!-- Custom Tabs -->
			<div class="nav-tabs-custom">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#tab_1" data-toggle="tab">Personal</a></li>
					<li><a href="stueducational.jsp" >Educational</a></li>
					<li><a href="stuexperience.jsp">Experience</a></li>
					<li><a href="stuproject.jsp">Project</a></li>

				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="tab_1">
						<!-- profile -->
						<form action="personal" onsubmit="return validation()" method="post"  >
							<section class="Content">
								<div class="box box-default">
									<div class="box-body">
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
														placeholder="First name" id="fname" autocomplete="off" name="fname">
														<span id="fnamerror" class="text-danger text-weight-bold"></span>
												</div>
											</div>
											<div class="col-md-3">
												<label>Middle name:</label> <input type="text" value=""
													class="form-control" placeholder="Middle name"  autocomplete="off" name="mname">
											</div>
											<div class="col-md-3">
												<label>Last name:</label> <input type="text"
													class="form-control" placeholder="Last name" autocomplete="off" name="lname">
												<br>
											</div>


											<div class="col-md-6">
												<label>Address:</label> <input type="text"
													class="form-control" placeholder="Address" autocomplete="off" name="add">
											</div>
											<div class="col-md-3">
												<label>PIN:</label> <input type="text" class="form-control"
													placeholder="PIN" name="pin"><br>
											</div>
										</div>
										<!--close- col-md-12 -->
										<!-- open-col-md-12 -->
										<div class="row col-md-12">
											<div class="col-md-4">
												<label>Country</label> <select class="form-control select2"
													style="width: 100%;" name="ountry">
													<option selected="selected">Alabama</option>
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
													<option selected="selected">Alabama</option>
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
													<option selected="selected">Alabama</option>
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
													class="form-control" placeholder="Email" name="email">
												<br>
											</div>
											<div class="col-md-4">
												<label>Primary mob:</label>
												<div class="input-group">
													<div class="input-group-addon">
														<i class="fa fa-phone"></i>
													</div>
													<input type="text" class="form-control" name="pmobile">
												</div>
											</div>
											<div class="col-md-4">
												<label>Secondary mob:</label>
												<div class="input-group">
													<div class="input-group-addon">
														<i class="fa fa-phone"></i>
													</div>
													<input type="text" class="form-control" name="smobile">

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
									</div>
									<!--close- box body -->
								</div>
								<!--close- box box-default -->

							</section>
						</form>
					</div>
					<!-- /.tab-pane -->

					<%-- <div class="tab-pane" id="tab_2">
						<!-- educational Details -->
						
							<section class="content">
								<div class="box box-default">
									<!-- /.box-header -->
									<div class="box-body">
										<div class="form-group">
										<form action="education" method="post">
										<input type="hidden" value="<%=useridheder%>" name="userid">
											<div class="row col-md-12">
												<!--open- row col-md-12 -->
												<div class="col-md-3">
													<label>Highest Education </label>
													<div class="form-group has-feedback">

														<select class="form-control select2" name="highedu">
															<option>Select</option>
															<option>10 TH</option>
															<option>12 TH/Diploma</option>
															<option>UG</option>
															<option>PG</option>
														</select>
													</div>
												</div>

												<div class="col-md-3">
													<label>University</label>
													<div class="form-group has-feedback">
														<input type="text" class="form-control" name="uni">

													</div>
												</div>

												<div class="col-md-2">
													<label>Passing year</label> <select
														class="form-control select2" name="passyear">
														<option>Select</option>
														<option>2018</option>
														<option>2017</option>
														<option>2016</option>
														<option>2015</option>
														<option>2014</option>

													</select>
												</div>
												<div class="col-md-2">
													<label>grade </label>
													<div class="form-group ">
														<input type="text" class="form-control" name="grade">
													</div>
												</div>
												<div class="col-md-2">
													<br> <button
															type="submit"
															class="btn btn-block btn btn-primary btn-flat margin">+Add
														</button>

												</div>

											</div>
											<!--close- row col-md-12 -->
										</form>


											<!-- /.box-header -->

											<!--Data table-->
											<br> <br>





											<!-- /.box-header -->
											
											
											<div class="box-body">
												<div class="box-header"></div>
												<form action="delete1" method="post">
												<sql:query dataSource="${webappDataSource}" var="result">
						          select * from studeducational where userid=<%=useridheder%>;
				          		</sql:query>
												
												<table id="example"
													class="table table-bordered table-striped">
													<thead>
														<tr>
															<th>Highest Education</th>
															<th>University</th>
															<th>Passing Year</th>
															<th>Grade</th>
														</tr>
													</thead>
													<c:forEach var="row" items="${result.rows}">
														<tbody>
															<tr>
																<td>${row.highesteducation}</td>
																<td>${row.university}</td>
																<td>${row.passingyear}</td>
																<td>${row.grade}</td>
																
															<td><button type="submit" value="${row.eduid}" name="eduid" class="btn btn-block btn-danger btn-sm">
																<i class="fa  fa-trash-o"></i>
															</button></td>
															</tr>

														</tbody>
													</c:forEach>
												</table>
												</form>
											</div>
											<!-- /.box-body -->

											
										</div>
										<!--close- form-group-->
									</div>
									<!--close- box-body-->
								</div>
								<!--close- box box-default-->
							</section>
							<!-- educational Details -->
						
					</div> --%>
<!-- ************************************************************************* -->
					<!-- /.tab-pane -->
				<%-- 	<div class="tab-pane" id="tab_3">
						<!-- Experieance -->
						<section class="content">
							<div class="box box-default">
								<div class="box-body">
									<div class="form-group">
										<!--open- col-md-12 -->
										<form action="Experience" method="post">
											<input type="hidden" value="<%=useridheder%>" name="userid">
											<div class="row col-md-12">
												<div class="col-md-4">
													<label>Job Title</label> <input type="text"
														class="form-control" placeholder="Job Title" name="jtitle">
												</div>
												<div class="col-md-4">
													<label>Company Name</label> <input type="text"
														class="form-control" placeholder="Company Name"
														name="cname">
												</div>
												<div class="col-md-4">
													<label>Company Domain</label> <input type="text"
														class="form-control" placeholder="Company Domain"
														name="cdomain">
												</div>

												<!--close- col-md-12 -->

												<!--open- col-md-12 -->

												<div class="col-md-4">
													<label>Year of Experience</label> <select
														class="form-control select2"
														placeholder="Year of Experience" name="yfexp">
														<option>Exp 1-3 year</option>
														<option>Exp 4-6 year</option>
														<option>Exp 7-7 year</option>
														<option>Exp 8-11 year</option>
														<option>Exp 12-15 year</option>
														<option>Above 15 year</option>

													</select>

												</div>

												<div class="col-md-4">
													<label>CTC of Current Company </label> <select
														class="form-control select2"
														placeholder="CTC of Current Company" name="ctcofcurcomp">
														<option>1-2 LPA</option>
														<option>3-5 LPA</option>
														<option>6-8 LPA</option>
														<option>9-12 LPA</option>
														<option>Above 12 LPA</option>

													</select>

												</div>
												<div class="col-md-4">
													<div class="form-group">
														<label> Joining Date:</label>

														<div class="input-group date">
															<div class="input-group-addon">
																<i class="fa fa-calendar"></i>
															</div>
															<input type="date" class="form-control pull-right"
																id="datepicker" name="jdate">
														</div>
														<!-- /.input group -->


													</div>
												</div>

												<!--close- col-md-12 -->

												<!--open- col-md-12 -->


												<div class="col-md-4">
													<label>Technology Used</label> <select
														class="form-control select2" placeholder="Technology Used"
														name="techused">
														<option>Java</option>
														<option>PHP</option>
														<option>.NET</option>
														<option>ANGULAR JS</option>
														<option>PYTHON</option>
														<option>SQL</option>
														<option>IOS</option>
														<option>JAVASCRIPT</option>
														<option>RUBY</option>
													</select>

												</div>

												<div class="col-md-4">
													<label>Project</label>

													<textarea class="form-control" rows="2" name="project"></textarea>
													<br>

												</div>
												<div class=col-md-4></div>
												<div class="col-md-4">
													<label>Skills</label> <input type="text"
														class="form-control" placeholder="skill"
														name="skill">
												</div>
												

												<div class="row col-md-12">
												<div class="col-md-4"></div>
												<div class="col-md-4 text-center">
													<a href="#">
														<button type="submit"
															class="btn btn-block btn btn-primary btn-flat margin">Save
															Changes</button>
													</a>
												</div>
												<div class="col-md-4"></div>
											</div>
												
												<!--close- col-md-12 -->
											</div>
										</form>
									<form action="delete2" method="post">
								<sql:query dataSource="${webappDataSource}" var="result1">
						          select * from studexperience where userid=<%=useridheder%>;
				          		</sql:query>

										<table id="example" class="table table-bordered table-striped">
											<thead>
												<tr>
													<th>Job Title</th>
													<th>Company Name</th>
													<th>Company Domain</th>
													<th>Year of Experience</th>
													<th>CTC of Current Company</th>
													<th>joining Date</th>
													<th>Technology Used</th>
													<th>Project</th>
													<th>skill</th>
													<th>Remove</th>
													
												</tr>
											</thead>
											<c:forEach var="row1" items="${result1.rows}">
												<tbody>
													<tr>
														<td>${row1.jobtitle}</td>
														<td>${row1.companyname}</td>
														<td>${row1.companydomain}</td>
														<td>${row1.yearofexperience}</td>
														<td>${row1.ctcofcurrentcompany}</td>
														<td>${row1.joiningdate}</td>
														<td>${row1.technology}</td>
														<td>${row1.project}</td>
														<td>${row1.skill}</td>
														
														<td><button type="submit" value="${row1.expid}" name="expid" class="btn btn-block btn-danger btn-sm">
																<i class="fa  fa-trash-o"></i>
															</button></td>
													</tr>
												</tbody>
											</c:forEach>
										</table>
										</form>
										<!-- /.box-body -->



										<!--open- col-md-12 -->
										
										
										
										<!--close- col-md-12 -->
									</div>
									<!--close- box box-default-->

								</div>
								<!--close- box-body"-->
							</div>
							<!--close- form-group-->
						</section>


					</div>
					<!-- /.tab-pane --> --%>
					<%-- <div class="tab-pane" id="tab_4">
						<!-- -->

						<section class="content">
							<div class="box box-default">
								<div class="box-body">
									<div class="form-group">
										<!--open- col-md-12 -->
										<form action="Project" method="post">
											<input type="hidden" value="<%=useridheder%>" name="useid">
											<div class="row col-md-12">
												<div class="col-md-6">
													<label>Project Title</label> <input type="text"
														class="form-control" placeholder="Job Title" name="ptitle">
												</div>

												<div class="col-md-6">
													<label>Domain</label> <input type="text"
														class="form-control" placeholder="Role" name="domain">
												</div>
											</div>
											<!--close- col-md-12 -->

											<!--open- col-md-12 -->
											<div class="row col-md-12">
												<div class="col-md-6">
													<label>Role</label> <input type="text" class="form-control"
														placeholder="Role" name="role">
												</div>
												<div class="col-md-6">
													<label>Technology Used</label> <select
														class="form-control select2" placeholder="Technology Used"
														name="techused">
														<option>Java</option>
														<option>PHP</option>
														<option>.NET</option>
														<option>ANGULAR JS</option>
														<option>PYTHON</option>
														<option>SQL</option>
														<option>IOS</option>
														<option>JAVASCRIPT</option>
														<option>RUBY</option>
													</select>
												</div>
											</div>
											<!--close- col-md-12 -->

											<!--open- col-md-12 -->
											<div class="col-md-4">
												<div class="form-group">
													<label>Project Duration:</label>

													<div class="input-group date">
														<div class="input-group-addon">
															<i class="fa fa-calendar"></i>
														</div>
														<input type="date" class="form-control pull-right"
															id="datepicker" name="ptime">
													</div>
													<!-- /.input group -->


												</div>

											</div>
											<div class="col-md-8">
												<label>Project</label>

												<textarea class="form-control" rows="2" name="pdesc"></textarea>
												<br>

											</div>
											<!--close- col-md-12 -->
											<div class="row col-md-12">
												<div class=col-md-4></div>
												<div class="col-md-4">
													<button type="submit"
															class="btn btn-block btn btn-primary btn-flat margin">
															Submit</button>
												</div>   
												<div class=col-md-4></div>
											</div>
											
											</form>
											<form action="delete3" method="post">
											<sql:query dataSource="${webappDataSource}" var="result2">
						          select * from studproject where useid=<%=useridheder%>;
				          		</sql:query>
				          					
											<table id="example"
												class="table table-bordered table-striped">
												<thead>

													<tr> 
														<th>Project Title</th>
														<th>Domain</th>
														<th>Role</th>
														<th>Technology Used</th>
														<th>Project Time Period</th>
														<th>Project Description</th>
														<th>Remove</th>
													</tr>
												</thead>
												<c:forEach var="row2" items="${result2.rows}">
													<tbody>
														<tr>
															<td>${row2.projecttitle}</td>
															<td>${row2.domain}</td>
															<td>${row2.role}</td>
															<td>${row2.technologyused}</td>
															<td>${row2.ptime}</td>
															<td>${row2.projectdesc}</td>   
															<td><button type="submit" value="${row2.proid}" name="proid" class="btn btn-block btn-danger btn-sm">
																<i class="fa  fa-trash-o"></i>
																</button></td>   
														</tr>
													</tbody>
												</c:forEach>
											</table>
											</form>
											<!--open- col-md-12 -->
										</div>
										</div>
										
								<!--close- box-body"-->
							</div>
							<!--close- form-group-->
						</section>
						<!-- Project -->
					</div>
					<!-- /.tab-pane --> --%>
				</div>
				<!-- /.tab-content -->
			</div>
			<!-- nav-tabs-custom -->
		</div>
	</div>
</div>


<script type="text/javascript">
	function validation(){
		var fname = document.getElementById("fname").value;
		if(fname==''){
			
			document.getElemetById("fnameerror").innerHTML="* please enter the username";
		}else{
			document.getElementById("fnameerrot").innerHTML="";
		}
	} 
	</script>
<%@include file="footer.jsp"%>






