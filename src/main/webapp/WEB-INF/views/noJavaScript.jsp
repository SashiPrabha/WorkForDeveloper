<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
    html,
body {
  height: 100%;
}
body {
  background: linear-gradient(to bottom, #1e528e 0%, #728a7c 50%, #e9ce5d 100%);

}
button{ border-radius: 30px; }
h1{font-size: 60px;}
.col_div{text-align: center; margin-top: 200px; color: white;}

</style>
<style>
.full_dashbord_div{display: none!important;}
</style>
</head>
<body>


<div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 col_div">
                <h1 >Sorry.</h1>
                <h2>Looks like something went wrong on Your Browser.</h2>
                <h2>You should  check , Allow all sites to run JavaScript (recommended) in your browser.</h2>
               <%--  
               		<a href="<%=application.getContextPath()%>/Login"></a>
               --%>
            </div>

        </div>
    </div>

	
</body>


</html>


