<%@include file="admHeader.jsp"%>
<div class="content-wrapper">
	<div class="container">
		<div class="row col-md-12">
			<br>

			<!-- Custom Tabs -->
			<div class="nav-tabs-custom">
				<ul class="nav nav-tabs">

					<li class="active"><a href="admRecurters.jsp">List of
							Companies</a></li>
					<li><a href="postJob.jsp">Recruiters Entry </a></li>

				</ul>
				<div class="tab-pane" id="tab_2">
					<div class="tab-content">
						<div class="tab-pane active">
							<!-- profile -->
							<section class="Content">
								<div class="box box-default">

									<!-- /.box-header -->
									<form action="admlistedjob" method="post">
										<div class="box-body">
											<sql:query dataSource="${webappDataSource}" var="result">
						          select * from listedjob;
				          		</sql:query>
											<table id="example"
												class="table table-bordered table-striped">

												<thead>
													<tr>
														<th>Job Title</th>
														<th>Company Name</th>
														<th>skill</th>
														<th>Experience</th>
														<th>Vaccancies</th>
														<th></th>
													</tr>
												</thead>
												<c:forEach var="row1" items="${result.rows}">
													<tbody>
														<tr>
															<td>${row1.jtitle}</td>
															<td>${row1.cname}</td>
															<td>${row1.skill}</td>
															<td>${row1.experience}</td>
															<td>${row1.vaccancies}</td>


															<td><button type="submit" value="${row1.jobid}"
																	name="jid" class="btn btn-block btn-success btn-sm">

																	Allow</button></td>
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
								<!--close- box body -->

								<!--close- box box-default -->

							</section>


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






