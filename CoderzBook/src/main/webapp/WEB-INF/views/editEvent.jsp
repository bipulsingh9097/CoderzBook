<!DOCTYPE html>
<html lang="en">
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
          <div class="row d-flex justify-content-center">
		<form action="updateEvent"  method="post" data-toggle="validator">
               <div class="form-group">
                    <img src="https://tse1.mm.bing.net/th?id=OIP.tmbtzedgwMaheOFBk1TkKAHaJ4&pid=Api" width="100%" height="200">
                  <input type="file" name="photo" class="form-control form-control-user"/>
                </div>
                 <div class="form-group">
                  <input type="date" name="date" class="form-control form-control-user"  value="${event.date}" required/>
                </div>
                <div class="form-group">
                  <input type="text" name="title" class="form-control form-control-user"  value="${event.title}" required/>
                </div>
              
                <div class="form-group">
                    <textarea name="description" class="form-control form-control-user" required>${event.description}</textarea>
                </div>
                <input type="hidden" name="id" value="${event.id}"/>
                <button type="submit" class="btn btn-primary btn-user btn-block">
                  Update
                </button>
              </form>
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

</body>
</html>