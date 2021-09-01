<html>

<style type="text/css">


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
<body style="background: skyblue;">

	 <a href="Adminhome">home</a>
	<!-- <div class="topnav">
	
		 <a href="view">Customer-details</a>
		 <a href="find">Search/Update</a>
		<a href="find1">BloodBankDetails</a>
        <a href="find">search</a>
		      <a href="register">Register</a>
		<div class="search-container"></div>
	</div> -->
</body>
</html>
