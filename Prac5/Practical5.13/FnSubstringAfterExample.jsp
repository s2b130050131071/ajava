<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
<head>
<title>fn:substringAfter example</title>
</head>
<body>
<h4>Enroll no: 130050131071</h4>
<c:set var="tempStr" value="Hello World Java"/>

<c:set var="temp" value="${fn:substringAfter(tempStr, 'Hello')}" />

<p>String after Hello : ${temp}</p>



</body>
</html>