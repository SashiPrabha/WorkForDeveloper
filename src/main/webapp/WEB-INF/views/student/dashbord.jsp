
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!-- main content start here -->
<div class="main-content">
	<div class="main-content-inner">
		<div class="breadcrumbs ace-save-state breadcrumbs-fixed"
			id="breadcrumbs">
			<ul class="breadcrumb">
				<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">Home</a>
				</li>

				<li><a href="#">Other Pages</a></li>
				<li class="active">Error 404</li>
			</ul>
		</div>

		<div class="page-content">
			<div class="fullpage">
				<!-- full page div start here -->
				<div class="page-header">
					<h1>
						Dashboard <small> <i
							class="ace-icon fa fa-angle-double-right"></i> Projects Details
						</small>
					</h1>
				</div>
				<!-- /.page-header -->

				<div class="row">
					<!-- acountinfo div row start  here -->
					<div class="panel panel-default top_border">
						<div class="panel-heading">
							<div class="panel-title">All Project List</div>
							<div class="panel-button">
								<a href="#" style="margin-right: 10px;"> <i
									class="fa fa-print "></i>
								</a> <a data-toggle="collapse" href="#income_panel_body"
									aria-expanded="true" aria-controls="collapseOne"> <i
									class="fa fa-unsorted fa-1x"></i>
								</a>
							</div>
						</div>
						<div class="panel-body panel_body_tabel" id="income_panel_body">
							<div class="table_div">
								<table
									class="table table-condensed table-bordered table-hover table_income_info">
									<thead>
										<tr>
											<th>Sl.</th>
											<th>Project Name</th>
											<th>tools</th>
											<th>Required Technology</th>
											<th>Price</th>
											<th>last Date</th>
											<th>Project Specification</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="tempProject" items="${allProjects}">
											<tr>
												<td>${tempProject.project_id}</td>
												<td>${tempProject.name}</td>
												<td>${tempProject.tools}</td>
												<td>${tempProject.technology}</td>
												<td>${tempProject.price}</td>
												<td>${tempProject.last_date}</td>
											
													<td>${tempProject.specification}</td>
											
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<!-- acountinfo div row end  here -->

			</div>
			<!-- full page div end here -->
		</div>
		<!-- page-content -->
	</div>
	<!-- main-content-inner -->
</div>
<!-- main-content -->

<!-- content end here -->

