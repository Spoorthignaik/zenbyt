<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Live TV</title>
</head>
<body>
<form action="login" method="get">
  <div class="nav">
    <div class="image">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTK__L7wxH4f58z-o5ItAc4EEOcy9FAkGCDnQ&usqp=CAU" width="150px" height="100px" >
    </div>
    <div id="header" class="head">
            <h1>Live Tv Appliation</h1>
            <a href="home.html"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARMAAAC3CAMAAAAGjUrGAAAAdVBMVEX///8AAAASEhJubm7c3Ny8vLzU1NT09PT8/PzQ0ND4+Pjn5+ejo6Ps7OzAwMC1tbU3NzcLCwuLi4skJCRERER1dXWxsbGTk5MpKSnHx8dnZ2eBgYGYmJg+Pj5dXV1oaGhSUlIwMDAbGxtQUFCHh4dzc3NCQkJz8uzDAAAEsUlEQVR4nO2d63aqMBBGRcUL3hXBe0Vt3/8Rj1aChBGJ65TMCN/+p4RmZi+aQIJJowEAAAAAAAAAAAAAgGQGYTh695zecL4uIxYhTJwrnffO8U7Xc7blxCMAz/ml/dY5i99z+mXFxM347sQZmJ/Sm95PmZcXFS/92Ilj3qb48Rm7EsPiZR9nOOsannBWFk1P+DzixsFxTp5R+YNS8lYT9GF0Z3GSUc+g9JdS8mZX9WGMVJrT4rJLVbbKtyc3BipRv6jkRZUc24iLlUTK8XW5UJWb2IiKmY5K9vCq1E6VCmzFxUpym9LKLzNUZap7Y6KzVgnnPsZMVInQZlysuCrly/Pj44LjlSR4eR0k19HSdlysJO3FkB5LGuEX7U0lye9X2kb9UiWZq9Rd/fvk/uXMExcr26f3qcnN/w9XXKy0VPqpQbSu+i7ii4uVjRKQDAV4zfibk8lzcyU5ZqT0VvFn40GnCpKMo92HaCP1scZKGo2psnAbovXTH2qMGo2cedmLpr70TqqjSUYaqzz4akbS+z7pmWvLSFdS9cFXMwZpJW5x+VowqqASzw2/W//BMumEF9v/+TutSyCkFx9sHEH4EtqjsDhOu2y4jTzmL+WwMpuMLo1tcYj22bMqWRcHyAHrDMiqOD4WGLsfoZcJ64UisjW5wThyGXHnngvf0CV35vnwjTfkRXQIA/fPCObHvHquLOaTcbAkXwtzsi0hnnXO88NM3ckPMwdEOZmXdBM5enbD7D+ajYF+RJCTaYlDqX1S2yp9WJcix8lXqbV5+0x1euLD/EM2ycRY+usiZ62644topDix8G7EIl1f9oXIb3lOZhYq1BqNbN5DeU6szEGk884+6LninFh6q2iWn3cgzomlqarUhZId499Kc9K0VKWXf2W+amvskQrC2pus/qNO/QYxEOfE2mRVap5Ae+VNn3cW4cRaEJNUpalpi+5CnhNrbxZpjz1TlbvrODV20tGT94f99npHxspr7SQHOIETOMkCJxQ4ocAJhThpRnCi5T51b/MEo+xURp2dPH4514KTO+lfQ23h5Ib+RoUPJ1f0A204oWss7eGEjACHcEJ+5jOBE+JE3PyOgP+dHZyQpVHOcJKdoH45l2wPXieZNTEOcHIjvW5bujWps5PUA8/cgZOYw++l0nMjXUmtnVz5OUyzX9XeyVPgBE7gJAucUOCEAicUOKHACQVOKHBCgRMKnFDghAInFDihwAkFTihwQoETCpxQ4IQCJxQ4ocAJBU4ocEKBEwqcUOCEAieUD3JibZ3+ca4HcU6sLXlMfr4k14m1ffzMVr8W4cTa2r5GSmQ4sdWgmDUnQpxY2trez7Mg0Ymd9Y5NVzYW4uRoo8ZTjgOhTp5tCfnXGK+mL8VJ+Wsqme+5IMZJ2VtSz59lL91JqSuS9Q5Pcv8AJ86qtOX8JrSyD3HiOOdSnnwm0VtKhDm58h10Rn+2wLw36A/f+a8R6kQAfE6axcExwbc5Z6s4OCbYlLzZF1iEc3N57tzz4Nye02wg0Dq8u8tnl+GXAe/2x57Erod7Y1vPcODLItxKGuLalIuM3eXdZdQUwWkTMO+XCAAAAAAAAAAAAAAAAAAAAAAQyj/YWj4Wv9h6+gAAAABJRU5ErkJggg==" alt="Online Banking System"
                    title="Online Banking Website"></a>
        </div>
   
 
  </div>
  
	<div class="container">
		<h2>Live_TV<span>
		</span></h2>
		<div class="text">
			<h2>Sign in</h2>
			<p>Stay updated on your professional world</p>
		</div>
				<span style="color: red">${loginMsg }</span>
		
		<div class="your-input">
			<div class="input">
				<input type="text" name="email" id="email" required />
				<label for="email">Email</label>
			</div>
			<div class="input">
				<input type="password" name="password" id="password" required />
				<label for="password">Password</label>
      </div>
		</div>
		<a class="forgot-password-link"  href="Forgot.jsp">Forgot_Password?</a>
		<button>Sign in</button>
		<p class="join-link">
		<a href="https://www.apnabank.co.in/" class="link">	New User?</a>
		<a href="CustomerReg.jsp" class="join-now">Register now</a>
		</p>
	</div>
	</form>
