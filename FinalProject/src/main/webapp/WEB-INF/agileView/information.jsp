<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link rel="stylesheet" type="text/css" href="css/information.css" />
<link rel="stylesheet" href="/v-1495533137927/styles/theme-taiga.css">

</head>
<body>

	<div id="all">
		<nav id="topMenu">
			<ul class="menu">
				<li><a href="#" id="HOME">HOME</a></li>
				<li style="color: #2d2d2d">김동호 바보바보바보바보바보바보김동호 바보바보바보김동호
					바보바보바보김동호 바보바보바보김동호 바보바보바보</li>
				<li><a href="#" id="PROJECT INFORMATION">LEE EUN BEE</a></li>
			</ul>
		</nav>

		<div class="main-Kanban1">
			<div class="main-Kanban2">
				<h1>
					<span class="project-name">내 정보수정</span>
				</h1>
			</div>
		</div>

		<div class="Kanban-table">
			<div id="table-inner"></div>
		</div>
	</div>


	<div id="center">
		<div class='profile'>
			<ul>
				<li><img alt="pro" src="images/profile.png"></li>
				<li>	
					<label for="ex_filename">사진변경하기</label> <input type="file"
						id="ex_filename" class="upload-hidden">
				</li>
			</ul>
		</div>

		<div class='information'>
			<fieldset style="border: none">
				<p>
					<label for="name">NAME</label>
				</p>
				<p>
					<input type="text" name="name" id="name" placeholder="이름" />
				</p>

				<p>
					<label for="email">EMAIL</label>
				</p>
				<p>
					<input type="text" name="email" id="checkemail" placeholder="이메일">
				</p>

				<p>
					<label for="introduce">소개</label>
				</p>
				<p>
					<textarea rows="20" cols="50"></textarea>
				</p>

				<input id="save" type="submit" value="SAVE" /> <input id="cancle"
					type="reset" value="CANCLE" />
			</fieldset>
		</div>
	</div>




</body>
</html>