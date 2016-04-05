<%@page import="com.krut.LoginService"%>  
<p>Enroll no:130050131071</p>
<p>You are successfully logged in!</p>  
<%  
LoginService loginService=(LoginService)request.getAttribute("loginService");  
out.print("Welcome, "+loginService.getUsername());  
%>  