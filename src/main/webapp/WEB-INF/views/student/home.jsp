    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
    <%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<tiles:insertAttribute name="commonfile"/>
<title><tiles:getAsString name="title" /></title>
<tiles:insertAttribute name="header"/>
</head>
<body oncontextmenu="return false">

	
	<noscript>
		<!-- impot navbar top div -->
			<tiles:insertAttribute name="No_js"/>
		<!-- impot navbar top div -->
	</noscript>
	
<div class="full_dashbord_div">
	
	<script type="text/javascript">
		window.menu="${menu}";
		</script>
	<!-- impot navbar top div -->
		<tiles:insertAttribute name="model"/>
	<!-- impot navbar top div -->
	
	
	<!-- impot navbar top div -->
		<tiles:insertAttribute name="navbar_top"/>
	<!-- impot navbar top div -->
	
	<!-- impot navbar div -->
		<tiles:insertAttribute name="navbar"/>
	<!-- impot navbar div -->
	
	<!-- body div start here -->
		<div class="main-container ace-save-state" id="main-container">
			<!-- impot sidebar div -->
				<tiles:insertAttribute name="sidebar"/>
			<!-- impot sidebar div -->
			
			<!-- content start here -->
				<tiles:insertAttribute name="fullpage"/>
			
 				<!-- impot footer div -->
				<tiles:insertAttribute name="footer"/>
			<!-- impot footer div -->
		</div>
	<!-- body div end here -->
	
</div><!-- full_dashbord_div -->
</body>
</html>