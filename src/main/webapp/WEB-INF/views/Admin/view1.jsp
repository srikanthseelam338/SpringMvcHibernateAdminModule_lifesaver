<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="form"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
th {
	background: orange;
	color: white;
}

body {
	background: cyan;
}
#abc{
position: relative;
    left: 1293px;
    top: -40px;
    /* background: oldlace; */
    background: yellow;
    border-radius: 38;
    height: 34px
}
table {
	border: 2px Solid black;
	width: 80%;
	margin: 0 auto;
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
</style>
</head>
<body>
	<div class="topnav">
		<a href="Adminhome"><i class="fa fa-home"></i>&nbsp;home</a> <!-- <a href="view">Customer-details</a> -->
		<!--  <a href="find">Search/Update</a> -->
		<!-- <a href="find1">BloodBankDetails</a> -->

		<!--       <a href="register">Register</a> -->
		<div class="search-container"></div>
	</div>
	<h1 align="center">BloodBank Details</h1>
	
	<br>
	<button style="color: white background: orange" id="abc"  ><a href="register1" style="text-decoration: none">&nbsp;AddBank</a></button > 
	<table border="2" width="100%">
		<tr>
			<th>serialNo</th>
			<th>bloodBankname</th>
			<th>bloodBankLoc</th>
			<th>bloodBankAddress</th>
			<th>bloodBankContactNumber</th>
		</tr>
		<form:forEach var="tab" items="${ data}">
			<tr>
				<td>${tab.serialNo }</td>
				<td>${tab.bloodBankname}</td>
				<td>${tab.bloodBankLoc}</td>
				<td>${tab.bloodBankAddress}</td>
				<td>${tab.bloodBankContactNumber }</td>



			</tr>

			<tr>
		</form:forEach>


	</table>
	<br>



</body>
</html>