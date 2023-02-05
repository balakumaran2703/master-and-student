<%@page import="com.spr.MasterandStudent.dao.MasterandStudentdao"%>
<%@page import="com.spr.MasterandStudent.dto.MasterandStudent"%>
<%@page import="com.spr.MasterandStudent.dao.MasterandStudentImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./style/style.css">
</head>
<body>
			<% 
		MasterandStudentdao dao= new MasterandStudentImpl();
		String email=request.getParameter("email");
		String password=request.getParameter("pswd");
		MasterandStudent ms= dao.loginvalidate(email, password);
		if(ms != null){
			session.setAttribute("ms",ms);
			if(ms.getDesignation().equalsIgnoreCase("master")){
		%>
	<section class="nav">
        <div class="nav_div sms"><a class="sms_a" id="sms" href="./login">Master and Student</a></div>

        <div class="nav_div">
            <ol class="nav_ol">
                <li class="nav_ol_list">
                    <a href="./login" class="nav_links"><span class="nav_links_div">Student Login</span></a>
                </li>
                <li class="nav_ol_list">
                    <a href="./logout" class="nav_links"><span class="nav_links_div">Logout</span></a>
                </li>
            </ol>
            
        </div>
    </section>
    <div class="container">
    	<h2>WELCOME <%= ms.getName()%></h2>
    	<h2>Master Login</h2>
    </div>
    <div class="container">
    	<div class="box form_box">
    	 <form action="operator" method="get" class='login_form'>
    	 	<div class="field">
    	 		<div class="field_label">
    	 			<label for="first">First Number</label>
    	 			<sup>*</sup>
    	 			<select name="first" class="input" required="required">
    	 			<option value="">Select a Value</option>
    	 			<option value="0">Zero</option>
    	 			<option value="1">One</option>
    	 			<option value="2">Two</option>
    	 			<option value="3">Three</option>
    	 			<option value="4">Four</option>
    	 			<option value="5">Five</option>
    	 			<option value="6">Six</option>
    	 			<option value="7">Seven</option>
    	 			<option value="8">Eight</option>
    	 			<option value="9">Nine</option>
    	 			</select>
    	 		</div>
    	 		
    	 	</div>
    	 	<div class="field">
    	 		<div class="field_label">
    	 			<label for="operator">Operation</label>
    	 			<sup>*</sup>
    	 			<select name="operator" class="input" required="required">
    	 			<option value="">Select a operator</option>
    	 			<option value="plus">Add</option>
    	 			<option value="minus">Subtract</option>
    	 			<option value="times">Multiply</option>
    	 			<option value="divided_by">Divide</option>
    	 			</select>
    	 			
    	 		</div>
    	 	</div>
    	 	<div class="field">
    	 		<div class="field_label">
    	 			<label for="second">Second_number</label>
    	 			<sup>*</sup>
    	 			<select name="second" class="input" required="required">
    	 			<option value="">Select a Value</option>
    	 			<option value="0">Zero</option>
    	 			<option value="1">One</option>
    	 			<option value="2">Two</option>
    	 			<option value="3">Three</option>
    	 			<option value="4">Four</option>
    	 			<option value="5">Five</option>
    	 			<option value="6">Six</option>
    	 			<option value="7">Seven</option>
    	 			<option value="8">Eight</option>
    	 			<option value="9">Nine</option>
    	 			</select>
    	 			</div>
    	 			
    	 	</div>
    	  	<br>
    	 	<div class="field">
    	 		<div class="field_input_submit">
    	 			<input type="submit" value="Calculate">
    	 		</div>
    	 	</div>
    	  </form>
    	</div>
    </div>
    <%
		}
    else {
    %>
    <section class="nav">
        <div class="nav_div sms"><a class="sms_a" id="sms" href="./login">Master and Student</a></div>

        <div class="nav_div">
            <ol class="nav_ol">
                <li class="nav_ol_list">
                    <a href="./login" class="nav_links"><span class="nav_links_div">Master Login</span></a>
                </li>
                <li class="nav_ol_list">
                    <a href="./allactivity" class="nav_links"><span class="nav_links_div">Activity Log</span></a>
                </li>
                <li class="nav_ol_list">
                    <a href="./logout" class="nav_links"><span class="nav_links_div">Logout</span></a>
                </li>
            </ol>
            
        </div>
    </section>
    <div class="container">
    	<h2>WELCOME <%= ms.getName()%></h2>
    	<h2>Student Login</h2>
    	
    </div>
    <%
    }
	%>
    <% 
	}
    else {
    %>
    <div class="container">
    	<h2>INVALID CREDENTIALS!!!</h2>
    </div>
    <jsp:include page="/login"></jsp:include>
    <%
    }
    %>
    

</body>
</html>