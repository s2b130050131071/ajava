<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
<head>
<title>fn:toUpperCase example</title>
</head>
<body>
<h4>Enroll no: 130050131071</h4>
<c:set var="tempStr" value="   Hello World Java   "/>
<p>String (1) : ${temp}</p>
<p>String (1) Length : ${fn:length(tempStr)}</p>

<c:set var="temp" value="${fn:trim(tempStr)}" />
<p>String (2) : ${temp}</p>
<p>String (2) Length : ${fn:length(temp)}</p>

</body>
</html>
