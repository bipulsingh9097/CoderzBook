<!-- Need to include some bootstrap link which we will use in every UI so we created a common bootstrap file-->
<%@ include file="/static/bootstrap/Bootstrap.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
	@charset "ISO-8859-1";
/* Header class is used in Admin Login page background */
.header{
	height: 100vh;
	width: 100%;
	background-image: linear-gradient(to right, rgba(0, 0, 0, .1),rgba(0, 0, 0, .3)),
		url(https://images.pexels.com/photos/260689/pexels-photo-260689.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940);
	background-size: cover;
}
/* Card class is used in Admin login page */
.card {
        margin: 0 auto; 
        float: none;
        margin-bottom: 10px;
}
	
</style>
<title>Welcome Admin</title>
</head>
<body>

<!-- header class is used to add background image to a particular portion -->
	<div class="header">
		<br> <br> <br>



<!-- 		heading of admin login page -->
		<h1 style="text-align: center; font-size: 60px">Welcome to
			CoderzBook</h1>
		<br> <br> <br>
		
		<h5 style="text-align: center" class="card-title">${message }</h5>
		
<!-- 		We are using bootstrap card for login form -->
		<div class="card" style="height: 16rem; width: 27rem;">
			<div class="card-body">
			
			<form action="adminauthentication" method="post" >
				<h4 style="text-align: center" class="card-title">Admin Login</h4>
				Admin ID: &nbsp; <input name="adminId" type="text" name="AdminName"
					placeholder="Enter Admin ID" size="30" required="required"/>
					<br> <br>
				Password: &nbsp; <input name="password" type="password" name="AdminPassword"
					placeholder="Enter your Password" size="30" required="required"/>
					<br> <br>
<!-- 				<div class="form-group form-check"> -->
<!-- 					<input type="checkbox" class="form-check-input" id="exampleCheck1"/> -->
<!-- 					<label class="form-check-label" for="exampleCheck1">Remember me</label> -->
<!-- 				</div> -->
				<div style="text-align: center">
					<input type="submit" class="btn btn-success" value="Login">
				</div>
			</form>
			</div>
		</div>
		</div>
</body>
</html>