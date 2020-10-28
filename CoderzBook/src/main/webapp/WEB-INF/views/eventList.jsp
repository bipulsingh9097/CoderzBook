<!DOCTYPE html>
<html lang="en">
<link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
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
          <div class="row">
          <table id="countTable" class="table table-striped table-bordered table-sm" style="width:100%">
  <thead>
    <tr>
      <th>Event Picture</th>
      <th>Event Date</th>
      <th>Event Title</th>
      <th>Event Description </th>
      <th>Action</th>
    </tr>
  </thead>
  <tbody> 
                              <c:forEach var="list" items="${eventList}">
								<tr>
									<td>
									<img src="data:image/jpeg;base64,${list.imageDisplay}" width="100" height="80"/></td>
									<td>${list.date}</td>
									<td>${list.title}</td>
									<td>${list.description}</td>
									<td><a href="editEvent?id=${list.id}"><i class="fa fa-edit fa-lg"></i></a> &nbsp;&nbsp;&nbsp;<a href="deleteEvent?id=${list.id}"><i class="fa fa-trash text-danger fa-lg"></i></a></td>
								</tr>
								</c:forEach>
					</tbody>
           </table>
          </div> <!-- /.Content Row -->
       </div>
        <!-- /.container-fluid -->

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
	  "bLengthChange": true,
	   });
  </script>
  </body>
</html>