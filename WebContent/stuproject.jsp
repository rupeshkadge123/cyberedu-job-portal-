
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
					<li><a href="stuexperience.jsp">Experience</a></li>
					<li class="active"><a href="stuproject.jsp">Project</a></li>
				</ul>

	<div class="tab-pane" id="tab_4">
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









