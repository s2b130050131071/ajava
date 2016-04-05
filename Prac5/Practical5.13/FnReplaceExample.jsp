<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
<head>
<title>fn:replace example</title>
</head>
<body>
<h4>Enroll no: 130050131071</h4>
<c:set var="tempStr" value="Hello World Java"/>

<p>String is: ${(tempStr)}</p>
<c:set var="temp" value="${fn:replace(tempStr, 
                                'Hello', 'Hi')}" />

<p>Replaced String is: ${temp}</p

</body>
</html>
