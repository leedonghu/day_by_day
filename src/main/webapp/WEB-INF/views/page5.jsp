<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	:root{
		/*color */
		--white-color: #fff;
		--black-color: #140a00;
		--blue-color: #045fd4;
		--red-color: #ff0000;
		--gray-dark-color: #909090;
		--grey-light-color: #e0e0e0;
		
		/* size */
		--padding: 12px;
		--avatar-size: 36px;
		
		/* font size */
		--font-large: 18px;
		--font-medium: 14px;
		--font-small: 12px;
		--font-micro: 10px;
	}
	
	*{
		margin: 0;
		padding: 0;
		box-sizing: border-box;
	}
	
	body{
	
	}
	
	ul{
		list-style: none;
	}
	
	button, button:focus{
		border: none;
		cursor: pointer;
		outline: none;
	}
	
	header{
		display: flex;
		justify-content: space-between;
		padding: var(--padding);
		background-color: var(--black-color);
		color: var(--white-color);
	}
	
	header .logo{
		font-size: var(--font-large);
	}
	
	header .logo i{
		color: var(--red-color);
	}
	
	header .icon .fa-search{
		margin-right: var(--padding);
	}
	
	/*video */
	.player{
		position: sticky;
		top: 0; /* 위에 고정*/
		text-align: center;
		background-color: var(--black-color);
	}
	
	.player video{
		width: 100%;
		height: 400px;
		max-width: 1000px;
	}
	
	body > .info{
		padding: var(--padding);
	}
	
	.info .metadata .hashtags{
		display: flex;
		font-size: var(--font-small);
		color: var(--blue-color);
	}
	
	.info .metadata .hashtags li{
		margin-right: var(--padding);
	}
	
	.info .metadata .titleAndButton{
		display: flex;
	}
	
	.info .metadata .titleAndButton .title{
		font-size: var(--font-miedium);
		display: -webkit-box;
  		-webkit-box-orient: vertical;
  		-webkit-line-clamp: 2;
  		overflow: hidden;
  		margin-right: var(--padding);
	}
	
	.info .metadata .titleAndButton .moreBtn{
		height: 100%;
	}
	
	.info .views{
		font-size: var(--font-small);
		color: var(--grey-dark-color);
	}
	
	.info .action{
		display: flex;
		justify-content: space-around;
		margin: var(--padding) 0;
	}
	
	.info .action button{
		display: flex;
		flex-direction: column;
		font-size: var(--font-small);
		color: var(--grey-dark-color);
	}
	
	.info .action button i{
		margin: 0 auto;
		margin-bottom: calc(var(--padding) / 2);
		font-size: 16px;
	}
	
	.info .action button i.active{
		color: var(--blue-color);
	}
	
	/*channel */
	.channel{
		display: flex;
		justify-content: space-between;
		border-top: 1px solid var(--grey-light-color);
		border-bottom: 1px solid var(--grey-light-color); 
	}
	
	.channel .metadata{
		display: flex;
		align-items: center;
	}
	
	.channel .metadata .info{
		display: flex;
		flex-direction: column;
	}
	
	.channel .metadata img{
		width: var(--avatar-size);
		height: var(--avatar-size);
		border-radius: 50%;
	}
	
	.channel .metadata .info .subscribers{
		font-size: var(--font-small);
		color: var(--grey-dark-color);
	}
	
	.channel .subscribe{
		text-transform: uppercase;
		color: var(--red-color);
		font-size: var(--font-medium);
	}
	
	/* upnext */
	
	.upNext{
		padding: 0 var(--padding);
	}
	
	.upNext > .title{
		font-size: var(--font-medium);
		color: var(--grey-dark-color);
		margin-bottom: calc(var(--padding) / 2);
	}
	
	.upNext .item{
		display: flex;
		margin-top: var(--padding);
	}
	
	.upNext item .img{
		flex: 1 1 35%;
		margin-right: var(--padding);
	}
	
	.upNext .item .img img{
		width: 100%;
	}
	
	.upNext .item .info{
		flex: 1 1 60%;
	}
	
	.upNext .item .moreBtn{
		height: 100%;
		flex: 1 1 5%;
	}
	
	.upNext .item .info{
		display: flex;
		flex-direction: column;
	}
	
	.upNext .item .info .title{
		font-size: var(--font-small);
	}
	
	.upNext .item .info .name,
	.upNext .item .info .views{
		font-size: var(--font-medium);
	}
	
	.infoAndUpNext{
		display: flex;
		flex-direction: column;
	}
	
	@media screen and (min-width: 1000px){
		.infoAndUpNext{
			flex-direction: row;
			margin: var(--padding) 0;
		}
	}
