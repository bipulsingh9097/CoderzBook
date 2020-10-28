<!DOCTYPE html>
<html lang="en">
<link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css">

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
                    <div class="row mb-2">
                    <c:forEach var="emp" items="${list }">
					   <div class="col-lg-6">
							<div class="card">
							  <div class="row">
								<div class="col-lg-4">
										<img src="https://img.pngio.com/businessman-png-download-businessman-png-1997_2134.png" class="p-2" width="150" height="200" />
									</div>
									<div class="col-lg-7 m-3">
									<c:url var="viewEmployee" value="/viewemployee">
										<c:param name="id" value="${emp.id }"></c:param>
									</c:url>
										<p><strong>Employee Code:</strong> ${emp.id } <br>
										<strong>Name:</strong> ${emp.name } <br>
										<strong>Email:</strong> ${emp.email } <br>
										<strong>Phone:</strong> ${emp.mobile } <br>
										<strong>Department:</strong> ${emp.department } <br>
										<strong>Designation:</strong> ${emp.designation }</p>
										<a href="${viewEmployee }">View all details</a>
									</div>
								</div>
							</div>
						</div><!-- /.Content Column -->						
						</c:forEach>
					</div><!-- /.Content Row -->
			
				</div><!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

    <%@include file="footer.jsp" %>
 </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->
<%@include file="adminmodal.jsp" %>
   <script type="text/javascript"  src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
  <script>
  $("#countTable").dataTable({
	  "bPaginate": true,
	  "bInfo": true,
	  "bFilter": true,
	  "bLengthChange": true
	   });
  </script>
  
</body>

</html>