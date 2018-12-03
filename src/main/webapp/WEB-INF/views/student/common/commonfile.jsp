<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url var="css" value="/resources/css/"/>
<spring:url var="js" value="/resources/js/"/>

<spring:url var="image" value="/resources/image/"/>  
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>

 <link rel="stylesheet" 
	href="${css}/common/bootstrap.min.css">
<link rel="stylesheet" 
	href="${css}/common/main_style.css">
<link rel="stylesheet" 
	href="${css}/common/model.css">
<link rel="stylesheet" 
	href="${css}/common/top_nav_div.css">
	

<link rel="stylesheet" 
	href="${css}/common.css">
<link rel="stylesheet" 
	href="${css}/common/sky.min.css">
<link rel="stylesheet" 
	href="${css}/common/sky-ie.min.css">
<link rel="stylesheet" 
	href="${css}/common/sky-skins.min.css">
<link rel="stylesheet" 
	href="${css}/common/autochange.min.css">
<link rel="stylesheet" 
	href="${css}/common/css/font-awesome.min.css">
	



<script type="text/javascript" src="${js}/commonJs/jquery.js"></script>
<script type="text/javascript" src="${js}/commonJs/bootstrap.min.js"></script>
<script type="text/javascript" src="${js}/commonJs/sky.min.js"></script>
<script type="text/javascript" src="${js}/commonJs/sky-elements.min.js"></script>
<script type="text/javascript" src="${js}/commonJs/sky-extra.min.js"></script>	
<script type="text/javascript" src="${js}/commonJs/screenfull.min.js"></script>	
<script type="text/javascript" src="${js}/commonJs/common.js"></script>	
<script type="text/javascript" src="${js}/commonJs/top_nav_div.js"></script>
<script type="text/javascript" src="${js}/developer/menu.js"></script>	
<script type="text/javascript" src="${js}/commonJs/shortcutAndExtra.js"></script>		

	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/modules/exporting.js"></script>
	