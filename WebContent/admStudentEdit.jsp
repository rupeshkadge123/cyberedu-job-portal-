
<%@ include file="admHeader.jsp"%>

<div class="content-wrapper">
	<div class="container">
		<div class="row col-md-12">
			<br>

			<!-- Custom Tabs -->
			<div class="nav-tabs-custom">

				<ul class="nav nav-tabs">
					<li><a href="admStudent.jsp">Student</a></li>
					<li class="active"><a href="admStudentEdit.jsp">Update
							Details</a></li>
				</ul>
				<div class="tab-pane" id="tab_2">

					<div class="tab-content">
						<div class="tab-pane active">
							<!-- <form action="Personal" method="post"> -->
							<%
								String userid = (String) session.getAttribute("userid");
								String expid = (String) session.getAttribute("expid");
								System.out.println("value " + userid);
								System.out.println("value " + expid);
							%>

<!--*****************************************************************************************************************************************************  -->
							<sql:query dataSource="${webappDataSource}" var="result">
						          select * from studpersonal where userid=<%=userid%>;
				          		</sql:query>
							<form action="admpersonaledit" method="post">
								<div class="box-body">
									<c:forEach var="row" items="${result.rows}">
										<div class="row col-md-12">
											<div class="col-md-4">
												<label>First name:</label>
												<div class="input-group">
													<span class="input-group-btn">
														<button type="button" class="btn btn-default">Mr</button>
														<button type="button"
															class="btn btn-default dropdown-toggle"
															data-toggle="dropdown">
															<span class="caret"></span> <span class="sr-only">Toggle
																Dropdown</span>
														</button>
														<ul class="dropdown-menu" role="menu">
															<li><a href="#">Mr</a></li>
															<li class="divider"></li>
															<li><a href="#">Ms</a></li>
														</ul>
													</span> <input type="text" class="form-control"
														value="${row.firstname}" name="fname">

												</div>
											</div>
											<div class="col-md-4">
												<label>Middle name:</label> <input type="text"
													class="form-control" value="${row.middlename }"
													name="mname">
											</div>
											<div class="col-md-4">
												<label>Last name:</label> <input type="text"
													class="form-control" value="${row.lastname}" name="lname">
												<br>
											</div>

											<div class="col-md-8">
												<label>Address:</label> <input type="text"
													class="form-control" value="${row.address}" name="add">
											</div>
											<div class="col-md-4">
												<label>PIN:</label> <input type="text" class="form-control"
													value="${row.pin}" name="pin"><br>
											</div>
										</div>

										<div class="row col-md-12">

											<div class="col-md-4">
												<label>Country</label> <select class="form-control select2"
													placeholder="${row.country}" name="country"
													style="width: 100%;">
													<option selected="selected">Alabama</option>
													<option>Alaska</option>
													<option>California</option>
													<option>Delaware</option>
													<option>Tennessee</option>
													<option>Texas</option>
													<option>Washington</option>
												</select>

											</div>
											<div class="col-md-4">
												<label>State</label> <select class="form-control select2"
													name="state" placeholder="${row.State}"
													style="width: 100%;">
													<option selected="selected">Alabama</option>
													<option>Alaska</option>
													<option>California</option>
													<option>Delaware</option>
													<option>Tennessee</option>
													<option>Texas</option>
													<option>Washington</option>
												</select>
											</div>
											<div class="col-md-4">
												<label>City</label> <select class="form-control select2"
													name="city" placeholder="${row.City}" style="width: 100%;">
													<option selected="selected">Alabama</option>
													<option>Alaska</option>
													<option>California</option>
													<option>Delaware</option>
													<option>Tennessee</option>
													<option>Texas</option>
													<option>Washington</option>
												</select>
											</div>

										</div>

										<div class="row col-md-12">
											<div class="col-md-4">
												<label>Email:</label> <input type="email"
													class="form-control" value="${row.email}" name="email">
												<br>
											</div>
											<div class="col-md-4">
												<label>Primary mob:</label>
												<div class="input-group">
													<div class="input-group-addon">
														<i class="fa fa-phone"></i>
													</div>
													<input type="text" class="form-control"
														value="${row.primarymobileno}" name="pmobile"
														data-inputmask='"mask": "(999) 999-9999"' data-mask>
												</div>
											</div>
											<div class="col-md-4">
												<label>Secondary mob:</label>

												<div class="input-group">
													<div class="input-group-addon">
														<i class="fa fa-phone"></i>
													</div>
													<input type="text" class="form-control"
														value="${row.secondarymobileno}" name="smobile"
														data-inputmask='"mask": "(999) 999-9999"' data-mask>
												</div>
											</div>

										</div>
										<label> </label>

										<div class="col-md-4"></div>

										<div class="col-md-4">
											<button type="submit"
												class="btn btn-block btn btn-primary btn-flat margin">Save
												Changes</button>
										</div>
										<div class="col-md-4"></div>
									</c:forEach>
								</div><!--Close Box-Body of Personal  -->
							</form>
							<!-- </form> -->
