<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<title>Insert title here</title>

<style type="text/css">
th {
	background: orange;
	color: white;
	
}

td {
	color: black;
	
}

#panel {
	/* display: none; */
	
}

body {
	background: skyblue;
}


table {
	table {
	border: 2px Solid black;
	width: 90%;
	margin: 0 auto;
}
}



#btn {
	position: relative;
	top: -41px; height : 35px; width : 114px; right : -418px; background :
	blue;
	color: white;
	height: 35px;
	width: 114px;
	right: -411px;
	background: blue;
}

}
#input {
	background: red;
	color: white;
	border-radius: 3px:
}

#c1 {
	border: none background: none;
	/* color: red; */
	/* color: white; */
	font-size: 10px;
	width: 80% margin: 0 auto;
	font-weight: 700;
}

* {
	box-sizing: border-box;
}

body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
}

.topnav {
	overflow: hidden;
	background-color: red;
}

.topnav a {
	float: left;
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

.topnav a:hover {
	background-color: black;
	color: white;
}

.topnav a.active {
	background-color: red;
	color: white;
}

.topnav .search-container {
	float: right;
}

.topnav input[type=text] {
	padding: 6px;
	margin-top: 8px;
	font-size: 17px;
	border: none;
	position: absolute;
	left: 683px;
}

.topnav .search-container button {
	float: right;
	padding: 6px 10px;
	margin-top: 8px;
	margin-right: 16px;
	background: #ddd;
	font-size: 17px;
	border: none;
	cursor: pointer;
	position: absolute;
	left: 890px;
}

.topnav .search-container button:hover {
	background: #ccc;
}

@media screen and (max-width: 600px) {
	.topnav .search-container {
		float: none;
	}
	.topnav a, .topnav input[type=text], .topnav .search-container button {
		float: none;
		display: block;
		text-align: left;
		width: 100%;
		margin: 0;
		padding: 14px;
	}
	.topnav input[type=text] {
		border: 1px solid #ccc;
	}
}

#g1 {
	position: relative;
	top: -41px;
	left: 416px;
	height: 34px;
	width: 248px;
}

}
#g3 {
	position: relative;
	top: -41px;
	left: 379px;
	height: 34px;
	width: 265px;
}
}
</style>
</head>
<body>
<body style="background-color: skyblue;">


	<div class="topnav">
		<a href="Adminhome"><i class="fa fa-home"></i>&nbsp;home</a>
		<!-- <a href="view">Customer-details</a> -->
		<!--  <a href="find">Search/Update</a> -->
		<!-- <a href="find1">BloodBankDetails</a> -->

		<!--       <a href="register">Register</a> -->
		<div class="search-container"></div>
	</div>


	<form:form action="search" method="post" modelAttribute="bean">
 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input
			path="customerAdharno" id="g3" placeholder="Enter Your Id"
			style="position: relative;
    top: -41px;
    left: 379px;
    height: 34px;
    width: 265px;" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input
			path="customername" id="g1" placeholder="Enter Your Name" />


		<input type="submit" value="Search" id="btn">


	</form:form>
	<%@ page isELIgnored="false"%>
	<br>
	<div class="table-responsive">
		<table class="table" border="2">
			<tr>
				<th id="s1">Customer Id</th>
				<th>Name</th>
				<th>Age</th>
				<th>Gender</th>
				<th>Adharno</th>
				<th>bloodGroup</th>
				<th>Address</th>
				<th>MobileNo</th>
				<th>Donate/Requesting</th>
				<th>bloodbankname</th>
				<th>reason</th>
				<th>Update</th>
				<th>delete</th>
			</tr>
			<c:forEach var="tab" items="${li }">
				<tr>
					<td><form action="update" method="post" modelAttribute="bean">

							<input type="text" value="${tab.customerid}" name="customerid"
								readonly id="c1"></td>
					<td><input type="text" value="${tab.customername}"
						name="customername" id="c1"></td>

					<td><input type="text" value="${tab.customerAge}"
						name="customerAge" id="c1"></td>

					<td><input type="text" value="${tab.customerGender}"
						name="customerGender" id="c1"></td>

					<td><input type="text" value="${tab.customerAdharno}"
						name="customerAdharno" id="c1"></td>

					<td><input type="text" value="${tab.customerbloodGroup}"
						name="customerbloodGroup" id="c1"></td>

					<td><input type="text" value="${tab.customerAddress}"
						name="customerAddress" id="c1"></td>

					<td><input type="text" value="${tab.customerMobileNo}"
						name="customerMobileNo" id="c1"></td>

					<td><input type="text" value="${tab.request}" name="request"
						id="c1"></td>

					<td><input type="text" value="${tab.bloodbankname}"
						name="bloodbankname" id="c1"></td>

					<td><input type="text" value="${tab.reason}" name="reason"
						id="c1"></td>


					<td align="center"><input type="submit" value="Update"
						id="input" id="c1" onsubmit="myFunction()">
						</form></td>

					<td align="center"><form method="post" action="delete"
							modelAttribute="bean">
							<input type="hidden" value="${tab.customerid}" name="customerid">
							<input type="submit" value="delete" id="input" id="c1">
						</form></td>
				</tr>

				<tr>
			</c:forEach>


		</table>

	</div>
	<%@ page isELIgnored="false"%>
	<h2 align="center">${msg}</h2>



</body>
</html>