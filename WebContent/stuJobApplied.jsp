<%@include file="header.jsp"%>

<div class="content-wrapper">
	<div class="container">
		<div class="row col-md-12">
		<!-- Custom Tabs -->
				<br>
			<div class="nav-tabs-custom">
				<ul class="nav nav-tabs">
				
					<li><a href="stuJob.jsp">Listed</a></li>
					<li class="active"><a href="stuJobApplied.jsp">Applied</a></li>
					<li><a href="stuJobCallLetter.jsp">Call Letter</a></li>
					<li><a href="stuJobRecruters.jsp">Recruiters</a></li>
				</ul>
				<div class="tab-pane" id="tab_2">
				<div class="tab-content">
					<div class="tab-pane active">
						<!-- profile -->
						<section class="Content">
							<div class="box box-default">
								<div class="box-header">
									<h3 class="box-title">Currently Available Jobs</h3>
								</div>
								<!-- /.box-header -->
								<sql:query dataSource="${webappDataSource}" var="result">
						select stu.firstname,stu.lastname,stu.email,ap.cname,ap.appliedjobid,
						ap.jtitle,ap.experience,ap.skill
                        FROM cyberedu.studregistration stu , cyberedu.appliedjob ap where 
                        stu.userid=<%=useridheder%> and ap.userid =<%=useridheder%>;
				          		</sql:query>
									<form action="StuAppliedJobde" method="post">
								<div class="box-body">
									<table id="example1" class="table table-bordered table-striped">
										<thead>
											<tr>
												<th>First Name</th>
												<th>Last Name</th>
												<th>Email</th>
												<th>Company Name</th>
												<th>Job Title</th>
												<th>Experience</th>
												<th>Skill</th>
												<th></th>
											</tr>
										</thead>
										<c:forEach var="row" items="${result.rows}">
											<tbody>
												<tr>
													<td>${row.firstname}</td>
													<td>${row.lastname}</td>
													<td>${row.email}</td>
													<td>${row.cname}</td>
													<td>${row.jtitle}</td>
													<td>${row.experience}</td>
													<td>${row.skill}  </td>
													
													<td>
														<button type="submit" 
															value="${row.appliedjobid}" name="idjob" class="btn btn-block btn-danger btn-sm">
															<i class="fa  fa-trash-o"></i>
														</button>

													</td>
												</tr>

											</tbody>
											</c:forEach>
											
									</table>
								</div>
								<!-- /.box-body -->
								
								</form>
								

								<!-- /.box -->
								<!---open- box body -->


							</div>
						
							<!--close- box box-default -->

						</section>
					</div>
					<!-- /.tab-pane -->

				</div>
				<!-- /.tab-content -->
				</div>
			</div>
			<!-- nav-tabs-custom -->
		</div>
	</div>
</div>



<%@include file="Stufooter.jsp"%>






