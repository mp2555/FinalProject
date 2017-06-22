<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link rel="stylesheet" type="text/css" href="css/project.css" />
<link rel="stylesheet" type="text/css" href="css/header.css" />

</head>

<body>
<div id="all">
<jsp:include page="header.jsp"></jsp:include> 


		<div class="main-Kanban1">
			<h1>
				<span class="project-name">KH 파이널</span> <span class="project-detail">프로젝트 세부사항</span>
			</h1>
		</div>
	

<div id="form">

<div id="logo">
<p>
<img alt="logo" class="image" src="images/logo.png" 
style="background: rgb(213, 156, 156);">
</p>

<div class="filebox"> <label for="ex_file">로고 변경하기</label> <input type="file" id="ex_file"> </div>
</div>


<div id="aaa">
<label >PROJECT NAME</label>
<p>
<input type="text" name="pname" id="pname" data-required="true" maxlength="45" aria-invalid="false"
style="width:255px; height:20px;">
</p>


<label>DISCRIPTION</label>
<p>
<textarea name="description" id="descripction" data-required="true" aria-invalid="false"  
style="margin-top: 0px; margin-bottom: 0px; width:250px; height: 160px; "></textarea>
</p>

</div>

&nbsp;<button type="submit" title="저장" >저장</button> &nbsp;&nbsp;&nbsp;
<button title="프로젝트 삭제하기" class="delete">프로젝트 삭제하기</button>
</div>
</div>
</body>
</html>