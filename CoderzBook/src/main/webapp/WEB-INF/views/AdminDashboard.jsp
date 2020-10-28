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
          <div class="row text-white">
          <div class="col-lg-3">
            <div class="card bg-gradient-danger">
            <div class="card-body">
            <i class="fa fa-users fa-lg mr-2"></i> All Employee <br>
            <span class="fa-lg mt-2 d-flex justify-content-center">10000+</span>
            </div>
            </div>
            </div>
            
            <div class="col-lg-3">
            <div class="card bg-gradient-info">
            <div class="card-body">
            <i class="fa fa-calendar fa-lg mr-2"></i>  All Events<br>
             <span class="fa-lg mt-2 d-flex justify-content-center">205+</span>
            </div>
            </div>
            </div>
            
            <div class="col-lg-3">
            <div class="card bg-gradient-warning">
            <div class="card-body">
            <i class="fa fa-picture-o fa-lg mr-2"></i> All Memories<br>
            <span class="fa-lg mt-2 d-flex justify-content-center">1000+</span>
            </div>
            </div>
            </div>
            
            <div class="col-lg-3">
            <div class="card bg-gradient-success">
            <div class="card-body">
            <i class="fa fa-object-group fa-lg mr-2"></i>All Posts <br>
            <span class="fa-lg mt-2 d-flex justify-content-center">0000</span>
            </div>
            </div>
            </div>
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
</body>

</html>
