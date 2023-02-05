<%@page import="com.spr.MasterandStudent.dao.MasterandStudentdao"%>
<%@page import="com.spr.MasterandStudent.dao.MasterandStudentImpl"%>
<%@page import="com.spr.MasterandStudent.dto.MasterandStudent"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./style/style.css">
</head>
<body>
	
		<%
		
		MasterandStudentdao dao= new MasterandStudentImpl();
    	int id= Integer.parseInt(request.getParameter("id"));
		String name=request.getParameter("name");
		String designation=request.getParameter("designation");
		String email=request.getParameter("email");
		String password=request.getParameter("pswd");
		
		MasterandStudent ms=new MasterandStudent();
		ms.setMid(id);
		ms.setName(name);
		ms.setDesignation(designation);
		ms.setEmailid(email);
		ms.setPassword(password);
		boolean issaved=dao.saveMasterorStudent(ms);
		if(issaved){
		%>
		<section class="nav">
        <div class="nav_div sms"><a class="sms_a" id="sms" href="">Master and Student</a></div>

        <div class="nav_div">
            <ol class="nav_ol">
                <li class="nav_ol_list">
                    <a href="./login" class="nav_links"><span class="nav_links_div">You tell, I do</span></a>
                </li>
                <li class="nav_ol_list">
                    <a href="./logout" class="nav_links"><span class="nav_links_div">Logout</span></a>
                </li>
            </ol>
        </div>
    </section>
	<div class="container">
    	<h2><%=designation %> Details are Added!!!!!!</h2>
    </div>
    <%
	}
    else{
    	
    %>
    <div class="container">
    	<h2>Invalid Input!!!</h2>
    </div>
    <jsp:forward page="/login"></jsp:forward>
   <%
    }
    %>
    

</body>
</html>