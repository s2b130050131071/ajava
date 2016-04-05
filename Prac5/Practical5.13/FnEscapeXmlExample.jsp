<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
<head>
<title>fn:escapeXml example</title>
</head>
<body>
<h4>Enroll no: 130050131071</h4>
<c:set var="tempStr" value="<asdf>Hello World Java</asdf>"/>

<p>With escapeXml() Function:</p>
<p>${fn:escapeXml(tempStr)}</p>

<p>Without escapeXml() Function:</p>
<p>${tempStr}</p>

</body>
</html>
