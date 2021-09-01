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
<title>Insert title here</title>
<style type="text/css">
th {
	background: orange;
	color: white;
	}
body{
background:skyblue;
}
table {
	border: 2px Solid black;
	width: 80%;
	margin: 0 auto;
	
	
}

#btn{
   
    position: relative;
    top: -75px;
    height: 35px;
    width: 107px;
    right: -1181px;
    background: blue;
    color: white;
}
}
#input{
background:red;
color:white;
border-radius:3px:
}
#c1{
border:none
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

#g1{
position: relative;
    top: -41px;
    left: 416px;
    height: 34px;
    width: 248px;
}
}
#g3{
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
      <!--   <a href="view1">Banks-List</a> -->
  <!--       <a href="find">Search/Update</a> -->
       
<!--      <a href="register1">AddBank</a>  -->
        <div class="search-container">
                    </div>
    </div>

	
	<form:form action="search1" method="post" modelAttribute="bean">
 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input
			path="bloodBankname" id="g3" placeholder="Enter Your bankname" style="position: relative;
    top: -41px;
    left: 379px;
    height: 34px;
    width: 265px;" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input path="bloodBankLoc" id="g1" placeholder="Enter Your location"/>

	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="submit" value="Search" id="btn" >


	</form:form>
	<%@ page isELIgnored="false"%>
	<br>
	<table border="2" width="80%" id="displaytable">
	     
		<tr>
			<th>serialNo</th>
			<th>bloodBankname</th>
			<th>bloodBankLoc</th>
			<th>bloodBankContactNumber</th>
			<th>bloodBankAddress</th>
			<th>Update</th>
			<th>Delete</th>
			<th>Availablity</th>
		</tr>
		<c:forEach var="tab" items="${li }">
			<tr>
				<td><form action="update1" method="post" modelAttribute="bean">

						<input type="text" value="${tab.serialNo}" name="serialNo"
							readonly id="c1"></td>
				<td><input type="text" value="${tab.bloodBankname}"
					name="bloodBankname" id="c1"></td>

				<td><input type="text" value="${tab.bloodBankLoc}"
					name="bloodBankLoc"id="c1"></td>

				<td><input type="text" value="${tab.bloodBankContactNumber}"
					name="bloodBankContactNumber" id="c1"></td>

				<td><input type="text" value="${tab.bloodBankAddress}"
					name="bloodBankAddress" id="c1"></td>
				<td align="center"><input type="submit" value="Update" id="input" id="c1">
					</form></td>

				<td align="center"><form method="post" action="delete1"
						modelAttribute="bean">
						<input type="hidden" value="${tab.serialNo}" name="serialNo">
						<input type="submit" value="delete" id="input" id="c1">
					</form></td>
					
					<td align="">
						
						
					<a href="./Availablity">	<input type="submit" value="Availablity" id="input" id="c1" style="background:red; color:white; border:none;width:100%; height:100%; padding:10px;" ></a>
					</td>
			</tr>

			<tr>
		</c:forEach>


	</table>

	<%@ page isELIgnored="false"%>
	<h2 align="center">${msg}</h2>
</body>
</html>