
<%@ include file="admHeader.jsp"%>

<div class="content-wrapper">
	<div class="container">
		<div class="row col-md-12">
			<br>

			<!-- Custom Tabs -->
			<div class="nav-tabs-custom">
				<ul class="nav nav-tabs">
					<li class="active"><a>Student</a></li>




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
									<form action="admedit" method="post">
									<sql:query dataSource="${webappDataSource}" var="result">
						    
		      select studpersonal.userid,studexperience.expid,studpersonal.firstname, studpersonal.middlename, studpersonal.lastname, studpersonal.email,
						       studexperience.skill,studexperience.yearofexperience,studexperience.jobtitle 
						       from studpersonal  join studexperience where studpersonal.userid=studexperience.userid;   
								 </sql:query>


									<div class="box-body">
										
										<table id="example1"
											class="table table-bordered table-striped">
							
							
											
											<thead>
												<tr>
													<th>student id</th>
													<th>student name</th>
													<th>Email</th>
													<th>skill</th>
													<th>Experience</th>
													<th>status</th>

													<th>edit</th>
												</tr>
											</thead>
											<c:forEach  var="row" items="${result.rows}">
												
												<tbody>
													<tr>
														<td>${row.userid}</td>
														<td>${row.firstname} ${row.middlename} ${row.lastname}</td>
														<td>${row.email}</td>
														<td>${row.skill}</td>
														<td>${row.yearofexperience}</td>
														<td>${row.jobtitle}</td>
														 <input type="hidden" value="${row.userid}" name="userid" >
														 <input type="hidden" value="${row.expid}" name="expid" > 
														 														
														
														
														<td>
                                                          
															<div class="col-xs-10">
																
																<button type="submit"
																		class="btn btn-block btn btn-xs btn-primary btn-flat"
																		data-toggle="modal" data-target="#exampleModal">
																		edit</button>
																
															</div>
														</td>
													</tr>
													<tr>
												</tbody>
												
											</c:forEach>


										</table>
										</div>
										</form>
									</div>
									<!-- /.box-body -->
									
									<!-- /.box -->
									<!---open- box body -->

								
								
								
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






