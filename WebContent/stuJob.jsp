
<%@include file="header.jsp"%>

<div class="content-wrapper">
	<div class="container">
		<div class="row col-md-12">
			<br>

			<!-- Custom Tabs -->
			<div class="nav-tabs-custom">
				<ul class="nav nav-tabs">
					<li class="active"><a href="admListedCompany.jsp">listed
							job</a></li>
					<li><a href="admApplied.jsp">Applied job</a></li>
				</ul>
				<div class="tab-pane" id="tab_2">
					<div class="tab-content">
						<div class="tab-pane active">
							<!-- profile -->
							<section class="Content">
								<form action="remove" method="post">
									<div class="box box-default">
										<div class="box-header">
											<h3 class="box-title">Currently Available Jobs</h3>
										</div>
										<!-- /.box-header -->
										<sql:query dataSource="${webappDataSource}" var="result">
						          select * from admlistedjob;
				          		</sql:query>

										<div class="box-body">
											<table id="example1"
												class="table table-bordered table-striped">
												<thead>
													<tr>
														<th>jobtitle</th>
														<th>company name</th>
														<th>skill</th>
														<th>Experience</th>
														<th>Vaccancies</th>
														<th></th>
													</tr>
												</thead>
												<c:forEach var="row" items="${result.rows}">

													<tbody>
														<tr>
															<td>${row.jtitle}</td>
															<td>${row.cname}</td>
															<td>${row.skill}</td>
															<td>${row.experience}</td>
															<td>${row.vaccancies}</td>
															
															<td>
																<button type="submit" value="${row.jobid}" name="jobid123"
																	class="btn btn-block btn-danger btn-sm">
																<i class="fa  fa-trash-o"></i>
															</button></td>
															
														</tr>
													</tbody>
												</c:forEach>




											</table>
										</div>
										<!-- /.box-body -->

										<!-- /.box -->

										<!---open- box body -->


									</div>
									<!--close- box body -->
								</form>
								<!--close- box box-default -->

							</section>
						</div>
						<!-- /.tab-pane -->
					</div>
				</div>






			</div>
			<!-- /.tab-content -->
		</div>
		<!--  column12-->

	</div>
	<!-- container -->
</div>
<!-- main div -->




<%@include file="footer.jsp"%>

