<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!-- main content start here -->
<div class="main-content">
	<div class="main-content-inner">
		<div class="breadcrumbs ace-save-state breadcrumbs-fixed"
			id="breadcrumbs">
			<ul class="breadcrumb">
				<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">Home</a>
				</li>

				<li><a href="#">Menu</a></li>
				<li class="active">Post Project</li>
			</ul>
		</div>

		<div class="page-content">
			<div class="fullpage">
				<!-- full page div start here -->
				<div class="page-header">
					<h1>
						Menu <small> <i class="ace-icon fa fa-angle-double-right"></i>
							Quick Post
						</small>
					</h1>
				</div>
				<!-- /.page-header -->

				<div class="row">
					<!-- add user div row start  here -->
					<div class="panel panel-default top_border">
						<div class="panel-heading">
							<div class="panel-title">New Project</div>
							<div class="panel-button">
								<a href="#" style="margin-right: 10px;"> <i
									class="fa fa-print "></i>
								</a> <a data-toggle="collapse" href="#userAdd_panel_body"
									aria-expanded="true" aria-controls="collapseOne"> <i
									class="fa fa-unsorted fa-1x"></i>
								</a>
							</div>
						</div>
						<div class="panel-body" id="userAdd_panel_body">
							<!-- form starts from here -->
							<form:form class="form-horizontal" action="post"
								modelAttribute="developerProject">
								<div class="col-lg-6">
									<div class="form-group">
										<label for="name" class="col-sm-3 control-label">Project
											Title</label>
										<div class="col-sm-9">
											<form:input type="text" class="form-control" id="name"
												placeholder="Enter Project Title ..." required=""
												path="name"
												oninvalid="this.setCustomValidity('Plese Enter Project Title  Here')"
												oninput="setCustomValidity('')" />
										</div>
									</div>
									<div class="form-group">
										<label for="tools" class="col-sm-3 control-label">Project
											Tools</label>
										<div class="col-sm-9">
											<form:input type="text" class="form-control"
												placeholder=" Ex. Eclipse, NetBeans, Tomcat..." id="tools"
												path="tools"
												oninvalid="this.setCustomValidity('Plese Enter Project tools here...')"
												oninput="setCustomValidity('')" />
										</div>
									</div>
									<div class="form-group">
										<label for="technology" class="col-sm-3 control-label">
											Technology</label>
										<div class="col-sm-9">
											<form:input type="text" class="form-control"
												placeholder="Enter Required Technology   ..Ex Java, PHP, Phyton ..."
												path="technology" id="technology"
												oninvalid="this.setCustomValidity('Plese Enter Project Technology here...')"
												oninput="setCustomValidity('')" />
										</div>
									</div>
									<div class="form-group">
										<label for="inputPassword3" class="col-sm-3 control-label">Avg.
											Price</label>
										<div class="col-sm-9">
											<form:input type="number" class="form-control"
												placeholder="Enter Price ..." path="price"
												oninvalid="this.setCustomValidity('Plese Enter Project Price Here')"
												oninput="setCustomValidity('')" />
										</div>
									</div>
									<div class="form-group">
										<label for="last_date" class="col-sm-3 control-label">Last
											Date</label>
										<div class="col-sm-9">
											<form:input type="date" class="form-control" placeholder="Enter Last Date to be Accepted..."
												path="last_date"  />
										</div>
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-group">
										<label for="specification" class="col-sm-2 control-label">Project
											specifications</label>
										<div class="col-sm-10">
											<form:textarea rows="11" cols="57" path="specification"
												id="specification"
												placeholder="Enter Project Specifications here..." />

										</div>
									</div>

									<div class="form-group">
										<div class="col-sm-10 col-lg-offset-2">
											<button type="submit" class="btn btn-block btn-primary">
												Post Project</button>
										</div>
									</div>
								</div>
							</form:form>
						</div>
					</div>
				</div>
				<!-- add user div row end  here -->

			</div>
			<!-- full page div end here -->
		</div>
		<!-- page-content -->
	</div>
	<!-- main-content-inner -->
</div>
<!-- main-content -->
