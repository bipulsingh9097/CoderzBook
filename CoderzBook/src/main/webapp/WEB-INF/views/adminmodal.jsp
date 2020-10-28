<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page isELIgnored="false" %>
  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fa fa-angle-up"></i>
  </a>
 
<!-- *
   **Model for add Employee**
      -->
      
<div class="modal fade" id="addEmployee" tabindex="1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header text-center">
          <h5 class="modal-title" id="exampleModalLabel">Add Employee Here!</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times; </span>
           </button>
              </div>
             <div class="modal-body">
              <form action="addUser" class="user" method="post" data-toggle="validator">
              <div class="form-group">
                  <input type="text" name="employee_id" class="form-control form-control-user" id="exampleInputEmail"  placeholder="Employee_Id" autocomplete="off"/>
                </div>
                <div class="form-group">
                    <input type="email" name="email" class="form-control form-control-user" id="exampleFirstName" placeholder="Employee Email Address" autocomplete="off"/>
                </div>
                <div class="form-group">
                    <input type="password" name="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="Choose Password"/>
                  </div>
                <button type="submit" class="btn btn-primary btn-user btn-block">
                  Register
                </button>
              </form>

            </div>
          <div class="modal-footer">
        </div>
      </div>
    </div>
  </div>
  
   <!-- *
   **Model for add events**
      -->
<div class="modal fade" id="addEvents" tabindex="1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header text-center">
          <h5 class="modal-title" id="exampleModalLabel">Add Your Events Here!</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times; </span>
           </button>
              </div>
             <div class="modal-body">
              <form action="addEvents"  method="post" data-toggle="validator" enctype="multipart/form-data">
               <div class="form-group">
                  <input type="file" name="photo" class="form-control form-control-user"  placeholder="Event Picture" required/>
                </div>
                 <div class="form-group">
                  <input type="date" name="date" class="form-control form-control-user"  placeholder="Event Date" required/>
                </div>
                <div class="form-group">
                  <input type="text" name="title" class="form-control form-control-user"  placeholder="Event Title" required/>
                </div>
              
                <div class="form-group">
                    <textarea name="description" class="form-control form-control-user" placeholder="Event Description" required></textarea>
                </div>
                <button type="submit" class="btn btn-primary btn-user btn-block">
                  Post
                </button>
              </form>

            </div>
          <div class="modal-footer">
        </div>
      </div>
    </div>
  </div>
   
    <!-- *
   **Model for add Memories**
      -->
<div class="modal fade" id="addMemories" tabindex="1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header text-center">
          <h5 class="modal-title" id="exampleModalLabel">Create Your Memories Here!</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times; </span>
           </button>
              </div>
              <div class="modal-body">
              <form action="addMemories"  method="post" data-toggle="validator" enctype="multipart/form-data">
              <div class="form-group">
                  <input type="file" name="photo" class="form-control form-control-user"  placeholder="Memory Picture" required/>
                </div>
              <div class="form-group">
                  <input type="text" name="title" class="form-control form-control-user"  placeholder="Memory Title" required/>
                </div>
                <div class="form-group">
                    <textarea name="description" class="form-control form-control-user" placeholder="Memory Description" required></textarea>
                </div>
                <button type="submit" class="btn btn-primary btn-user btn-block">
                  Post
                </button>
              </form>

            </div>
          <div class="modal-footer">
        </div>
      </div>
    </div>
  </div>
    
     <!-- Change Password Modal-->
  <div class="modal fade" id="ChangePassword" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Change Your Password Here!</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
			<form action="adminchangepassword" class="user" >
			<div class="form-group">
				<input type="hidden" name="adminId" value="<c:out value='${sessionScope.adminId}'/>"/>
			   <label>Current Password:</label>
				<input type="password"  name="password" class="form-control form-control-user" id="password" required="required"/>
				</div>
				<div class="form-group">
				<label>Choose New Password:</label>
				<input type="password" name="newpassword" class="form-control form-control-user" id="newpassword" required/>
				</div>
				<button type="submit" class="btn btn-primary btn-user btn-block">
                  Change Password
                </button>
			</form>        
        </div>
      </div>
    </div>
  </div>
    
  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true"> &times; —</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="logout">Logout</a>
        </div>
      </div>
    </div>
  </div>

<!-- Latest compiled and minified CSS -->
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="<c:url value="/static/js/sidebar.js"/>"></script>