
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
							class="ace-icon fa fa-angle-double-right"></i> Students Details
						</small>
					</h1>
				</div>
				<!-- /.page-header -->

				<div class="row">
					<!-- acountinfo div row start  here -->
					<div class="panel panel-default top_border">
						<div class="panel-heading">
							<div class="panel-title">All Students List</div>
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
									class="table table-condensed table-bordered table-hover table_income_info display"
									id="mytable">
									<thead>
										<tr>
											<th>Sl.</th>
											<th>Name</th>
											<th>Phone</th>
											<th>Email</th>
											<th>Skills</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="tempStudent" items="${allStudents}">
											<tr>
												<td>${tempStudent.student_id}</td>
												<td>${tempStudent.name}</td>
												<td>${tempStudent.email}</td>
												<td>${tempStudent.mob}</td>
												<td>${tempStudent.skills}</td>
												<td>
													<button class="btn btn-sm btn-success">View
														Profile</button>
												</td>
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
<script type="text/javascript">
	$(document).ready(function() {
		$('#mytable').DataTable({
			"pagingType" : "full_numbers"
		});
	});
</script>

<!-- content end here -->

