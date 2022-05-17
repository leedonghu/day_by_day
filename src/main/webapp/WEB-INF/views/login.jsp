<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>



<title>Insert title here</title>
</head>
<body>
<div class="container">
	test
	${test }
	${serverTime }
	<form action="${appRoot }/test" method="get">
		<input type="text" name="test">
		<button type="submit">전송</button>
	</form>
</div>
</body>
</html>