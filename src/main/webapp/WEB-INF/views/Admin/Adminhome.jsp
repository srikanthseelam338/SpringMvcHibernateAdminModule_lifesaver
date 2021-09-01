<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>

#body{
background-color: skyblue;
background-image: url("/LifeSaver_AdminModule/src/main/resources/images/availblity - Copy.png");
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

#loading {
	-webkit-animation: rotation 9s infinite linear;
}

@
-webkit-keyframes rotation {from { -webkit-transform:rotate(0deg);
	
}

to {
	-webkit-transform: rotate(359deg);
}
}
</style>


<body  id="body">

	<div class="topnav">

		<a href="view"><i class="fa fa-address-book-o"
			style="font-size: 24px" id="loading"></i> &nbsp;Customer-details</a>
		<!--  <a href="find">Search/Update</a> -->
		<a href="view1"><i class="fa fa-bank" style="font-size: 24px"></i>&nbsp;
			BloodBankDetails</a> <a href="find"><i class="fa fa-search"
			style="font-size: 24px"></i>&nbsp;Search-Customer</a> <a href="find1"><i
			class="fa fa-search" style="font-size: 24px"></i>&nbsp;Search-BloodBank</a>
		<!--        <a href="register1"><i class="fa fa-bank" style="font-size:24px"></i>&nbsp;AddBank</a>  -->
		<!--    <a href="register">Register</a> -->
		<div class="search-container"></div>
	</div>


</body>
</html>