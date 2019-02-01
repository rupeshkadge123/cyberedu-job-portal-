<%@include file="admHeader.jsp"%>
<div class="content-wrapper">
	<div class="container">
		<div class="row col-md-12">
			<br>

			<!-- Custom Tabs -->
			<div class="nav-tabs-custom">
				<ul class="nav nav-tabs">

					<li><a href="admRecurters.jsp">List of Companies</a></li>
					<li class="active"><a href="postJob.jsp">Recruiters Entry</a></li>

				</ul>
				<div class="tab-pane" id="tab_2">
					<div class="tab-content">
						<div class="tab-pane active">
							<!-- profile -->
							<section class="content">
								<div class="box box-default">
									<div class="box-header">
										<h3 class="box-title">Currently Available Jobs</h3>
									</div>
									<form action="postjob" method="post">





										<!-- /.box-header -->
										<div class="box-body">
											<div class="form-group">
												<div class="col-md-6 ">

													<div class="form-group has-feedback">
														<label>Job Title:</label><input type="text"
															class="form-control" name="jobtitle">
													</div>
												</div>

												<div class="row col-md-12">
													<div class="col-md-8">
														<label>Company Name</label>
														<div class="form-group has-feedback">
															<input type="text" class="form-control"
																name="companyname">
														</div>
													</div>
													<div class="col-md-4">
														<label>Vaccanies</label>
														<div class="form-group has-feedback">
															<input type="text" class="form-control" name="Vaccanies">
														</div>
													</div>
												</div>

												<div class="row col-md-12">
													<div class="col-md-6">
														<label>Job Description</label>
														<div class="form-group has-feedback">
															<textarea class="form-control" rows="5"
																placeholder="Enter ..." name="jobdesc"></textarea>
														</div>
													</div>

													<div class="col-md-6">
														<label>Hiring Process</label>
														<div class="form-group has-feedback">
															<textarea class="form-control" rows="5"
																placeholder="Enter ..." name="hiring"></textarea>
														</div>
													</div>
												</div>


												<div class="row col-md-12">
													<div class="col-md-4">
														<label>Technical Skill</label>
														<div class="form-group has-feedback">
															<input type="text" class="form-control" name="technical">
														</div>
													</div>

													<div class="col-md-4">
														<label>Job Location</label> <select
															class="form-control select2" name="joblocation">
															<option>Select</option>
															<option>Chennai</option>
															<option>Banglore</option>
															<option>Hydrabad</option>
															<option>Delhi</option>
															<option>Mumbai</option>
															<option>Pune</option>
															<option>Nashik</option>
														</select><br>
													</div>
												</div>
												<div class="row col-md-12">
													<div class="col-md-4">
														<label>Criteria</label>
														<div class="form-group has-feedback">
															<input type="text" class="form-control" name="criteria">
														</div>
													</div>
													<div class="col-md-4">
														<label>Qualification</label>
														<div class="form-group has-feedback">
															<input type="text" class="form-control"
																name="Qualification">
														</div>
													</div>
													<div class="col-md-4">
														<label>Experience</label> <select
															class="form-control select2" name="experience">
															<option>Select</option>
															<option>Fresher</option>
															<option>Exp 1-4 year</option>
															<option>Exp 5-9 year</option>
															<option>Exp 10 above</option>

														</select><br>
													</div>

												</div>



												<div class="row col-md-12">
													<div class="col-md-6">
														<label>Package</label>
														<div class="form-group has-feedback">
															<input type="text" class="form-control" name="Package">
														</div>
													</div>
													<div class="col-md-6">
														<label>Bond</label>
														<div class="form-group has-feedback">
															<input type="text" class="form-control" name="bond">
														</div>
													</div>
												</div>

												<div class="row col-md-12">
													<div class="col-md-4">
														<label>Venue</label>
														<div class="form-group has-feedback">
															<input type="text" class="form-control" name="Venue">
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
																	id="datepicker" name="interviewdate">
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
																	id="datepicker" name="deadline">
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
																placeholder="Enter ..." name="necessdoc"></textarea>
														</div>
													</div>

													<div class="col-md-6">
														<label>Contact</label>
														<div class="form-group has-feedback">
															<textarea class="form-control" rows="5"
																placeholder="Enter ..." name="contact"></textarea>
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
														<button type="submit"
															class="btn btn-block btn-primary btn-lg">Apply</button>
													</div>
												</div>
											</div>
											<!-- form-froup -->
										</div>
										<!--box-body  -->

										<!--box box-default  -->
									</form>
								</div>
								<!--container  -->

							</section>
							<!-- content -->






						</div>
						<!-- /.tab-pane -->
					</div>






				</div>
				<!-- /.tab-content -->
			</div>
			<!-- nav-tabs-custom -->
		</div>
	</div>
</div>



<%@include file="footer.jsp"%>