<%-- <div class="content-wrapper">
	<div class="container">
		<div class="row col-md-12">
			<br>

			<!-- Custom Tabs -->
			<div class="nav-tabs-custom">
				<ul class="nav nav-tabs">
					<li class="active"><a href="stuJob.jsp">Listed</a></li>
					<li><a href="stuJobApplied.jsp">Applied</a></li>
					<li><a href="stuJobCallLetter.jsp">Call Letter</a></li>
					<li><a href="stuJobRecruters.jsp">Recruiters</a></li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active">
						<!-- profile -->
						<section class="Content">
							<div class="box box-default">
								<div class="box-header">
									<h3 class="box-title">Currently Available Jobs</h3>
								</div>
								<!-- /.box-header -->
								<div class="box-body">
									<sql:query dataSource="${webappDataSource}" var="result">
						          select jtitle,cname,skill,experience,vaccancies from listedjob;
				          		</sql:query>
									<table id="example1" class="table table-bordered table-striped">
										<thead>
											<tr>
												<th>Job Title</th>
												<th>Company Name</th>
												<th>Skill</th>
												<th>Experieance</th>
												<th>vaccancies</th>
																	
												<th></th>
											</tr>
										</thead>
										<c:forEach var="row" items="${result.rows}">
											<tbody>
												<tr>
													<td>${row.jtitle}</td>
													<td>${row.cname}</td>
													<td>${row.skill}</td>
													<td>${row.experience}</td>
													<td>${row.vaccancies}</td>
													<input type="hidden" value="${row.jobid}" name="jobid">
													<td>
														<% String jobid=(String)request.getParameter("jobid"); %>
														<button type="button"
															class="btn btn-block btn btn-primary btn-flat"
															data-toggle="modal" data-target="#exampleModal">
															View</button> <!-- Modal -->
														<div class="row col-md-12">

															<div class="modal fade " id="exampleModal" tabindex="-1"
																role="dialog" aria-labelledby="exampleModalLabel"
																aria-hidden="true">
																<div class="modal-dialog" role="pdf">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h5 class="modal-title" id="exampleModalLabel">Modal
																				title</h5>
																			<button type="button" class="close"
																				data-dismiss="modal" aria-label="Close">
																				<span aria-hidden="true">&times;</span>
																			</button>
																		</div>

																		<div class="modal-body">
																			<div class="content">
																				<!-- Main content -->
																				<section class="content">

																					<!-- /.box-header -->
																					<div class="box-body">
																						<div class="form-group">
																							<form>
																								<sql:query dataSource="${webappDataSource}"
																									var="result1">
						          																	select * from listedjob where jobid=<%=jobid%>;
				          																			</sql:query>
																								<c:forEach var="row1" begin="0" end="0"
																									items="${result1.rows}">
																									<div class="col-md-12 ">

																										<label>Job Title:</label> ${row1.jtitle}
																									</div>
																									<div class="row col-md-12">
																										<label>Company Name:</label> ${row1.cname}
																									</div>
																									<div class="row col-md-12">

																										<label>Vaccancies:</label> ${row1.vaccancies}
																									</div>


																									<div class="row col-md-12">

																										<label>Job Description:</label> ${row1.jdesc}

																									</div>
																									<div class="row col-md-12">

																										<label>Hiring Process:</label>
																										${row1.hprocess}

																									</div>


																									<div class="row col-md-12">

																										<label>Technical Skill:</label> ${row1.skill}

																									</div>
																									<div class="row col-md-12">

																										<label>Job Location:</label><br>
																										${row1.jlocation}

																									</div>
																									<div class="row col-md-12">

																										<label>Criteria:</label> ${row1.criteria}

																									</div>
																									<div class="row col-md-12">

																										<label>Qualification:</label>
																										${row1.qualification}

																									</div>
																									<div class="row col-md-12">

																										<label>Experience:</label> <br>
																										${row1.experience}


																									</div>



																									<div class="row col-md-12">

																										<label>Package:</label> ${row1.package}

																									</div>
																									<div class="row col-md-12">

																										<label>Bond:</label> ${row1.bond}

																									</div>

																									<div class="row col-md-12">

																										<label>Venue:</label> ${row1.venue}

																									</div>

																									<div class="row col-md-12">


																										<label>Interview Date:</label>

																										${row1.interviewdate}
																										<!-- /.input group -->

																									</div>
																									<div class="row col-md-12">

																										<label>Deadline To Apply</label>
																										${row1.dtapply}

																										<!-- /.input group -->


																									</div>
																									<div class="row col-md-12">

																										<label>Necessary Documents</label>
																										${row1.ndocument}

																									</div>
																									<div class="row col-md-12">

																										<label>Contact</label> ${row1.contact}

																									</div>
																								</c:forEach>
																							</form>
																						</div>
																					</div>
																				</section>
																			</div>



																			<!-- jQuery 3 -->
																			<script
																				src="bower_components/jquery/dist/jquery.min.js"></script>
																			<!-- Bootstrap 3.3.7 -->
																			<script
																				src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
																			<!-- iCheck -->
																			<script src="plugins/iCheck/icheck.min.js"></script>
																			<script>
																				$(function() {
																					$(
																							'input')
																							.iCheck(
																									{
																										checkboxClass : 'icheckbox_square-blue',
																										radioClass : 'iradio_square-blue',
																										increaseArea : '20%' /* optional */
																									});
																				});
																			</script>
																		</div>
																		<div class="modal-footer">
																			<a href="stuJob.jsp"><button type="submit"
																					class="btn btn-secondary" data-dismiss="modal">Close</button></a>
																			<button type="button" class="btn btn-primary">Apply</button>
																		</div>
																	</div>
																</div>
															</div>

														</div> <!--row col-md-12  -->
													</td>
												</tr>
											</tbody>
										</c:forEach>
									</table>
								</div>
								<!-- /.box-body -->

								<!-- /.box -->
								<!---open- box body -->


							</div>
							<!--close- box body -->

							<!--close- box box-default -->
						</section>
					</div>
					<!-- /.tab-pane -->







					<!-- <div class="tab-pane" id="tab_2">
						educational Details
						<section class="Content">
							<div class="box box-default">
								<div class="box-header">
									<h3 class="box-title">Currently Available Jobs</h3>
								</div>
								/.box-header
								<div class="box-body">
									<table id="example1" class="table table-bordered table-striped">
										<thead>
											<tr>
												<th>Rendering engine</th>
												<th>Browser</th>
												<th>Platform(s)</th>
												<th>Engine version</th>
												<th>CSS grade</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Trident</td>
												<td>Internet Explorer 4.0</td>
												<td>Win 95+</td>
												<td>4</td>
												<td>X</td>
											</tr>
											<tr>
												<td>Trident</td>
												<td>Internet Explorer 5.0</td>
												<td>Win 95+</td>
												<td>5</td>
												<td>C</td>
											</tr>
											<tr>
												<td>Trident</td>
												<td>Internet Explorer 5.5</td>
												<td>Win 95+</td>
												<td>5.5</td>
												<td>A</td>
											</tr>
											<tr>
												<td>Trident</td>
												<td>Internet Explorer 6</td>
												<td>Win 98+</td>
												<td>6</td>
												<td>A</td>
											</tr>
											<tr>
												<td>Other browsers</td>
												<td>All others</td>
												<td>-</td>
												<td>-</td>
												<td>U</td>
											</tr>
										</tbody>
										<tfoot>
											<tr>
												<th>Rendering engine</th>
												<th>Browser</th>
												<th>Platform(s)</th>
												<th>Engine version</th>
												<th>CSS grade</th>
											</tr>
										</tfoot>
									</table>
								</div>
								/.box-body
								/.box
								-open- box body
							</div>
							close- box body
							close- box box-default
						</section>
					</div> -->
					<!-- /.tab-pane -->
					<div class="tab-pane" id="tab_3">
						<!-- Experieance -->

						<section class="Content">
							<div class="box box-default">
								<div class="box-header">
									<h3 class="box-title">Currently Available Jobs</h3>
								</div>
								<!-- /.box-header -->
								<div class="box-body">
									<table id="example1" class="table table-bordered table-striped">
										<thead>
											<tr>
												<th>Rendering engine</th>
												<th>Browser</th>
												<th>Platform(s)</th>
												<th>Engine version</th>
												<th>CSS grade</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Trident</td>
												<td>Internet Explorer 4.0</td>
												<td>Win 95+</td>
												<td>4</td>
												<td>X</td>
											</tr>
											<tr>
												<td>Trident</td>
												<td>Internet Explorer 5.0</td>
												<td>Win 95+</td>
												<td>5</td>
												<td>C</td>
											</tr>
											<tr>
												<td>Trident</td>
												<td>Internet Explorer 5.5</td>
												<td>Win 95+</td>
												<td>5.5</td>
												<td>A</td>
											</tr>
											<tr>
												<td>Trident</td>
												<td>Internet Explorer 6</td>
												<td>Win 98+</td>
												<td>6</td>
												<td>A</td>
											</tr>
											<tr>
												<td>Other browsers</td>
												<td>All others</td>
												<td>-</td>
												<td>-</td>
												<td>U</td>
											</tr>
										</tbody>
										<tfoot>
											<tr>
												<th>Rendering engine</th>
												<th>Browser</th>
												<th>Platform(s)</th>
												<th>Engine version</th>
												<th>CSS grade</th>
											</tr>
										</tfoot>
									</table>
								</div>
								<!-- /.box-body -->

								<!-- /.box -->
								<!---open- box body -->


							</div>
							<!--close- box body -->

							<!--close- box box-default -->

						</section>
					</div>
					<!-- /.tab-pane -->
					<div class="tab-pane" id="tab_4">
						<!-- Experieance -->

						<section class="content">
							<div class="box box-default">
								<div class="box-body">
									<div class="form-group">
										<!--open- col-md-12 -->
										<div class="row col-md-12">
											<div class="col-md-6">
												<label>Project Title</label> <input type="text"
													class="form-control" placeholder="Job Title">
											</div>

											<div class="col-md-6">
												<label>Domain</label> <input type="text"
													class="form-control" placeholder="Role">
											</div>
										</div>
										<!--close- col-md-12 -->

										<!--open- col-md-12 -->
										<div class="row col-md-12">
											<div class="col-md-6">
												<label>Role</label> <input type="text" class="form-control"
													placeholder="Role">
											</div>
											<div class="col-md-6">
												<label>Technology Used</label> <select
													class="form-control select2" placeholder="Technology Used">
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
										<div class="row col-md-12">
											<div class="col-md-4">
												<label>Project Time Period</label>
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input type="text" class="form-control pull-right"
														id="reservation" name="daterange"
														value="01/01/2018 - 01/15/2018" />
												</div>
											</div>
											<div class="col-md-8">
												<label>Project Description</label>
												<textarea class="form-control" rows="2"></textarea>
											</div>
										</div>
										<!--close- col-md-12 -->

										<!--open- col-md-12 -->
										<div class="row col-md-12">
											<div class="col-md-4"></div>
											<div class="col-md-4 text-center">
												<br>
												<!-- Button trigger modal -->
												<button type="button" class="btn btn-primary"
													data-toggle="modal" data-target="#exampleModal">
													Save</button>

												<!-- Modal -->
												<div class="modal fade" id="exampleModal" tabindex="-1"
													role="dialog" aria-labelledby="exampleModalLabel"
													aria-hidden="true">
													<div class="modal-dialog" role="document">
														<div class="modal-content">
															<div class="modal-header">
																<h5 class="modal-title" id="exampleModalLabel">Modal
																	title</h5>
																<button type="button" class="close" data-dismiss="modal"
																	aria-label="Close">
																	<span aria-hidden="true">&times;</span>
																</button>
															</div>
															<div class="modal-body">Successfully Saved</div>
															<div class="modal-footer">
																<button type="button" class="btn btn-secondary"
																	data-dismiss="modal">Close</button>
																<button type="button" class="btn btn-primary">Save
																	changes</button>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="col-md-4"></div>
										</div>
										<!--close- col-md-12 -->
									</div>
									<!--close- box box-default-->
								</div>
								<!--close- box-body"-->
							</div>
							<!--close- form-group-->
						</section>
						<!-- Project -->
					</div>
					<!-- /.tab-pane -->
				</div>
				<!-- /.tab-content -->
			</div>
			<!-- nav-tabs-custom -->
		</div>
	</div>
</div>
 --%>


<%@include file="footer.jsp"%>






