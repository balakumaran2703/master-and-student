<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Page</title>
</head>
<link rel="stylesheet" href="./style/style.css">
<body>
	<section class="nav">
        <div class="nav_div sms"><a class="sms_a" id="sms" href="">Master and Student</a></div>

        <div class="nav_div">
            <ol class="nav_ol">
                <li class="nav_ol_list">
                    <a href="./login" class="nav_links"><span class="nav_links_div"> Login</span></a>
                </li>
                <li class="nav_ol_list">
                    <a href="./signin" class="nav_links"><span class="nav_links_div">SignIn</span> </a>
                </li>
                <li class="nav_ol_list">
                    <a href="./contact" class="nav_links"><span class="nav_links_div">Contact US</span></a>
                </li>	
            </ol>
            
        </div>
    </section>
	<h1 align="center">SIGN IN PAGE</h1>
	
	<div class="container">
    	<div class="box form_box">
    	 <form action="save" method="post" class='login_form'>
    	 	<div class="field">
    	 		<div class="field_label">
    	 			<label for="id">ID</label>
    	 			<sup>*</sup>
    	 		</div>
    	 		<div class="field_input">
    	 			<input type="number" id="id" name="id" required="required">
    	 		</div>
    	 	</div>
    	 	<div class="field">
    	 		<div class="field_label">
    	 			<label for="mail">Name</label>
    	 			<sup>*</sup>
    	 		</div>
    	 		<div class="field_input">
    	 			<input type="text" id="name" name="name" required="required">
    	 		</div>
    	 	</div>
    	 	<div class="field">
    	 		<div class="field_label">
    	 			<label for="mail">Designation</label>
    	 			<sup>*</sup>
    	 			</div>
    	 			<div class="field">
    	 				<input type="radio" id="master" name="designation" value="master" required="required">
    	 				<label for="master" class="master">Master</label>
    	 				<input type="radio" id="student" name="designation" value="student" required="required">
    	 				<label for="student" >Student</label>
    	 		</div>
    	 	</div>
    	 	<div class="field">
    	 		<div class="field_label">
    	 			<label for="mail">Email ID</label>
    	 			<sup>*</sup>
    	 		</div>
    	 		<div class="field_input">
    	 			<input type="email" id="email" name="email" required="required">
    	 		</div>
    	 	</div>
    		<div class="field">
    	 		<div class="field_label">
    	 			<label for="pswd">Password</label>
    	 			<sup>*</sup>
    	 		</div>
    	 		<div class="field_input">
    	 			<input type="password" id="pswd" name="pswd" required="required">
    	 		</div>
    	 	</div>
    	 	<br>
    	 	<div class="field">
    	 		<div class="field_input_submit">
    	 			<input type="submit" value="REGISTER">
    	 		</div>
    	 	</div>
    	  </form>
    	</div>
    </div>
    
 
</body>
</html>