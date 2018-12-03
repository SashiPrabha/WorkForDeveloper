<div class="top_div navbar-fixed-top">
				<ul class="left_ul">
					<li> 
						<a href="#" onclick="goBack()"><i class="fa fa-arrow-left"></i></a>
					</li>
					<li>							
						<a href="#" onclick="goForward()"><i class="fa fa-arrow-right"></i></a>
					</li>
					<li>							
						<a href="#" onclick="refresh()"><i class="fa fa-rotate-right"></i></a>
					</li>
					<li>
						Last Login : 2:30:30 PM
					</li>
					<li> Now :-  
						<text id="clock"></text>
					</li>
				</ul>
				<ul class="right_ul">
					<li class="menu" style="background-color: green; color: #fff;" >
						<a href="#">
							<i class="fa fa-tachometer"></i> 
							Dashboard
						</a>
					</li>
					
				
					<li class="menu">
						<a href="#">
							<i class="fa fa-bell"></i>
						</a>
					</li>
					<li class="menu dropdown">
						<a id="topList" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="cursor: pointer;">
							<i class="fa fa-search"></i>
						</a>
						<div class="dropdown-menu well well-sm top_search_div">
								<div id="custom-search-input">
					                <div class="input-group col-md-12">
					                    <input type="text" class="form-control input-lg" placeholder="Search student record only..." autofocus="true" />
					                    <span class="input-group-btn">
					                        <button class="btn btn-info btn-lg" type="button">
					                            <i class="glyphicon glyphicon-search"></i>
					                        </button>
					                    </span>
					                </div>
					            </div>
				            <div class="panel-footer" style="padding: 1px!important; margin-top: 2px!important; margin-right: -10px; margin-left: -10px; background-color: #348EB9; margin-bottom: -20px!important;">
				            	<h5 style=" margin-bottom: 2px!important; margin-top: 2px!important;">
									<a href="#" style="color: #fff;">For Advance Search  </a>
									<i class="fa fa-arrow-right"></i>
								</h5>

				            </div>
						</div>
					</li>
					

				<!-- data-toggle="fullscreen"=== this code is used for full screen window-->	
					<li class="menu">
						<a href="#" data-toggle="fullscreen">
						 <em class="fa fa-expand"></em>
					  </a>
					</li>
					
					<li class="menu">
						<a href="#" id="lock_btn_top"> <!-- event handling in top_nav_div.js  -->
							<i class="fa fa-lock"></i> 
							Lock
						</a>
					</li>
					<li class="menu">
						<a href="#">
							<i class="fa fa-key"></i> 
							Change Password
						</a>
					</li>
					<li id="clock" class="menu">
					</li>
					<li class="menu">
						<a href="#">
							<i class="fa fa-thumbs-o-up"></i> Help
						</a>
					</li>
					
				</ul>
			</div>