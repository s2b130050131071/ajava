<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%@ page import="java.util.Date , java.text.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<html>
	<head><title>Part 2</title></head>
	<body>
	
		<sql:setDataSource var="snapshot" driver="org.postgresql.Driver"
			url="jdbc:postgresql://127.0.0.1:5433/s2b130050131071"
			user="postgres" password="12345" />
			
		<%
			Date DoB = new Date("2016/04/02");
			int Id = 103;
		%>	
		
		<sql:update dataSource="${snapshot}" var="count">
            UPDATE students SET dob = ? WHERE id = ?
            <sql:dateParam value="<%=DoB%>" type="DATE" />
            <sql:param value="<%=Id%>" />
        </sql:update>
        
        <sql:query dataSource="${snapshot}" var="result">
			SELECT * from students;
		</sql:query>
		
		<table border="1" width="100%">
		<tr>
			<th>Id</th>
			<th>First</th>
			<th>Last</th>
			<th>DoB</th>
		</tr>
		<c:forEach var="row" items="${result.rows }">
		<tr>
			<td><c:out value="${row.id}" /></td>
			<td><c:out value="${row.first}" /></td>
			<td><c:out value="${row.last}" /></td>
			<td><c:out value="${row.dob}" /></td>
		</tr>
		</c:forEach>
		</table>
	</body>
</html>