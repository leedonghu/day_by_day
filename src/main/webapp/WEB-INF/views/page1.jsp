<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	html{
		font-size: 10px;
	}
	
	*{
		margin: 0;
		padding: 0;
	}
	
	ul, li{
		list-style: none;
	}
	
	a{
		text-decoration: none;
		color: inherit;
	}
	
	.board_wrap{
		width: 1000px;
		margin: 100px auto;
	}
	
	.board_title{
		margin-bottom: 30px;
	}
	
	.board_title strong{
		font-size: 3rem; /*최상위의 3배 */
	}
	
	.bt_wrap{
		margin-top: 30px;
		text-align: center;
		font-size: 0;
	}
	
	.bt_wrap input{
		display: inline-block; /*부모의 font-size를 0으로해서 정확한 크기로 */
		min-width: 80px;
		padding: 10px;
		border: 1px solid #000;
		border-radius: 5px;
		font-size: 1.4rem;
	}
	
	.bt_wrap input.on{
		background: #000000;
		color: #fff;
	}
	
	.board_list{
		width: 100%;
		border-top: 2px solid #000;
	}
	
	.board_list > div {
		border-bottom: 1px solid #ddd;
	}
	
	.board_list > div.top{
		border-bottom: 1px solid #ddd;
	}
	
	.board_list > div:last-child{
		border-bottom: 1px solid #000;
	}
	
	.board_list > div > div{
		display: inline-block; /*가로로 배치 */
		text-align: center;
		padding: 15px 0; 
	}
	
	.board_list .num{
		width: 20%;
	}
	
	.board_list .content{
		width: 50%;
		text-align: left;
	}
	
	.board_list .content{
		text-align: center;
	}
	
	.board_list .id{
		width: 20%;
	}
	
	.board_page{
		margin-top: 30px;
		text-align: center;
		font-size: 0;
	}
	
	.board_page a{
		display: inline-block;
		width: 32px;
		height: 32px;
		box-sizing: border-box;
		border: 1px solid #ddd;
		border-left: 0;
		vertical-align: middle;
		line-height: 100%;
	}
	
	.board_page a.bt{
		font-size: 1.2rem;
		padding-top: 10px;
	}
	
	.board_page a.num{
		font-size: 1.4rem;
		padding-top: 9px;
	}
	
	.board_page a.num.on{
		border-color: #000;
		background: #000;
		color: #fff;
	}
	
	.board_page a:first-child{
		border-left: 1px solid #ddd;
	}
</style>


<title>page1</title>
</head>
<body>
	<h1>page1</h1>
	<div class="board_wrap">
		<div class="board_title">
			<strong>page1</strong>
		</div>
		<div class="board_list_wrap">
			<div class="board_list">
				<div class="top">
					<div class="num">번호</div>
					<div class="content">내용</div>
					<div class="id">id</div>
				</div>
				<div>
					<c:forEach items="${list }" var="i" varStatus="status">
						<div class="num">${status.index +1 }</div>
						<div class="content">${i.content }</div>
						<div class="id">${i.name }</div>
					</c:forEach>
				</div>
			</div>
			
			<div class="board_page">
			
			</div>
			
			<div class="board_page">
				<a href="#" class="bt first"><<</a>
				<a href="#" class="bt prev"><</a>
				<a href="#" class="num on">1</a>
				<a href="#" class="bt next">></a>
				<a href="#" class="bt last">>></a>
			</div>
			<div class="bt_wrap">
				<form action="${appRoot }/page/1/insert" method="post">
					<input type="text" style="width:750px; height:50px; font-size: 15px;"placeholder="내용을 입력해주세요" name="content"></input>
					<input type="text" name="name" style="width:50px; height:50px; font-size: 15px;" placeholder="id를 입력해주세요">
					<input class="on" type="submit" style="height: 72px;">클릭</input>
				</form>
			</div>
		</div>
	</div>
</body>
</html>