</style>

<script src="https://kit.fontawesome.com/1a3214f3e3.js" crossorigin="anonymous"></script>
<title>youtube mobile</title>
</head>
<body>
	<header>
		<div class="logo">
			<i class="fab fa-youtube"></i>
			<span class="title">Youtube</span>
		</div>
		<div class="icon">
			<i class="fas fa-search"></i>
			<i class="fas fa-ellipsis-v"></i>
		</div>
	</header>
	<!-- video player -->
	<section class="player">
		<video controls src="${appRoot }/resources/video/EiffelTower.mp4"></video>
	</section>
	
	<div class="infoAndUpNext">
		<!-- video info -->
		<section class="info">
			<div class="metadata">
				<ul class="hashtags">
					<li>#clone</li>
					<li>#coding</li>
					<li>#good</li>
				</ul>
				<div class="titleAndButton">
					<span class="title">
						가나다라마바사아자차카타파하 
						가나다라마바사아자차카타파하 
						가나다라마바사아자차카타파하 
						가나다라마바사아자차카타파하
						가나다라마바사아자차카타파하
						가나다라마바사아자차카타파하
						가나다라마바사아자차카타파하
						가나다라마바사아자차카타파하
						가나다라마바사아자차카타파하
					</span>
					<button class="moreBtn">
						<i class="fas fa-caret-down"></i>
					</button>
				</div>
				<div class="views">
					<span class="views">1M views 1month ago</span>
				</div>
			</div>
			<ul class="action">
				
					<li>
						<button>
							<i class="active fas fa-thumbs-up"></i>
							<span>1</span>
						</button>
					</li>
					<li>
						<button>
							<i class="fas fa-thumbs-down"></i>
							<span>1</span>
						</button>
					</li>
					<li>
						<button>
							<i class="fas fa-share"></i>
							<span>share</span>
						</button>
					</li>
					<li>
						<button>
							<i class="fas fa-plus"></i>
							<span>save</span>
						</button>
					</li>
					<li>
						<button>
							<i class="fab fa-font-awesome-flag"></i>
							<span>report</span>
						</button>
					</li>
				
			</ul>
			<div class="channel">
				<div class="metadata">
					<img alt="" src="${appRoot }/resources/img/img.jpg">
					<div class="info">
						<span class="name">
						Donghu
						</span>
						<span class="subscribers">1M</span>
					</div>
				</div>
				<button class="subscribe">subscribes</button>
			</div>
		</section>
		<section class="upNext">
			<span class="title">up next</span>
			<ul>
				<li class="item">
					<div class="img">
						<img alt="" src="${appRoot }/resources/img/a.jpg"/>
					</div>
					<div class="info">
						<span class="title">aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</span>
						<span class="name">aaa</span>
						<span class="views">1M</span>
					</div>
					<button class="moreBtn"><i class="fas fa-ellipsis-v"></i></button>
				</li>
				<li class="item">
					<div class="img">
						<img alt="" src="${appRoot }/resources/img/b.jpg"/>
					</div>
					<div class="info">
						<span class="title">Bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb</span>
						<span class="name">Bbb</span>
						<span class="views">2M</span>
					</div>
					<button class="moreBtn"><i class="fas fa-ellipsis-v"></i></button>
				</li>
				<li class="item">
					<div class="img">
						<img alt="" src="${appRoot }/resources/img/c.jpg"/>
					</div>
					<div class="info">
						<span class="title">Ccccccccccccccccccccccccccccccc</span>
						<span class="name">Ccc</span>
						<span class="views">3M</span>
					</div>
					<button class="moreBtn"><i class="fas fa-ellipsis-v"></i></button>
				</li>
			</ul>
		</section>
	</div>
</body>
<script type="text/javascript">
	const moreBtn
</script>
</html>