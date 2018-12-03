<%@page import="com.sun.net.httpserver.HttpsServer"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
         <!-- sidebar start here -->
         <% 
         	String stu_email=(String)session.getAttribute("stu_email");
         	String stu_name=(String)session.getAttribute("stu_name");
         %>
         
         
				<div id="sidebar" class="sidebar   responsive  sidebar-fixed ace-save-state">
						<div style="text-align: center; margin-bottom: -10px!important; " class="login_as"> 
							<i class="fa fa-key"></i> Logged in as
							<h4><%=stu_name%><i class="fa fa-sign-out" style="color: red;"></i></h4>
						</div>
						<div class="hr hr-double hr-dotted hr18" style="margin-bottom: 2px!important;"></div>
					<div class="sidebar-shortcuts" id="sidebar-shortcuts">
						<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
							<button class="btn btn-success">
								<i class="ace-icon fa fa-signal"></i>
							</button>

							<button class="btn btn-info">
								<i class="ace-icon fa fa-pencil"></i>
							</button>

							<button class="btn btn-warning">
								<i class="ace-icon fa fa-users"></i>
							</button>

							<button class="btn btn-danger">
								<i class="ace-icon fa fa-cogs"></i>
							</button>
						</div>
						<div class="hr hr-double hr-dotted hr18" style="margin-bottom: 2px!important; margin-top: 2px!important;" ></div>
						<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
							<span class="btn btn-success"></span>

							<span class="btn btn-info"></span>

							<span class="btn btn-warning"></span>

							<span class="btn btn-danger"></span>
						</div>
					</div><!-- /.sidebar-shortcuts -->

					<ul class="nav nav-list">
							<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
								<i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
							</div>
						<li class="" id="dash">
							<a href="${contextRoot }/developer">
								<i class="menu-icon fa fa-tachometer"></i>
								<span class="menu-text"> Dashboard </span>
							</a>

							<b class="arrow"></b>
						</li>

						<li class="" id="org">
							<a href="#" class="dropdown-toggle">
								<i class="menu-icon fa fa-desktop"></i>
								<span class="menu-text">
									Menu 
								</span>
								<b class="arrow fa fa-angle-down"></b>
							</a>

							<b class="arrow"></b>

							<ul class="submenu">
								
								<%-- <li class="" id="">
									<a href="${contextRoot }/developer/NewProject" class="">
										<i class="menu-icon fa fa-caret-right"></i>
										New Project
										<b class="arrow fa fa-angle-right"></b>
									</a>
								</li> --%>
								
								<li class="">
									<a href="${contextRoot}/Project/viewAll">
										<i class="menu-icon fa fa-caret-right"></i>
										View All Projects
										<b class="arrow fa fa-angle-right"></b>
									</a>


									<!-- <b class="arrow"></b>

									<ul class="submenu">
										<li class="">
											<a href="#">
												<i class="menu-icon fa fa-caret-right"></i>
												Top Menu
											</a>
											<b class="arrow"></b>
										</li>
									</ul> -->
								</li>

							</ul>
						</li>
						<div class="hr hr-double hr-dotted hr18"></div>
					</ul><!-- /.nav-list -->
				</div>
				<!-- sidebar end here -->