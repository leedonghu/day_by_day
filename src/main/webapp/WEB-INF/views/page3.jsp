<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	.container{
		background: beige;
		height: 50vh; /* %로 지정하면 부모(body, html)까지 %로 지정해야 함  */
		display: flex; /*flexbox 지정 */
		flex-direction: row; /* row는 수평축이 중심
		column 은 수직축이 중심 */
		flex-wrap: nowrap; /* 기본값이 nowrap 화면이 작아져도 항상 한줄에 붙어있음
		wrap으로 지정하면 화면 크기에 맞춰 item 이동 */
		justify-content: space-evenly; /*아이템의 배치 방법. 중심축을 기준으로*/
		align-items: baseline; /*반대축을 중심으로 아이템 배치 방법 */
		align-content: space-between;
	}
	
	.item{
		width: 40px;
		height: 40px;
		border: 1px solid black;
	}
	
	.item1{
		background: #ef9a9a;
	}
	
	.item2{
		background: #f48fb1;
	}
	
	.item3{
		background: #ce93d8;
	}
	
	.item4{
		background: #b39ddb;
	}
	
	.item5{
		background: #90caf9;
	}
	
	.item6{
		background: #a5d6a7;
	}
	
	.item7{
		background: #ffeb3b;
	}
	
	.item8{
		background: #fb8c00;
	}
	
	.item9{
		background: #f4511e;
	}
	
	.item10{
		background: #dd2c00;
	}
	
	.container2{
		padding-top: 100px;
		background: beige;
		height: 100hv;
		display: flex;
	}
	
	.item2{
		width: 40px;
		height: 40px;
		border: 1px solid black;
	}
	
	.item21{
		background: #f4511e;
		flex-grow: 2; /*화면이 커질때 조정 */
		flex-shrink: 1; /*화면이 작아졌을때 크기 조정 */
		flex-basis: 60%; /*컨테이너의 크기에 맞춰서 크기 조정(항상 60%의 크기를 유지) */
		align-self: center; /*아이템 별로 배치 가능 */
	}
	
	.item22{
		background: #fb8c00;
		flex-grow: 1;
	}
	
	.item23{
		background: #ffeb3b;
		flex-grow: 1;
	}
	
	/* */	
</style>


<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="item item1">1</div>
		<div class="item item2">2</div>
		<div class="item item3">3</div>
		<div class="item item4">4</div>
		<div class="item item5">5</div>
		<div class="item item6">6</div>
		<div class="item item7">7</div>
		<div class="item item8">8</div>
		<div class="item item9">9</div>
		<div class="item item10">10</div>
		
	</div>
	
	<div class="container2">
		<div class="item2 item21">1</div>
		<div class="item2 item22">2</div>
		<div class="item2 item23">3</div>
	</div>
</body>
</html>