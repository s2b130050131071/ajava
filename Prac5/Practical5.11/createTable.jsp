<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<html>
	<head><title>Creating Table</title></head>
	<body>
		<h4>Enrollno: 130050131071 </h4>
		<h3>Creating Table books_details in s2b130050131071 db.</h3>
		
		<sql:setDataSource var="snapshot" driver="org.postgresql.Driver"
			url="jdbc:postgresql://127.0.0.1:5433/s2b130050131071"
			user="postgres" password="12345" />
		
		<sql:update dataSource="${snapshot}" var="count">
		CREATE TABLE books_details(id SERIAL NOT NULL,
					book_name VARCHAR(255),
					author VARCHAR(255),
					PRIMARY KEY ( id ));
		</sql:update>
		
		<h2>Table successfully created</h2>
	</body>
</html>