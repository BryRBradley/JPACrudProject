<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="getSnack.do" method="GET">
  Snack ID: <input type="text" name="id" />
  <input type="submit" value="Show Snack" />
</form>
</body>
</html>