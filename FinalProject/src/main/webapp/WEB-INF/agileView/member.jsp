<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link rel="stylesheet" type="text/css" href="css/member.css" />
<link rel="stylesheet" href="/v-1495533137927/styles/theme-taiga.css">
</head>
<body>
	<div id="all">
		<nav id="topMenu">
			<ul class="menu">
				<li><a href="#" id="HOME">HOME</a></li>
				<li>|</li>
				<li><a href="#" id="TIME LINE">TIME LINE</a></li>
				<li>|</li>
				<li><a href="#" id="KANBAN">KANBAN</a></li>
				<li>|</li>
				<li><a href="#" id="WIKI">WIKI</a></li>
				<li>|</li>
				<li><a href="#" id="CALENDER">CALENDER</a></li>
				<li>|</li>
				<li><a href="#" id="MEMBER MANAGEMENT">MEMBER MANAGEMENT</a></li>
				<li>|</li>
				<li><a href="#" id="PROJECT INFORMATION">PROJECT
						INFORMATION</a></li>
			</ul>
		</nav>

		<div class="main-Kanban1">
			<div class="main-Kanban2">
				<h1>
					<span class="project-name">멤버 관리</span> <span class="Kanban-name">KANBAN</span>
				</h1>
			</div>
		</div>

		<div class="Kanban-table">
			<div id="table-inner"></div>
		</div>
	</div>

	<div id="member">
		<div id="mem_search">
			<input type="text" name="search" id="search" /> <input type="button"
				value="회원추가" id="search_btn" />
		</div>


		<div></div>

		<div id="one">
			<img alt="1" src="images/profile.png">
			<ul>
				<li style="margin-top: -18px;"><span>이은비</span></li>
				<li><span>dmsql7928(ID)</span>
			</ul>

		</div>


		<label class="switch"> <input type="checkbox">
			<div class="slider"></div>
			<span class="switch-label" data-on="On" data-off="Off"></span>
		</label>
		
		
		

	</div>

</body>
</html>