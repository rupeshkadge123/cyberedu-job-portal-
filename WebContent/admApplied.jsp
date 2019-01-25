<%@ include file="admHeader.jsp"%>

<div class="content-wrapper">
	<div class="container">
		<div class="row col-md-12">
			<br>

			<!-- Custom Tabs -->
			<div class="nav-tabs-custom">
				<ul class="nav nav-tabs">
					<li><a href="admListedCompany.jsp">listed job</a></li>
			<li class="active"><a href="admOccupied.jsp">Applied job</a></li>
		


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
						          select * from studexperience;
				          		</sql:query>
									
									<div class="box-body">
										<table id="example1"
											class="table table-bordered table-striped">
											<thead>
												<tr>
												    <th>experienceid</th>
													<th>jobtitle</th>
													<th>company name</th>
													<th>company domain</th>
													<th>skill</th>
													<th>Experience</th>
												


													<th></th>
												</tr>
											</thead>
											<c:forEach var="row" items="${result.rows}">
												
												<tbody>
													<tr>
										                 
														<td>${row.expid}</td>
														<td>${row.jobtitle}</td>
														<td>${row.companyname}</td>
                                                        <td>${row.companydomain}</td>
                                                        <td>${row.skill}</td>
														<td>${row.yearofexperience}</td>
													
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
					</div>






				</div>
				<!-- /.tab-content -->
			</div>
			<!-- nav-tabs-custom -->
		</div>
	</div>
</div>



<%@include file="footer.jsp"%>






