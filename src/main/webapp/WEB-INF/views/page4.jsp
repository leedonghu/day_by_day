<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<style type="text/css">
	table{
		border-collapse: collapse;
	}
	
	th, td{
		border: none;
	}
	th{
		border-bottom: 1px solid black;
	}
	
	tr{
		border: 0.1px solid black;
	}
</style>

<title>Insert title here</title>
</head>
<body>
	<div id="conts">
		<div class="page_header">
			<h2 class="title">TOP 100</h2>
		</div>
		<div class="multi_row">
			<div class="calendar_prid">
				<span class="yyymmdd">
					<span class="year"></span>
				</span>
				<span class="hhmm">
					<span class="hour"></span>
				</span>
			</div>
		</div>
		<div id="tb_list">
			<table border="1" style="width:100%">
				<thead>
					<tr>
						<th>
							<div>
								<span class="rank">순위</span>
							</div>
						</th>
						<th>
							<div>곡정보</div>
						</th>
						<th>
							<div>앨범</div>
						</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${melon }" var = "i">
						<tr class="top100">
							<td>
								<div>
									<span class="rank">${i.rank }</span>
									<span>위</span>
								</div>
							</td>
							<td>
								<div>
									<div>
										<div class="rank01">
											<span>
												${i.name }
											</span>
										</div>
										<br>
										<div class="rank2">
											<span>
												${i.artist }
											</span>
										</div>
									</div>
								</div>
							</td>
							<td>
								<div>
									<div>
										<div class="rank3">
											<span>
												${i.album }
											</span>
										</div>
									</div>
								</div>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<!-- 
		<c:forEach items="${melon }" var= "i">
			<div>${i }</div>
		</c:forEach>
	 -->
	
</body>
</html>