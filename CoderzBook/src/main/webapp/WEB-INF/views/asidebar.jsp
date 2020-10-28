    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-info sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="admindashboard">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fa fa-modx"></i>
        </div>
        <div class="sidebar-brand-text mx-3">CoderzBook</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="admindashboard">
          <i class="fa fa-fw fa-tachometer"></i>
          <span>Dashboard</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Employee
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item active">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fa fa-fw fa-user"></i>
          <span>Employee</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Employee Components:</h6>
            <a class="collapse-item" href="addEmployee" >Add Employee</a>
            <a class="collapse-item" href="employeeList">Employee List</a>
          </div>
        </div>
      </li>

      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Company Events
      </div>
      <li class="nav-item active">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
          <i class="fa fa-fw fa-calendar"></i>
          <span>Events</span></a>
          <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Events Components:</h6>
            <a class="collapse-item" href="addevent">Add Events</a>
            <a class="collapse-item" href="eventList">Event List</a>
          </div>
        </div>
      </li>
      <hr class="sidebar-divider">
      <!-- Heading -->
      <div class="sidebar-heading">
        Company Memories
      </div>
      <li class="nav-item active">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseFour" aria-expanded="true" aria-controls="collapseFour">
          <i class="fa fa-fw fa-picture-o"></i>
          <span>Memories</span></a>
          <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Memories Components:</h6>
            <a class="collapse-item" href="#" data-toggle="modal" data-target="#addMemories">Add Memories</a>
            <a class="collapse-item" href="memoriesList">Memories List</a>
          </div>
        </div>
      </li>
<!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->