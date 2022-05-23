<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	div, span{
		width: 80px;
		height: 80px;
		margin: 20px;
	}
	
	div{
		background: red;
	}
	
	span{
		background: blue;
		display: block;
	}
	
	.container > div{
		width: 50px;
		height: 50px;
		margin-bottom: 20px;
		background: red;
	}
	
	.container{
		background: yellow;
		left: 20px;
		top: 20px;
		position: relative;
		/*position의 기본값은 static
		 relative로 해야 위치조정 가능 */
	}
	
	.container .box{
		background: blue;
		left: 20px;
		top: 20px;
		position: absolute;
		/*position의 relative는 원래 있어야 하는 자리에서 이동 왼쪽 20 위에서 20 */
		/*position의 absolute는 내가 가장 가까이 있는 상자를 기준으로 왼쪽에서 20 위에서 20*/
		/*position의 fixed 페이지 상에서 이동 */
		/*position의 sticky는원래 자리에 고정, 스크롤 내려도 따라옴 */
	}
	
	/* display inline 은 박스 안의 컨텐츠에맞춰서  */
	/* display block, inline-block 은 컨텐츠 사이즈에 상관없이 박스 크기(width, heigh)에 맞춰서  */
	
</style>


<title>page2</title>
</head>
<body>
	<!-- block level -->
	<div></div>
	<div></div>
	<div></div>
	
	<!-- inline level -->
	<span></span>
	<span></span>
	<span></span>
	
	
	<article class="container">
		<div></div>
		<div class="box">i`m box</div>
		<div></div>
		<div></div>
		<div></div>
		<div></div>
		<div></div>
		<div></div>
		<div></div>
		<div></div>
		<div></div>
	</article>
</body>
</html>