<!--*******************************************************************************************************************************************************  -->
							<section class="content">
								<div class="box box-default">
									<!-- /.box-header -->
									<div class="box-body">
										<div class="form-group">
											<form action="admeducation" method="post">
												<div class="row col-md-12">
													<sql:query dataSource="${webappDataSource}" var="result">
						          select * from studeducational where userid=<%=userid%>;
				          		</sql:query>
													<c:forEach begin="0" end="0" var="row"
														items="${result.rows}">
														<!--open- row col-md-12 -->
														<div class="col-md-3">

															<label>Highest Education </label>
															<div class="form-group has-feedback" >

																<select class="form-control select2" name="highesteducation">
																	<option>${row.highesteducation}</option>
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
																<input type="text" value="${row.university}"
																	class="form-control" name="university">
																<input type="hidden" value="${row.eduid}" name="eduid">
															</div>
														</div>

														<div class="col-md-2">
															<label>Passing year</label> <select
																class="form-control select2" name="passingyear">

																<option>${row.Passingyear}</option>
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
																<input type="text" value="${row.grade}"
																	class="form-control" name="grade">
															</div>
														</div>
														<div class="col-md-2">
															<br>
															<button type="submit"
																class="btn btn-block btn btn-primary btn-flat margin">save
																edit</button>
														</div>
													</c:forEach>


												</div>
												<!--row col-12  -->
											</form>
										</div>
										<!--close form  -->
									</div>
									<!--box- body  -->
									

									<!-- /.box-header -->
									<div class="box-body">
										<div class="box-header"></div>
										<form action="Education123" method="post">
											<sql:query dataSource="${webappDataSource}" var="result">
						          select * from studeducational where userid=<%=userid%>;
				          		</sql:query>

											<table id="example"
												class="table table-bordered table-striped">
												<thead>
													<tr>
														<th>Highest Education</th>
														<th>University</th>
														<th>Passing Year</th>
														<th>Grade</th>
														<th>Remove</th>
													</tr>
												</thead>
												<c:forEach var="row" items="${result.rows}">
													<tbody>
														<tr>
															<td>${row.highesteducation}</td>
															<td>${row.university}</td>
															<td>${row.passingyear}</td>
															<td>${row.grade}</td>
															<input type="hidden" value="${row.eduid}" name="eduid">
															<td><button type="submit"
																	class="btn btn-block btn-danger btn-sm">
																	<i class="fa  fa-trash-o"></i>
																</button></td>
														</tr>

													</tbody>
												</c:forEach>

											</table>
										</form>
									</div><!--box-body  -->

								</div>
								<!-- Close box box-default -->
							</section><!--content  -->

