<!DOCTYPE html>
<html lang="en">
<head>
<%@include file="header.jsp" %>
</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

<%@include file="asidebar.jsp" %>

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">
          <%@include file="atopbar.jsp" %>
          
    <!-- Begin Page Content -->
        <div class="container-fluid">
        <!-- Content Row -->
        <form action="updateemployee" class="form-horizontal" method="post">
          <div class="row">
       		  <div class="col-lg-6">
       		  				<c:url var="deleteEmployee" value="deleteemployee">
       		  					<c:param name="id" value="${emp.id }"></c:param>
       		  				</c:url>
								<div class="form-group form-inline">
								 <div class="col-lg-4">
									<label for="id">Employee Id: </label> 
									</div>
									<div class="col-lg-4">
									<input type="text" name="id" value="${emp.id }"
										class="form-control form-control-user ml-2"
										id="id" />
								</div></div>
								
								<div class="form-group form-inline">
								<div class="col-lg-4">
									<label for="name">Employee Name: </label></div>
									<div class="col-lg-4">
									 <input type="text" name="name" value="${emp.name }"
										class="form-control form-control-user ml-2"
										id="name" />
								</div></div>
								
								<div class="form-group form-inline">
								<div class="col-lg-4">
									<label for="email">Email: </label> </div>
									<div class="col-lg-4">
									<input name="email" value="${emp.email }"
										class="form-control form-control-user ml-2"
										id="email" />
								</div></div>
								
								<div class="form-group form-inline">
								<div class="col-lg-4">
									<label for="mobile">Mobile: </label></div>
									<div class="col-lg-4">
									 <input name="mobile" value="${emp.mobile }"
										class="form-control form-control-user ml-2"
										id="mobile" />
								</div></div>
								<div class="form-group form-inline">
								<div class="col-lg-4">
									<label>Address: </label></div>
									<div class="col-lg-4">
									 <textarea name="address"
										class="form-control form-control-user ml-2"
										id="exampleFirstname" >${emp.address }</textarea>
								</div></div>
								<div class="form-group form-inline">
								<div class="col-lg-4">
									<label for="gender">Gender:</label>
								</div>
					               <div class="form-check ml-4">
										<label class="form-check-label"> <input type="radio" id="gender" class="form-check-input" value="male" name="gender" checked>Male
										</label>
									</div>
									<div class="form-check ml-3">
										<label class="form-check-label"> <input type="radio" id="gender" class="form-check-input" value="female"  name="gender">Female
										</label>
									</div>
									<div class="form-check ml-3">
										<label class="form-check-label"> <input type="radio" id="gender" class="form-check-input"  value="other" name="gender">Other
										</label>
									</div>
								</div>
								
								<div class="form-group form-inline">
								<div class="col-lg-4">
									<label>Date Of Birth: </label> </div>
									<div class="col-lg-6">
									<input name="dob" class="form-control form-control-user ml-2" id="exampleFirstname" type="date" value="${emp.dob }"/>
								   </div>
								</div>	

							</div>
							<!-- /.End of col-6 -->
							<div class="col-lg-6">
								<div class="form-group form-inline">
								 <div class="col-lg-4">
									<label>Designation: </label></div>
									<div class="col-lg-4">
									 <input name="designation" value="${emp.designation }"
										class="form-control form-control-user ml-2"
										id="exampleFirstname" />
								</div></div>

								<div class="form-group form-inline">
								<div class="col-lg-4">
									<label>Department: </label> </div>
									<div class="col-lg-4">
									<input name="department" value="${emp.department }"
										class="form-control form-control-user ml-2"
										id="exampleFirstname" />
								</div></div>
                                
                                <div class="form-group form-inline">
								<div class="col-lg-4">
									<label>Team: </label> </div>
									<div class="col-lg-6">
									<select name="team" class="form-control form-control-user ml-2" id="team" >
									<option value="None">Choose team name</option>
									<option value="red">Read Team</option>
									<option value="blue">Blue Team</option>
									<option value="green">Green Team</option>
									</select>
								</div></div>
								
                              <div class="form-group form-inline">
								<div class="col-lg-4">
									<label>Current Project : </label> </div>
									<div class="col-lg-4">
									<input type="text"
										name="currentProject" value="${emp.currentProject }"
										class="form-control form-control-user ml-2"
										id="exampleFirstname" />
								</div></div>

								<div class="form-group form-inline">
								<div class="col-lg-4">
									<label for="maritalStatus">Marital Status:</label>
								</div>
					               <div class="form-check ml-4">
										<label class="form-check-label"> <input type="radio" id="merritalStatus" class="form-check-input" value="UnMarried" name="maritalStatus" checked>UnMarried
										</label>
									</div>
									<div class="form-check ml-3">
										<label class="form-check-label"> <input type="radio" id="merritalStatus" class="form-check-input" value="Married"  name="maritalStatus">Married
										</label>
									</div>
								</div>

								<div class="form-group form-inline">
								<div class="col-lg-4">
									<label>Date of Joining: </label> </div>
									<div class="col-lg-4">
									<input name="doj" value="${emp.doj }"
										class="form-control form-control-user ml-2"
										id="exampleFirstname" type="date" />
								</div></div>
							</div>
							<!-- /.End of col-6 -->
							<button type="submit" class="btn btn-primary btn-user btn-block">
								Update</button>
							<a href="${deleteEmployee }" type="submit" class="btn btn-primary btn-user btn-block">
								Delete</a>
           </div> <!-- /.Content Row -->
           </form>
       </div><!-- /.container-fluid -->

      </div><!-- End of Main Content -->

    <%@include file="footer.jsp" %>
 </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->
<%@include file="adminmodal.jsp" %>
  </body>

</html>