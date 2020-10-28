<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
<%@include file="header.jsp"%>
</head>
<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<%@include file="asidebar.jsp"%>

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">
				<%@include file="atopbar.jsp"%>

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<div class="row">
						<form:form action="saveevent" method="post" modelAttribute="event" enctype="multipart/form-data">
							<div class="form-group">
								<input type="file" name="photo"
									class="form-control form-control-user"
									placeholder="Event Picture" required />
							</div>
							<div class="form-group">
								<form:input type="date" path="date"
									class="form-control form-control-user" placeholder="Event Date"
									required="required" />
							</div>
							<div class="form-group">
								<form:input type="text" path="title"
									class="form-control form-control-user"
									placeholder="Event Title" required="required" />
							</div>

							<div class="form-group">
								<form:textarea path="description"
									class="form-control form-control-user"
									placeholder="Event Description" required="required"></form:textarea>
							</div>
							<button type="submit" class="btn btn-primary btn-user btn-block">
								Post</button>
						</form:form>
					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<%@include file="footer.jsp"%>
		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->
	<%@include file="adminmodal.jsp"%>
</body>

</html>