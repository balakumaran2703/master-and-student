<%@page import="com.spr.MasterandStudent.dto.MasterandStudent"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	MasterandStudent ms=(MasterandStudent)session.getAttribute("ms");
	if(ms!=null){
		session.removeAttribute("ms");
		session.invalidate();
	%>
	<jsp:forward page="/login"></jsp:forward>
	<%
	}else{
	%>
	<h1>Invalid Access!!!</h1>
	<jsp:forward page="/login"></jsp:forward>
	<%
	}
	%>

</body>
</html>