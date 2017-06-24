<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link rel="stylesheet" type="text/css" href="css/header.css" />
<style type="text/css">



</style>
</head>
<body>
<div id="all1">

		<div id="horizontal-menu">
                  <ul class="navbar">
                      <li id="home"><a href="#" id="home"><img id="home" src="images/home.png"
                      width="45" height="30"/></a></li>
                      <li id="logo1" >Love Your Project</li>
                      <li class="profile"><a href="#" id="profile">PROFILE</a>
                      <ul class="dropmenu">
                      	<li><a href="#">프로필 보기</a><hr style="border:solid 1px #e2e2e2"/></li>
           				<li><a href="information.do">프로필 수정</a><hr style="border:solid 1px #e2e2e2"/></li>
           				<li><a href="login.do">로그아웃</a></li>
        				 </ul>
                      
                      </li>
                  </ul>

              </div>
	
	
	
	<div id="topMenu">
		<ul class="menu">
			<li><a  href="#" id="TIME LINE">TIME LINE</a></li>
			<li>|</li>
			<li><a href="kanban.do" id="KANBAN">KANBAN</a></li>
			<li>|</li>
			<li><a href="#" id="WIKI">WIKI</a></li>
			<li>|</li>
			<li><a href="calendar.do" id="CALENDER">CALENDER</a></li>
			<li>|</li>
			<li><a href="project_member.do" id="MEMBER MANAGEMENT">MEMBER MANAGEMENT</a></li>
			<li>|</li>
			<li><a href="project.do" id="PROJECT INFORMATION">PROJECT INFORMATION</a></li>
		</ul>
	</div>
	

</div>
</body>
</html>