</body>

<style>
  @import url('https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap');

body{
    background-color: black;
  
   }
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
	font-family: 'Roboto', sans-serif;
    color: #000;
}
h1{
    text-align: center;
    font-family: 'Times New Roman', serif;
    font-weight:bolder;
    height:75px;
    word-spacing: 1.5px;
    letter-spacing: 5px;
    padding-top:20px;
    margin-left: -485px;
    font-size:50px;
    text-shadow: 5px 5px 5px grey;
    padding: 25px;
}
.head{
    position: fixed;
    top:0px;
    text-align: center;	
}
#header img{
    height:75px;
    width:150px;
    border-radius:20px;
    position:absolute;
    top:10px;
    left:15px;
}
img:hover{
    border:15px solid black;
    transition-duration: 0.20s;
}
#header{
    background-color:rgb(106, 90, 205) ;

    height:120px;
    width:100em;
    margin-bottom: 10px;
    /* border-bottom-left-radius: 50px;
    border-bottom-right-radius: 50px; */
}
.nav{
    width: 100%;
	height: 100px;
	top: 0%;
	background: #6a5acd ;
	/* box-shadow: 0 10px 15px rgba(179, 179, 179, 0.7); */
	position: absolute;
	backgrosund-blend-mode: lighten;
}
.apna{
    display: block;
    display: flex;
    margin-left: 450px;
    margin-top: -70px;
    font-size: larger;
}
.container {
	width: 400px;
	height: 500px;
	background:  #ff4ebedd;
	/* box-shadow: 0 10px 15px rgba(179, 179, 179, 0.7); */
	position: absolute;
	top: 60%;
	left: 50%;
	right: 50%;
	transform: translate(-50%, -50%);
	border-radius: 25px;
    color: #000;
	display: flex;
	flex-direction: column;
	justify-content: space-evenly;
	padding: 1rem;
}
.container h2{
	color: #000000;
	font-size: 1.6rem;
	text-align: center;
    font-family: 'Times New Roman', serif;
    font-weight:bolder;
    height:75px;
    word-spacing: 1.5px;
    letter-spacing: 5px;
    padding-top:20px;
    margin: 0px;
    font-size:50px;
    text-shadow: 5px 5px 5px grey;
}
.text p{
	font-size: .8rem;
	padding-top: 0.3rem;
}
.input {
	position: relative;
	width: 100%;
	height: 50px;
	margin-bottom: 0.7em;
}
.your-input input{
	width: 100%;
	height: 50px;
	padding-top: 1.1rem;
	padding-left: 9px;
	outline: none;
	border: 1px solid #8c8c8c;
	border-radius: 3px;
	transition: .2s;
}
.your-input label {
	position: absolute;
	top: 30%;
	left: 10px;
	font-size: 1.1rem;
	color: #8c8c8c;
	transition: .2s;
}
.input input:focus ~ label,
.input input:valid ~ label{
	top: 10%;
	font-size: .8rem;
	color: #000;
}
.input input:focus {
	border-width: 2px;
	border-color: #000000;
}
.forgot-password-link {
	width: 155px;
	padding: .2rem;
	font-weight: bolder;
	color: #000000;
	transition: .5s;
	border-radius: 12px;
}
.forgot-password-link:hover{
	background:rgba(10, 102, 195, 0.3);
}
button {
	height: 50px;
	background: #f7f9fa;
	outline: none;
	border: none;
	border-radius: 30px;
	color: #080808;
	font-size: 1rem;
	font-weight: bolder;
}
.link {
    text-decoration: none;
	font-weight: bolder;
	color: #000;
	border-radius: 12px;
	font-weight: bolder;
	padding: .2rem;
}
.link:hover{
	background: rgba(10, 102, 195, 0.3);
}
.join-now{
	text-decoration: none;
	font-weight: bolder;
	color: #000;
	border-radius: 12px;
	font-weight: bolder;
	padding: .2rem;
}
.join-now:hover{
	background: rgba(10, 102, 195, 0.3);
}
</style>
</html>