

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%!boolean hasUser; %>

<% 
	
	if(session.getAttribute("authUser")==null){
		
		response.sendRedirect("/TBanking/login.jsp");
	};
	
%>    