<!--  ************************************************************************************************************************-->

							<section class="content">
								<div class="box box-default">
									<div class="box-body">
										<div class="form-group">
											<form action="Experience1" method="post">
												<sql:query dataSource="${webappDataSource}" var="result2">
						          select * from studexperience where userid=<%=userid%>;
				          		</sql:query>
												<c:forEach begin="0" end="0" var="row"
													items="${result2.rows}">
													<div class="row col-md-12" >

														
															<div class="col-md-4">

																<label>Job Title</label> <input type="text"
																	class="form-control" value="${row.jobtitle}" name="jobtitle">

															</div>

															<div class="col-md-4">
																<label>Company Name</label> <input type="text"
																	class="form-control" value="${row.companyname}" name="companyname">

															</div>

															<div class="col-md-4">
																<label>Company Domain</label> <input type="text"
																	class="form-control" value="${row.companydomain}" name="companydomain">

															</div>
														
														<!--close- col-md-12 -->

														<!--open- col-md-12 -->
														<div class="row col-md-12">

															<div class="col-md-4">
																<label>Year of Experience</label> <select
																	class="form-control select2" name="yearofexperience">
																	<option>${row.YearofExperience}</option>
																	<option>Exp 1-3 year</option>
																	<option>Exp 4-6 year</option>
																	<option>Exp 7-7 year</option>
																	<option>Exp 8-11 year</option>
																	<option>Exp 12-15 year</option>
																	<option>Above 15 year</option>
																	<input type="hidden" value="${row.expid}" name="expid">
																</select>

															</div>

															<div class="col-md-4">
																<label>CTC of Current Company </label> <select
																	class="form-control select2" name="ctcofcurrentcompany">
																	<option>${row.ctcofcurrentCompany}</option>
																	<option>1-2 LPA</option>
																	<option>3-5 LPA</option>
																	<option>6-8 LPA</option>
																	<option>9-12 LPA</option>
																	<option>Above 12 LPA</option>

																</select>

															</div>
															<div class="col-md-4">

																<label>joining Date:</label>

																<div class="input-group">
																	<div class="input-group-addon">
																		<i class="fa fa-calendar"></i>
																	</div>

																	<input type="date" class="form-control pull-right"
																		id="datepicker" name="joiningdate"
																		value="${row.joiningdate }" />
																</div>
																<!-- /.input group -->

															</div>
														</div>
														<!--close- col-md-12 -->

														<!--open- col-md-12 -->
														<div class="row col-md-12">

															<div class="col-md-4">
																<label>Technology Used</label> <select
																	class="form-control select2" name="technology">
																	<option>${row.technology}</option>
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

															<div class="col-md-8">
																<label>Project</label>
																<textarea class="form-control" rows="2"
																	placeholder="${row.project}" name="project"></textarea>
															</div>
														</div>
														<!--close- col-md-12 -->

														<!--open- col-md-12 -->
														<div class="row col-md-12">
															<div class="col-md-4"></div>
															<div class="col-md-4">
																<br>
																<button type="submit"
																	class="btn btn-block btn btn-primary btn-flat margin">
																	Save</button>
																<br>
															</div>
															<div class="col-md-4"></div>
														</div>
													</div><!--row col-md-12  -->
												</c:forEach>
											</form>

											<form action="experience123" method="post">
												<sql:query dataSource="${webappDataSource}" var="result1">
						          select * from studexperience where userid=<%=userid%> ;
				          		</sql:query>
												<div class="box-body">
													<div class="box-header"></div>
													<table id="example"
														class="table table-bordered table-striped">
														<thead>
															<tr>
																<th>Job Title</th>
																<th>Company Name</th>
																<th>Company Domain</th>
																<th>Year of Experience</th>
																<th>CTC of Current Company</th>
																<th>joining Date</th>
																<th>Technology Used</th>
																<th>Project</th>
																<th>skill</th>
																<th>Remove</th>

															</tr>
														</thead>
														<c:forEach var="row1" items="${result1.rows}">
															<tbody>
																<tr>
																	<td>${row1.jobtitle}</td>
																	<td>${row1.companyname}</td>
																	<td>${row1.companydomain}</td>
																	<td>${row1.yearofexperience}</td>
																	<td>${row1.ctcofcurrentcompany}</td>
																	<td>${row1.joiningdate}</td>
																	<td>${row1.technology}</td>
																	<td>${row1.project}</td>
																	<td>${row1.skill}</td>
																	<input type="hidden" value="${row1.expid}" name="expid">
																	<td><button type="submit"
																			class="btn btn-block btn-danger btn-sm">
																			<i class="fa  fa-trash-o"></i>
																		</button></td>
																</tr>
															</tbody>
														</c:forEach>

													</table>
												</div>
											</form>
										</div>
										<!--close- form-group -->
									</div>
									<!--close- box-body-->
								</div><!--box box-default  -->
							</section>
