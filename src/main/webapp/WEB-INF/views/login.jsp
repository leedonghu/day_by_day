<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	:root{
		--text-color:
	}
	.body{
		margin: 0;
		font-family: 'Black Han Sans', sans-serif;
	}
	
	a{
		text-decoration: none;
		color: white;
	}
	
	.menu{
		display: flex;  /*  */
		justify-content: space-between; /* 같은 중심축기준, 아이템 사이 공간 넣어줌 */
		align-items: center; /* 아이템 수직 중간 */
		background-color: #263343;
		padding: 8px 12px;
	}
	
	.navbar_logo{
		font-size: 24px;
		color: white;
	}
	
	.navbar_logo i {
		color: #d49466;
	}
	
	.navbar_menu{
		display: flex;
		list-style: none;
		padding-left: 0;
	}
	
	.navbar_menu li:hover{
		background-color: #d49466;
		border-radius: 4px;  
	}
	
	.navbar_menu li {
		padding: 8px 12px;
	}
	
	.navbar_link{
		list-style: none;
		color: white;
		display: flex;
		padding-left: 0;
	}
	
	.navbar_link li{
		padding: 8px 12px;
	}
	
	.navbar_toggle{
		display: none;
		position: absolute;
		right: 32px;
		font-size: 24px;
		color: #d49466;
	}
	
	@media screen and (max-width: 768px){
		.menu{
			flex-direction: column;
			align-items: flex-start;
			padding: 8px 24px;
		}
		
		.navbar_menu{
			flex-direction: column;
			align-items: center;
			width: 100%;
			display: none;
		}
		
		.navbar_menu li{
			width: 100%;
			text-align: center;
		}
		
		.navbar_link{
			justify-content: center;
			width: 100%;
			display: none;
		}
		
		.navbar_toggle{
			display: block;
		}
		
		.navbar_menu.active,
		.navbar_link.active{
			display: flex;
		}
	}
	
</style>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/1a3214f3e3.js" crossorigin="anonymous"></script>
<title>nav bar</title>
</head>
<body>
	<nav class="menu">
		<div class="navbar_logo">
			<i class="fa-brands fa-accusoft"></i>
			<a href="">lee</a>
		</div>
		
		<ul class="navbar_menu">
			<li><a href="">page1</a></li>
			<li><a href="">page2</a></li>
			<li><a href="">page3</a></li>
			<li><a href="">page4</a></li>
			<li><a href="">page5</a></li>
		</ul>
		
		<ul class="navbar_link">
			<li><i class="fa-brands fa-facebook"></i></li>
			<li><i class="fa-brands fa-twitch"></i></li>
		</ul>
		
		<a class="navbar_toggle" href="#">
			<i class="fa-solid fa-bars"></i>
		</a>
	</nav>
</body>

<script type="text/javascript">
	const toggle = document.querySelector(".navbar_toggle");
	const menu = document.querySelector(".navbar_menu");
	const link = document.querySelector(".navbar_link");
	
	toggle.addEventListener("click", ()=>{
		menu.classList.toggle("active");
		link.classList.toggle("active");
	});
</script>
</html>