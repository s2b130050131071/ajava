<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
<head>
<title>fn:endsWith example</title>
</head>
<body>
<h4>Enroll no: 130050131071</h4>
<c:set var="tempStr" value="Hello World Java"/>

<c:if test="${fn:endsWith(tempStr, 'World')}">
   <p>String end with Hello.<p>
</c:if>

<c:if test="${fn:endsWith(tempStr, 'Java')}">
   <p>String ends with Java.<p>
</c:if>

</body>
</html>
