<%@page import="com.spr.MasterandStudent.dto.Activitylog"%>
<%@page import="com.spr.MasterandStudent.dto.MasterandStudent"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.spr.MasterandStudent.dao.MasterandStudentImpl"%>
<%@page import="com.spr.MasterandStudent.dao.MasterandStudentdao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Activity Log</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./style/style.css">
</head>
<body>
<section class="nav">
		<%
		MasterandStudent valid=(MasterandStudent)session.getAttribute("ms");
		if(valid!=null){
		%>
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
    <%
    	MasterandStudentdao dao=new MasterandStudentImpl();
    	ArrayList<Activitylog> activitylog=dao.allactivitylog();
    %>

	<div class="tab">
	<table border= align=center class="table1">
	<tr>
	<th>First_number</th>
	<th>Operator</th>
	<th>Second_number</th>
	<th>total</th>
	</tr>
	<%
	for(Activitylog all:activitylog){
	%>
	<tr>
	<td><%=all.getFirstnumber() %></td>
	<td><%=all.getOperator() %></td>
	<td><%=all.getSecondnumber() %></td>
	<td><%=all.getTotalcalculations()%></td>
	<%
	}
	%>
	</tr>
	</table>
	</div>
	<%
	}else{
	%>
	<div class="container">
	<h1>Invalid Access!!!</h1>
	</div>
	<jsp:forward page="/login"></jsp:forward>
	<%
	}
	%>
    
</body>
</html>