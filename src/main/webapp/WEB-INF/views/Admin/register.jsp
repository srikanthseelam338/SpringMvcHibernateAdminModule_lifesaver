<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
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
	left: 33px;
}

#s3 {
	position: relative;
	left: 71px;
}


#s5 {
	position: relative;
	left: 78px;
}

#s6 {
	position: relative;
	left: 65px;
}

#s7 {
	position: relative;
	top: 36px;
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
</style>
</head>
<body>

	<br>
	<form:form action="store" method="post" modelAttribute="bean">
		<h1 align="center">Customer Entery</h1>
		<br />
		<br>
&nbsp;	&nbsp;  Enter customerName : <form:input path="customername"
			id="s2" />
		<br />
		<br />
		&nbsp;	&nbsp;	age   : <form:input path="customerAge"/>
<br>
<br>
&nbsp;	&nbsp;	Enter gender    : <form:input path="customerGender"/>
<br>
<br>
&nbsp;	&nbsp;	Enter AdharNo      : <form:input path="customerAdharno"
			id="s3" />
		<br />
		<br />

&nbsp;	&nbsp; Select Your BloodGroup		<form:select path="customerbloodGroup" id="f1">
			<form:option selected="selected" value="A+">A+</form:option>
			<form:option value="A-">A-</form:option>
			<form:option value="B+">B+</form:option>
			<form:option value="B-">B-</form:option>
			<form:option value="AB+">AB+</form:option>
			<form:option value="AB-">AB-</form:option>
			<form:option value="O+">O+</form:option>
			<form:option value="O-">O-</form:option>
			<form:option value="BOMBAY">BOMBAY</form:option>
		</form:select>
		<br>
		<br>
&nbsp;	&nbsp;	Enter Address      : <form:input path="customerAddress"
			id="s5" />
		<br />
		<br />
&nbsp;	&nbsp;	Enter mobileNo     : <form:input path="customerMobileNo"
			id="s6" />
		<br />
		<br />

&nbsp;	&nbsp;	Enter request    : <form:input path="request"/>
<br>
<br>
&nbsp;	&nbsp;	Enter blood bank name    : <form:input path="bloodbankname"/>

<br>
<br>
&nbsp;	&nbsp;	 blood reason  : <form:input path="reason"/>
		<input type="submit" value="Register" id="s7">
	</form:form>
	<br />
	<h2 align="center">${msg }</h2>
</body>
</html>