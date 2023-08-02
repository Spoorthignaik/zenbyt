<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Live TV</title>
</head>
<body>
   
	<form action="liveTv" method="post">
		<div class="main">
			<div class="navbar">
				<div class="icon">
					<h2 class="logo">Live_TV</h2>
				</div>

                <div class="dropdowns">
                    <button class="dropbtn">Dropdown</button>
                    <div class="dropdowns-content">
                      <a href="SearchById.jsp">SearchById</a>
                      <a href= "FindByNameAndBranch.jsp">FindByNameAndBranch</a>
                       <a href= "findAll">FindAll</a>
                      
 
                    </div>
                </div>
              </div>

				<div class="search">
					<!-- <input class="srch" type="search" name=""
						placeholder="Type To text"> <a href="#">
						<button class="btn">Search</button>
					</a> -->
				</div>
			</div>
			
		  <div class="form">
		  <h2>Basic Details</h2>		
          <div>
          	<span style="color: green">${success }</span><br>
          	<span style="color: red">${pass }</span>
            <c:forEach items="${error }" var="e">
            <span style="color: red">${e.message }</span><br>
            </c:forEach>
            </div>
					<input type="text" name="name" placeholder="Enter Full Name" value="${dto.name }">
				    <input type="text" name="phoneNums" placeholder="Phone Number" value="${dto.phoneNums }">
					<input type="text" name="password" placeholder="Enter Password" >
                    <input type="text" name="reenterpas" placeholder="Re Enter Password" >
					<button class="btnn" href="index.jsp">Sign-Up</button>
					 <p class="link">Already have an account<br>
                    <a href="index.jsp">Log-in </a> here</a></p>

				</div>
			</div>
		</div>
		</div>
		</div>
	</form>
  <!-- <div class="content">
				<h1>
					<b>Apna Account</b> <br> <b></b><span>Registration</span> <br>Form</b>
				</h1>
				<br> <br> <br>
				<button class="cn">
					<a href="index.jsp">Home_Page</a>
				</button>
            </div> -->
