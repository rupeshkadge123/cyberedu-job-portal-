
<%@ include file="admHeader.jsp"%>

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






