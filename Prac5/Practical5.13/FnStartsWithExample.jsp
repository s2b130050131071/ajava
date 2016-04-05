<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
<head>
<title>fn:startsWith example</title>
</head>
<body>
<h4>Enroll no: 130050131071</h4>
<c:set var="tempStr" value="Hello World Java"/>

<c:if test="${fn:startsWith(tempStr, 'Hello')}">
   <p>String starts with Hello.<p>
</c:if>

<c:if test="${fn:endsWith(tempStr, 'Java')}">
   <p>String starts with Java.<p>
</c:if>

</body>
</html>