</body>
<style>
* {
	margin: 0;
	padding: 0;
}
body {
	width: 100%;
    background-image: url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5KSP8Z2fPdVoEWL7w-JBgR9m0YyXdizpJCw&usqp=CAU");
    background-position: center;
	background-size: cover;
	height: 100vh;
}
/* .navbar {
    display: flexbox;
	margin-top: 0px;
} */
.icon {
	width: 200px;
	float: left;
	height: 70px;
}
.logo {
    display: flexbox;
    background-image: url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5KSP8Z2fPdVoEWL7w-JBgR9m0YyXdizpJCw&usqp=CAU");
    width: 1800px;
	margin: auto;
    margin-top: 0px;
    margin-right: -25px;
    padding: 35px;
    background-size: 100%;
	color: black;	
}
.menu {
	width: 400px;
	float: left;
	height: 70px;
}
ul {
	float: left;
	display: flex;
	justify-content: center;
	align-items: center;
}
ul li {
	list-style: none;
	margin-left: 60px;
	margin-top: 27px;
	font-size: 14px;
}
ul li a {
	text-decoration: none;
	color: #fff;
	font-family: Arial;
	font-weight: bold;
	transition: 0.4s ease-in-out;
}
ul li a:hover {
	color: #ff7200;
}
.search {
	width: 300px;
	float: left;
	margin-left: 280px;
}
.srch {
	font-family: 'Times New Roman';
	width: 200px;
	height: 40px;
	background: transparent;
	border: 1px solid #ff7200;
	margin-top: 13px;
	color: #fff;
	border-right: none;
	font-size: 16px;
	float: left;
	padding: 10px;
	border-bottom-left-radius: 5px;
	border-top-left-radius: 5px;
}
.btn {
	width: 100px;
	height: 40px;
	background: #ff7200;
	border: 2px solid #ff7200;
	margin-top: 13px;
	color: #fff;
	font-size: 15px;
	border-bottom-right-radius: 5px;
	border-bottom-right-radius: 5px;
	transition: 0.2s ease;
	cursor: pointer;
}
.btn:hover {
	color: #000;
}
.btn:focus {
	outline: none;
}
.srch:focus {
	outline: none;
}
.content {
	width: 1200px;
	height: auto;
	margin: auto;
	color: #fff;
	position: fixed;
    margin-left: 650px;
}
.content .par {
	
	padding-left: 20px;
	padding-bottom: 15px;
	font-family: Arial;
	letter-spacing: 1.2px;
	line-height: 20px;
   
}
.content h1 {
	font-family: 'Times New Roman';
	font-size: 50px;
	padding-right: 20px;
	margin-top: 150px;
	letter-spacing: 2px;
}
.content .cn {
	width: 160px;
	height: 40px;
	background: #ff7200;
	border: none;
	margin-top: -55px;
	margin-left: 20px;
	font-size: 18px;
	border-radius: 10px;
	cursor: pointer;
	transition: .4s ease;
}
.content .cn a {
	text-decoration: none;
	color: #000;
	transition: .3s ease;
}
.cn:hover {
	background-color: #fff;
}
.content span {
	color: #ff7200;
	font-size: 60px
}
.form {
	width: 250px;
	position: absolute;
	top: 130px;
	left : 60px;
	transform: translate(0%, -5%);
	border-radius: 10px;
	padding: 60px;
	height: auto;
}
.form h2 {
	width: 220px;
	font-family: sans-serif;
	text-align: center;
	color: white;
	font-size: 22px;
	background-color: #ff7200;
	border-radius: 10px;
	margin: 2px;
	padding: 8px;
}
.form input {
	width: 240px;
	height: 30px;
	background: transparent;
	border-bottom: 1px solid #ff7200;
	border-top: none;
	border-right: none;
	border-left: none;
	color: #fff;
	font-size: 15px;
	letter-spacing: 1px;
	margin-top: 5px;
	font-family: sans-serif;
}
.form input:focus {
	outline: none;
}
::placeholder {
	color: #fff;
	font-family: Arial;
}
.btnn {
	width: 240px;
	height: 40px;
	background: #ff7200;
	border: none;
	margin-top: 30px;
	font-size: 18px;
	border-radius: 10px;
	cursor: pointer;
	color: #fff;
	transition: 0.4s ease;
}
.btnn:hover {
	background: #fff;
	color: #ff7200;
}
.btnn a {
	text-decoration: none;
	color: #ff7200;
	font-weight: bold;
}
.form .link {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 17px;
	padding-top: 10px;
	text-align:center;
	left:25px;
    margin:auto;
    color: #ffffff;
}
.form .link a {
	text-decoration: none;
	
	color: #ff7200;
}
.liw {
	padding-top: 15px;
	padding-bottom: 10px;
	text-align: center;
}
.icons a {
	text-decoration: none;
	color: #fff;
}
.icons ion-icon {
	color: #fff;
	font-size: 30px;
	padding-left: 14px;
	padding-top: 5px;
	transition: 0.3s ease;
}
.icons ion-icon:hover {
	color: #ff7200;
}
/* The container <div> - needed to position the dropdown content */
.dropdowns {
 position: relative;
 display: inline-block;
} 
  /* Dropdown Button */
.dropbtn {
 margin-top: 10.5px; 
 position:relative;
 background-color: #040404;
 margin-left: 950px;
 color: white;
 padding: 25px;
 font-size: 25px;
 border: none;
 
}
/* Dropdown Content (Hidden by Default) */
.dropdowns-content {
 display: none;
 position: relative;
 background-color: #f1f1f1;
 min-width: 60px;
 margin-left: 950px;
 margin-top: 5px;
}
/* Links inside the dropdown */
.dropdowns-content a {
 color: black;
 padding: 5px;
 text-decoration: none;
 display: block;
 color: purple;
 opacity: .5px;
}
/* Change color of dropdown links on hover */
.dropdowns-content a:hover {background-color: #ff7200;}
/* Show the dropdown menu on hover */
.dropdowns:hover .dropdowns-content {display: block;}
/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdowns:hover .dropbtn {background-color: #ff7200 ;}
</style>
</html>