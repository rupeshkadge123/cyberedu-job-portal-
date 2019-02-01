
<%@include file="header.jsp"%>

<div class="content-wrapper">
	<div class="container">
		<div class="row col-md-12">
			<br>

			<!-- Custom Tabs -->
			<div class="nav-tabs-custom">
				<ul class="nav nav-tabs">

					<!-- <li class="active"><a href="stuJob.jsp">Listed</a></li>
					<li><a href="stuJobApplied.jsp">Applied</a></li>
					<li><a href="stuJobCallLetter.jsp">Call Letter</a></li>
					<li><a href="stuJobRecruters.jsp">Recruiters</a></li> -->
					<li><a href="stuProfile.jsp" >Personal</a></li>
					<li><a href="stueducational.jsp" >Educational</a></li>
					<li class="active"><a href="stuexperience.jsp">Experience</a></li>
					<li><a href="stuproject.jsp">Project</a></li>
				</ul>

	<div class="tab-pane" id="tab_3">
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
														 name="yfexp">
														<option>Year of Experience</option>
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
														 name="ctcofcurcomp">
														<option>CTC of Current Company</option>
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
														class="form-control select2" 
														name="techused">
														<option>Technology Used</option>
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
					<!-- /.tab-pane -->

			</div>
			<!-- /.tab-content -->
		</div>
		<!--  column12-->

	</div>
	<!-- container -->
</div>
<!-- main div -->




<%@include file="Stufooter.jsp"%>









