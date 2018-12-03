<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<spring:url var="css" value="/resources/css/" />
<spring:url var="js" value="/resources/js/" />
<spring:url var="image" value="/resources/image/" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title>${title}</title>
<meta name="description" content="" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<!-- bootstrap & fontawesome -->

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="${css}/common/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<%-- <link rel="stylesheet" href="${css}/common/bootstrap.min.css"/> --%>
<link rel="stylesheet" href="${css}/loginPageCss.css" />   
<link rel="stylesheet" href="${css}/common/css/font-awesome.min.css" />
<script type="text/javascript" src="${js}/loginpage.js"></script>
</head>
<body>
	<div class="container">
		<form:form class="form-horizontal" action="developer/register" modelAttribute="project" method="post">
	<div class="row project-form">	
			
			<div class="col-lg-6">
				<div class="form-group">
							<label for="specification" class="col-sm-2 control-label">Project Specification</label>
							<div class="col-sm-10">
								<form:textarea rows="8" cols="10" class="form-control" id="specification"
									placeholder="Enter Project Specification.." path="specification" />
							</div>
						</div>
					
			</div>
			<div class="col-lg-6">
				
						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">Project Name</label>
							<div class="col-sm-10">
								<form:input type="text" class="form-control" id="name"
									placeholder="Enter Project Title.." path="name" />
							</div>
						</div>
						
						<div class="form-group">
							<label for="tools" class="col-sm-2 control-label">Project Tools</label>
							<div class="col-sm-10">
								<form:input type="text" class="form-control" id="tools"
									placeholder="Ex. Eclipse, NetBeans, Tomcat..." path="tools" />
							</div>
						</div>
						
						<div class="form-group">
							<label for="technology" class="col-sm-2 control-label">Required Technology</label>
							<div class="col-sm-10">
								<form:input type="text" class="form-control" id="technology"
									placeholder="Ex Java, PHP, Phyton ..." path="technology" />
							</div>
						</div>
						
						<div class="form-group">
							<label for="price" class="col-sm-2 control-label">Avg. Price</label>
							<div class="col-sm-10">
								<form:input type="text" class="form-control" id="price"
									placeholder="Enter Price ..." path="price" />
							</div>
						</div>
						<div class="form-group">
							<label for="last_date" class="col-sm-2 control-label">Last Date</label>
							<div class="col-sm-10">
								<form:input type="text" class="form-control" id="last_date"
									placeholder="Enter Last Date to be Accepted..." path="last_date" />
							</div>
						</div>
						
						<div class="modal-footer">
							<button type="submit" class="btn btn-primary" id="submit_button">Post Project</button>
						</div>
					</div>
				</div>		
			
		
					</form:form>
			
	
	</div>
</body>
</html>