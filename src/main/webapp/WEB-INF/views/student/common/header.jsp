<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url var="css" value="/resources/css/"/>
<spring:url var="js" value="/resources/js/"/>
<spring:url var="image" value="resources/image/"/>  
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>

<link rel="stylesheet" 
	href="${css}/developer/dashnotifaction.css">
<link rel="stylesheet" 
	href="${css}/developer/style.css">

	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>