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
	<div>
		<c:forEach items="${melon }" var= "i">
			<div>${i }</div>
		</c:forEach>
	</div>
</body>
</html>