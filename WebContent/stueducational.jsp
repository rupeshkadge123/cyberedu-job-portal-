
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
					<li class="active"><a href="stueducational.jsp" >Educational</a></li>
					<li><a href="stuexperience.jsp">Experience</a></li>
					<li><a href="stuproject.jsp">Project</a></li>
				</ul>

	<div class="tab-pane" id="tab_2">
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
						
					</div>

			</div>
			<!-- /.tab-content -->
		</div>
		<!--  column12-->

	</div>
	<!-- container -->
</div>
<!-- main div -->




<%@include file="Stufooter.jsp"%>









