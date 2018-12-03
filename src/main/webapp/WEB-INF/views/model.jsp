
        <div class="modal fade lockscrean_model" tabindex="-1" role="dialog" id="popup" style="display: none;">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title">Window Locked</h4>
		      </div>
		      <div class="modal-body">
		        <div class="lockscreen-wrapper">
				  <div class="lockscreen-logo">
				    <a href="#"><b>${developer.name}</b></a>
				  </div>
				  <!-- User name -->
				  <div class="lockscreen-name">Screen is Locked</div>

				  <!-- START LOCK SCREEN ITEM -->
				  <div class="lockscreen-item">
				    <!-- lockscreen image -->
				    <div class="lockscreen-image">
				      <img src="assets/avatars/profile-pic.jpg" alt="User Image" class="img-responsive">
				    </div>
				    <!-- /.lockscreen-image -->

				    <!-- lockscreen credentials (contains the form) -->
				    <form class="lockscreen-credentials">
				      <div class="input-group">
				        <input type="password" class="form-control" placeholder="Enter password">
				        <div class="input-group-btn">
				          <button type="button" class="btn"><i class="fa fa-arrow-right text-muted"></i></button>
				        </div>
				      </div>
				    </form>
				    <!-- /.lockscreen credentials -->

				  </div>
				  <!-- /.lockscreen-item -->
				  <div class="help-block text-center">
				    Enter your password to retrieve your session
				  </div>
				  <div class="text-center">
				    <a href="login.html">Or sign in as a different user</a>
				  </div>
				  <div class="lockscreen-footer text-center">
				    Copyright &copy; 2017-2018 <b><a href="http://almsaeedstudio.com" class="text-black">My Company</a></b><br>
				    All rights reserved
				  </div>
				</div>
		      </div>
		      <div class="modal-footer">
		        <div style="float: left; margin: 0px!important;">Session time Out <span id="countdown"></span></div>
		        <button type="button" class="btn btn-danger" style="float: right;">Log Out</button>
		      </div>
		    </div><!-- /.modal-content -->
		  </div><!-- /.modal-dialog -->
		</div><!-- /.modal -->

		<div class="modal fade search_model" tabindex="-1" role="dialog" id="search_popup" style="display: none;">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		    	<div class="modal-header bg-info">
		    		<div class="heading">
		    			<h4>Search Any Records!</h4>
		    		</div>
		    		<ul class="nav nav-tabs" role="tablist">
					    <li role="presentation" class="active">
					    	<a href="#home" aria-controls="home" role="tab" data-toggle="tab">Normal Search</a>
					   	</li>
					    <li role="presentation">
					    	<a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Advance Search</a>
					    </li>
					</ul>
				</div>
		        <div class="modal-body">
		      		<div class="tab-content">
					    <div role="tabpanel" class="tab-pane active" id="home">
					    	  <!-- <div>
					    	  	
					    	  </div> -->
					    </div>
					    <div role="tabpanel" class="tab-pane" id="profile">
					    	<h2>hello2</h2>
					    </div>
					 </div>
		        </div>
		        <div class="modal-footer">
		            <div style="float: left; margin: 0px!important;">Search Option <span id="countdown"></span></div>
		            <!-- <button type="button" class="btn btn-danger" style="float: right;">Log Out</button> -->
		        </div>
		    </div><!-- /.modal-content -->
		  </div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
