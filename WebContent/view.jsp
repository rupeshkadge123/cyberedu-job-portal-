<%@include file="header.jsp"%>

<%-- --%>
<div class="content-wrapper">
	<div class="container">
		<div class="row col-md-12">
			<br>

			<!-- Custom Tabs -->
			<div class="nav-tabs-custom">
				<ul class="nav nav-tabs">

					<li><a href="admRecurters.jsp">Admin recurters</a></li>
					<li class="active"><a href="postJob.jsp">Student</a></li>

				</ul>
				<div class="tab-pane" id="tab_2">
					<div class="tab-content">
						<div class="tab-pane active">
							<!-- profile -->
							<section class="content">
								<form action="AppliedJob" method="post">
									<div class="container">

										<div class="box box-default">

											<center>
												<h3 class="box-title">Job Opening</h3>
											</center>

											<!-- /.box-header -->
											<div class="box-body">
												<div class="form-group">

													<sql:query dataSource="${webappDataSource}" var="result1">
							select * from listedjob where jobid=<%=request.getAttribute("jobid")%>; 
							<%
														System.out.println(request.getAttribute("jobid"));
								
							      session.setAttribute("jobid", request.getAttribute("jobid"));
													%>
													</sql:query>
													<c:forEach var="row1" begin="0" end="0"
														items="${result1.rows}">
														<div class="col-md-6 ">

															<div class="form-group has-feedback">
																<label>Job Title:</label><input type="text"
																	class="form-control" value="${row1.jtitle }"
																	name="jobtitle" readonly="readonly">
															</div>
														</div>
														<div class="row col-md-12">
															<div class="col-md-8">
																<label>Company Name</label>
																<div class="form-group has-feedback">
																	<input type="text" class="form-control"
																		value="${row1.cname }" name="companyname"
																		readonly="readonly">
																</div>
															</div>
															<div class="col-md-4">
																<label>Vaccanies</label>
																<div class="form-group has-feedback">
																	<input type="text" class="form-control"
																		value="${row1.vaccancies }" name="Vaccanies"
																		readonly="readonly">
																</div>
															</div>
														</div>

														<div class="row col-md-12">
															<div class="col-md-6">
																<label>Job Description</label>
																<div class="form-group has-feedback">
																	<textarea class="form-control" rows="5"
																		placeholder="${row1.jdesc }" name="jobdesc"
																		readonly="readonly"></textarea>
																</div>
															</div>

															<div class="col-md-6">
																<label>Hiring Process</label>
																<div class="form-group has-feedback">
																	<textarea class="form-control" rows="5"
																		placeholder="${row1.hprocess }" name="hiring"
																		readonly="readonly"></textarea>
																</div>
															</div>
														</div>


														<div class="row col-md-12">
															<div class="col-md-4">
																<label>Technical Skill</label>
																<div class="form-group has-feedback">
																	<input type="text" class="form-control"
																		value="${row1.skill}" readonly="readonly"
																		name="technical">
																</div>
															</div>

															<div class="col-md-4">
																<label>Job Location</label> <select
																	class="form-control select2" readonly="readonly"
																	name="joblocation">
																	<option>${row1.jlocation }</option>
																	
																</select><br>
															</div>
														</div>
														<div class="row col-md-12">
															<div class="col-md-4">
																<label>Criteria</label>
																<div class="form-group has-feedback">
																	<input type="text" class="form-control"
																		value="${row1.criteria }" readonly="readonly"
																		name="criteria">
																</div>
															</div>
															<div class="col-md-4">
																<label>Qualification</label>
																<div class="form-group has-feedback">
																	<input type="text" class="form-control"
																		value="${row1.qualification}" readonly="readonly"
																		name="Qualification">
																</div>
															</div>
															<div class="col-md-4">
																<label>Experience</label> <select
																	class="form-control select2" readonly="readonly"
																	name="experience">
																	<option>${row1.experience}</option>
																	

																</select><br>
															</div>

														</div>



														<div class="row col-md-12">
															<div class="col-md-6">
																<label>Package</label>
																<div class="form-group has-feedback">
																	<input type="text" class="form-control"
																		readonly="readonly" name="Package">
																</div>
															</div>
															<div class="col-md-6">
																<label>Bond</label>
																<div class="form-group has-feedback">
																	<input type="text" value="${row1.bond }"
																		class="form-control" readonly="readonly" name="bond">
																</div>
															</div>
														</div>

														<div class="row col-md-12">
															<div class="col-md-4">
																<label>Venue</label>
																<div class="form-group has-feedback">
																	<input type="text" value="${row1.venue}"
																		class="form-control" readonly="readonly" name="Venue">
																</div>
															</div>
															<div class="col-md-4">
																<div class="form-group">
																	<label>Interview Date</label>

																	<div class="input-group date">
																		<div class="input-group-addon">
																			<i class="fa fa-calendar"></i>
																		</div>
																		<input type="date" class="form-control pull-right"
																			id="datepicker" value="${row1.interviewdate}"
																			readonly="readonly" name="interviewdate">
																	</div>
																	<!-- /.input group -->
																</div>
															</div>
															<div class="col-md-4">
																<div class="form-group">
																	<label>Deadline To Apply</label>

																	<div class="input-group">
																		<div class="input-group-addon">
																			<i class="fa fa-calendar"></i>
																		</div>
																		<input type="date" class="form-control pull-right"
																			id="datepicker" value="${row1.dtapply }"
																			name="deadline" readonly="readonly">
																	</div>
																	<!-- /.input group -->
																</div>
															</div>
														</div>
														<div class="row col-md-12">
															<div class="col-md-6">
																<label>Necessary Documents</label>
																<div class="form-group has-feedback">
																	<textarea class="form-control" rows="5"
																		placeholder="${row1.ndocument }" name="necessdoc"
																		readonly="readonly"></textarea>
																</div>
															</div>

															<div class="col-md-6">
																<label>Contact</label>
																<div class="form-group has-feedback">
																	<textarea class="form-control" rows="5"
																		placeholder="${row1.contact }" name="contact"
																		readonly="readonly"></textarea>
																</div>
															</div>
														</div>
														<div class="col-md-12">
															<div class="col-md-4"></div>
															<div class="col-md-4">
																<a href="stuJob.jsp">
																	<button type="button"
																		class="btn btn-block btn-primary btn-lg">Close</button>
																</a>
															</div>

															<div class="col-md-4">
																<button type="button"
																	class="btn btn-info btn btn-block btn-primary btn-lg"
																	data-toggle="modal" data-target="#modal-info">
																	Apply</button>
																<div class="modal modal-info fade" id="modal-info">
																	<div class="modal-dialog">
																		<div class="modal-content">
																			<div class="modal-header">
																				<button type="button" class="close"
																					data-dismiss="modal" aria-label="Close">
																					<span aria-hidden="true">&times;</span>
																				</button>
																				<h4 class="modal-title"><b>Cyber</b>droid</h4>
																			</div>
																			<div class="modal-body">
																				<p>You have Successfully applied for ${row1.cname}. &hellip;</p>
																			</div>
																			<div class="modal-footer">
																				<button type="button"
																					class="btn btn-outline pull-left"
																					data-dismiss="modal">Close</button>
																				<button type="Submit" class="btn btn-outline">Apply</button>
																			</div>
																		</div>
																		<!-- /.modal-content -->
																	</div>
																	<!-- /.modal-dialog -->
																</div>
																<!-- /.modal -->
															</div>
														</div>
													</c:forEach>
												</div>
												<!-- form-froup -->
											</div>
											<!--box-body  -->
										</div>
										<!--box box-default  -->
									</div>
									<!--container  -->
								</form>
							</section>
							<!-- content -->




							<!-- jQuery 3 -->
							<script src="bower_components/jquery/dist/jquery.min.js"></script>
							<!-- Bootstrap 3.3.7 -->
							<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
							<!-- iCheck -->
							<script src="plugins/iCheck/icheck.min.js"></script>
							<script>
								$(function() {
									$('input')
											.iCheck(
													{
														checkboxClass : 'icheckbox_square-blue',
														radioClass : 'iradio_square-blue',
														increaseArea : '20%' /* optional */
													});
								});
							</script>

						</div>
						<!-- /.tab-pane active -->
					</div>
							<!-- tab-content -->
				</div>
				<!-- tab-pane -->
			</div>
			<!-- nav-tabs-custom -->
		</div><!-- row col-md-12 -->
	</div><!-- container -->
</div><!-- content-wrapper -->
<%@include file="Stufooter.jsp"%>
