<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link rel="stylesheet" type="text/css" href="css/profile.css" />
<link rel="stylesheet" href="/v-1495533137927/styles/theme-taiga.css">

</head>
<body>


	<div id="all">

		<div id="horizontal-menu">
                  <ul class="navbar">
                      <li id="home"><a href="#" id="home"><img id="home" src="images/home.png"
                      width="45" height="30"/></a></li>
                      <li id="logo1" >Love Your Project</li>
                      <li ><a href="#" id="profile">PROFILE</a>
                      <ul class="dropmenu">
                      	<li><a href="#">프로필 보기</a><hr style="border:solid 1px #e2e2e2"/></li>
           				<li><a href="#">프로필 수정</a><hr style="border:solid 1px #e2e2e2"/></li>
           				<li><a href="#">로그아웃</a></li>
        				 </ul>
                      
                      </li>
                  </ul>

              </div>
	
	
	
	<div id="topMenu">
		<ul class="menu">
			<li><a  href="#" id="TIME LINE">TIME LINE</a></li>
			<li style="color: #2d2d2d">김동호 바보바보바보바보바보바보김동호 바보바보바보김동호
					바보바보 바보김동호 바보  ...</li>
			<li><a href="#" id="PROJECT INFORMATION">PROJECT INFORMATION</a></li>
		</ul>
	</div>
	
	<div class="main-Kanban1">
			<h1>
				<span class="project-name">KH 파이널</span> <span class="project-detail">내 정보 수정</span>
			</h1>
		</div>
	




	<div id="center">
		<div class='profile'>
			<ul>
				<li><img alt="pro" src="images/profile.png"></li>
				<li><label for="ex_filename">사진변경하기</label> <input type="file"
					id="ex_filename" class="upload-hidden"></li>
			</ul>
		</div>

		<div class='information'>
			<fieldset style="border: none">
				<p>
					<label for="name">NAME</label>
				</p>
				<p>
					<input type="text" name="name" id="name" placeholder="이름"
						data-required="true" maxlength="45" aria-invalid="false"
						style="width: 255px; height: 20px;" />
				</p>

				<p>
					<label for="email">EMAIL</label>
				</p>
				<p>
					<input type="text" name="email" id="checkemail" placeholder="이메일"
						placeholder="이름" data-required="true" maxlength="45"
						aria-invalid="false" style="width: 255px; height: 20px;">
				</p>

				<p>
					<label for="introduce">INTRODUCE</label>
				</p>
				<p>
					<textarea rows="15" cols="34" data-required="true"
						aria-invalid="false" style="margin-top: 0px; margin-bottom: 0px;"></textarea>
				</p>

				<input id="save" type="submit" value="SAVE" /> <input id="cancle"
					type="reset" value="CANCLE" />
			</fieldset>
		</div>
	</div>

</div>


</body>
</html>