<!--************************************************************************************************************************************************************  -->
							<!-- Experieance -->
							<section class="content">
								<div class="box box-default">
									<div class="box-body">
										<div class="form-group">
											<form action="Project1" method="post">
												<sql:query dataSource="${webappDataSource}" var="result2">
						          select * from studproject where useid=<%=userid%>;
				          		</sql:query>
												<c:forEach begin="0" end="0" var="row2"
													items="${result2.rows}">
													<div class="row col-md-12">
														<div class="col-md-6">
															<label>Project Title</label> <input type="text"
																class="form-control" value="${row2.projecttitle}"
																name="ptitle">
														</div>

														<div class="col-md-6">
															<label>Domain</label> <input type="text"
																class="form-control" value="${row2.domain}"
																name="domain">
														</div>
													
														<div class="col-md-6">
															<label>Role</label> <input type="text"
																class="form-control" placeholder="${row2.role}" name="role">
														</div>
														<div class="col-md-6">
															<label>Technology Used</label> <select
																class="form-control select2" name="techused">
																<option>${row2.technologyused}</option>
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
													
														<div class="col-md-4">
															<div class="form-group">
																<label>Project Duration:</label>

																<div class="input-group date">
																	<div class="input-group-addon">
																		<i class="fa fa-calendar"></i>
																	</div>
																	<input type="date" class="form-control pull-right"
																		value="${row2.ptime}" name="ptime">
																	<input type="hidden" value="${row2.proid}" name="proid">
																</div>
																<!-- /.input group -->


															</div>

														</div>
														<div class="col-md-8">
															<label>Project</label>

															<textarea class="form-control" rows="2" name="pdesc"
																placeholder="${row2.projectdesc}" name="projectdesc"></textarea>
															<br>

														</div>
													
														<div class=col-md-4></div>
														<div class="col-md-4">
															<button type="submit"
																class="btn btn-block btn btn-primary btn-flat margin">
																Save</button>
															<br>
														</div>

														<div class=col-md-4></div>

													</div>

													<br></br>
												</c:forEach>
											</form>

											<div class="box-body">
										<div class="box-header"></div>
										<form action="project123" method="post">
											<sql:query dataSource="${webappDataSource}" var="result">
						          select * from studproject where useid=<%=userid%>;
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
																<input type="hidden" value="${row2.proid}" name="proid">
																<td><button type="submit"
																		class="btn btn-block btn-danger btn-sm">
																		<i class="fa  fa-trash-o"></i>
																	</button></td>
															</tr>
														</tbody>
													</c:forEach>
												</table>
											</form>
											</div>
											
											<!--open- col-md-12 -->
											<div class="row col-md-12">
												<div class="col-md-4"></div>
												<div class="col-md-4 text-center">
													<br> <br>
													<!-- Button trigger modal -->
													<a href="admStudent.jsp">
													<button type="button"
														class="btn btn-block btn btn-primary btn-flat"
														data-toggle="modal" data-target="#exampleModal">Save
														all changes</button></a>


													<!-- Modal -->
													<div class="modal fade" id="exampleModal" tabindex="-1"
														role="dialog" aria-labelledby="exampleModalLabel"
														aria-hidden="true">
														<div class="modal-dialog" role="document">
															<div class="modal-content">
										
																<div class="modal-header">
																	<h5 class="modal-title" id="exampleModalLabel">Modal
																		title</h5>
																	<button type="button" class="close"
																		data-dismiss="modal" aria-label="Close">
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
												
											</div>
											<!--close- row col-md-12 -->

										</div><!--form-group  -->
									</div><!--box-body  -->
								</div><!--box box-default  -->
							</section><!-- content -->
						</div><!--Close tab-pane active  -->
					</div><!--Close tab-content  -->			
				</div><!--Close tab-pane 2  -->
				
			</div><!--clase Nav-tab-custom  -->
			
		</div><!--Close row col-md-12  -->
	</div><!--close Container  -->
</div><!--close content-Wrapper  -->

<%@include file="footer.jsp"%>





