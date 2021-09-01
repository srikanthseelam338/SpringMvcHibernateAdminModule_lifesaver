<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
form {
	border: 2px solid black;
	margin: 0 auto;
	height: 450px;
	width: 408px;
	background: lightsteelblue;
}

body {
	background: mintcream;
}

#s1 {
	position: relative;
	left: 54px;
}

#s2 {
	position: relative;
	left: 57px;
}

#s3 {
	position: relative;
	left: 73px;
}


#s5 {
	position: relative;
	left: 77px;
}

#s6 {
	position: relative;
	left: 60px;
}

#s7 {
	position: relative;
	top: 69px;
	width: 87%;
	margin: 0 auto;
	left: 29px;
	height: 33px;
	background: greenyellow;
}
#f1{

position: relative;
    left: 19px;
    width: 164px;
    height: 23px;
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

            .topnav a,
            .topnav input[type=text],
            .topnav .search-container button {
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
		<a href="Adminhome"> <i class="fa fa-home"></i>&nbsp;home</a> <!-- <a href="view">Customer-details</a> -->
		<!--  <a href="find">Search/Update</a> -->
		<a href="view1">BloodBankDetails</a>

		<!--       <a href="register">Register</a> -->
		<div class="search-container"></div>
	</div>
	<br>
	<form:form action="store1" method="post" modelAttribute="bean">
		<h1 align="center">AddBloodBank</h1>
		<br />
		<br>
&nbsp;	&nbsp;  Enter BankName : <form:input path="bloodBankname"
			id="s2" />
		<br />
		<br />
&nbsp;	&nbsp;	Enter BankLoc     : <form:input path="bloodBankLoc"
			id="s3" />
		<br>
		<br>
&nbsp;	&nbsp;	Enter Address      : <form:input path="bloodBankAddress"
			id="s5" />
		<br />
		<br />
&nbsp;	&nbsp;	Enter ContactNo    : <form:input path="bloodBankContactNumber"
			id="s6" />
		<br />
		<br />

		<input type="submit" value="Register" id="s7">
	</form:form>
	<br />
	<h2 align="center">${msg }</h2>
</body>
</html>