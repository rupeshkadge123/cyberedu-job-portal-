<%-- <%@include file="Adminheader.jsp"%>

<div class="content-wrapper">
	<div class="container">
		<div class="row col-md-12">
			<br>

			<!-- Custom Tabs -->
			<div class="nav-tabs-custom">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#tab_1" data-toggle="tab">Personal</a></li>
					
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="tab_1">
						<!-- profile -->
						<section class="Content">
							<div class="box box-default">
								<div class="box-body">
									<!---open- box body -->

									<!--open- col-md-12 -->
									<div class="row col-md-12">
										<div class="col-md-3 text-center">
											<label>Upload Photo</label>
											<center>
												<img src="dist/img/avatar5.png" width="120px" height="120px" />
											</center>
										</div>

										<div class="col-md-3">
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
														<li><a href="#">Ms</a></li>
														
													</ul>
												</span> <input type="text" class="form-control"
													placeholder="First name">
											</div>
										</div>
										<div class="col-md-3">
											<label>Middle name:</label> <input type="text"
												class="form-control" placeholder="Middle name">
										</div>
										<div class="col-md-3">
											<label>Last name:</label> <input type="text"
												class="form-control" placeholder="Last name"> <br>
										</div>


										<div class="col-md-6">
											<label>Address:</label> <input type="text"
												class="form-control" placeholder="Address">
										</div>
										<div class="col-md-3">
											<label>PIN:</label> <input type="text" class="form-control"
												placeholder="PIN"><br>
										</div>
									</div>
									<!--close- col-md-12 -->
									<!-- open-col-md-12 -->
									<div class="row col-md-12">
										<div class="col-md-4">
											<label>Country</label> <select class="form-control select2"
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
												style="width: 100%;">
												<option selected="selected">Alabama</option>
												<option>Alaska</option>
												<option>California</option>
												<option>Delaware</option>
												<option>Tennessee</option>
												<option>Texas</option>
												<option>Washington</option>
											</select><br>
										</div>
									</div>

									<!--close- col-md-12 -->


									<!--open- col-md-12 -->
									<div class="row col-md-12">
										<div class="col-md-4">
											<label>Email:</label> <input type="email"
												class="form-control" placeholder="Email"> <br>
										</div>
										<div class="col-md-4">
											<label>Primary mob:</label>
											<div class="input-group">
												<div class="input-group-addon">
													<i class="fa fa-phone"></i>
												</div>
												<input type="text" class="form-control"
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
													data-inputmask='"mask": "(999) 999-9999"' data-mask>
											</div>
										</div>
									</div>
									<!--close- col-md-12 -->
									<!--open- col-md-12 -->
									<div class="row col-md-12">
										<div class="col-md-4"></div>
										<div class="col-md-4 text-center">
											<a href="#">
												<button type="button" class="btn btn-block btn btn-primary btn-flat margin">Save
													Changes</button>
											</a> 
										</div>
										<div class="col-md-4"></div>
									</div>
									<!--close- col-md-12 -->
								</div>
								<!--close- box body -->
							</div>
							<!--close- box box-default -->

						</section>
					</div>
					</div>
					</div>
					</div>
					</div>
<%@include file="footer.jsp"%> --%>