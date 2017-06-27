<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/ui/1.12.1/jquery-ui.min.js">
	
</script>
<link rel="stylesheet" type="text/css" href="css/kanban.css" />
<link rel="stylesheet" type="text/css" href="css/header.css" />



</head>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						var delclick = $('.divi .kanban-del');
						var adddiv = "<div class='divi' id='divi1'> <input type='button' class='kanban-del' value='삭제' /><p>New</p><div class='option'><a id='button-add-div1' href='#'>등록</a> <a href='#'>수정</a> <a href='#'>삭제</a></div> <div id='table-inner1' class='inner'></div> </div>";

						$('.kanban-reg').on('click', function() {
							//alert('teset');
							$("#outline").prepend(adddiv);
						})

						$('body').on('click', '.kanban-del', function() {
							//alert('222');
							$(this).parent().remove();
						});

					});

	
	
	
	function drag(target, e) { //드래그 시작시 호출 함수
		e.dataTransfer.setData('Text', target.id);
	};

	function drop(target, e) { //드롭시 호출 함수
		var id = e.dataTransfer.getData('Text');
		target.append(document.getElementById(id));
		e.preventDefault();
	};
</script>
<body>
	<div id="all">

		<jsp:include page="header.jsp"></jsp:include>


		<div class="main-Kanban1">
			<div class="main-Kanban2">
				<h1>
					<span class="project-name">KH 파이널</span> <span class="Kanban-name">KANBAN</span>
				</h1>

			</div>
			<!-- main-kanban2 end -->
		</div>
		<!-- main-kanban1 end -->

		<form method="get" id="form">
			<div id="search-div">
				<span class='black_window'> <input type='text'
					class='input_text' />
				</span>
				<button name="searchWord" type='submit' class='sch_smit'>검색</button>
			</div>
		</form>


		<div class="Kanban-table">
			<div class="Kanban-table-header">
				<div id="outline">
					<div class="divi" id="divi1">
						<p>New</p>
						<div class="option">
							<a id="button-add-div1" href="detail.lg">등록</a> <a href="#">수정</a>
							<a href="#">삭제</a>
						</div>


						<div id="table-inner1" class="inner" ondragover="return false;"
							ondragenter="return false;" ondrop="drop(this, event);">


							<div class="small-table" draggable="true" id="small1"
								ondragstart="drag(this, event)">
								<div>
									<p>할당된 사람 : 안정환</p>
									<h2 id="kanban-name">
										<a href="#">제목 : A</a>
									</h2>
								</div>
							</div>

							<!-- small-tabel end -->


							<div class="small-table" draggable="true" id="small2"
								ondragstart="drag(this, event)">
								<div>
									<p>할당된 사람 : 서지환</p>
									<h2 id="kanban-name">
										<a href="#">제목 : B</a>
									</h2>
								</div>
							</div>

							<!-- small-tabel end -->

						</div>
						<!-- table-inner1 end -->

					</div>


					<div class="divi" id="divi2">
						<p>Ready</p>
						<div class="option">
							<a id="button-add-div2" href="kanbanNewMake.do">등록</a> <a
								href="#">수정</a> <a href="#">삭제</a>
						</div>
						<!-- option end -->


						<!-- 내부 칸반 div -->
						<div id="table-inner2" class="inner" ondragover="return false;"
							ondragenter="return false;" ondrop="drop(this, event);">

							<div class="small-table" draggable="true" id="small3"
								ondragstart="drag(this, event)">
								<div>
									<p>할당된 사람 : 김동호</p>
									<h2 id="kanban-name">
										<a href="#">제목 : C</a>
									</h2>
								</div>
							</div>
							<!-- small-tabel end -->


							<div class="small-table" draggable="true" id="small4"
								ondragstart="drag(this, event)">
								<div>
									<p>할당된 사람 : 이은비</p>
									<h2 id="kanban-name">
										<a href="#">제목 : D</a>
									</h2>
								</div>
							</div>
							<!-- small-tabel end -->
						</div>
						<!-- table-inner2 end -->


					</div>
					<!-- divi end -->



					<div class="divi" id="divi3">
						<p>Progress</p>
						<div class="option">
							<a id="button-add-div3" href="#">등록</a> <a href="#">수정</a> <a
								href="#">삭제</a>
						</div>
						<div id="table-inner3" class="inner" ondragover="return false;"
							ondragenter="return false;" ondrop="drop(this, event);">
							<div class="small-table" id="small5"
								ondragstart="drag(this, event)" draggable="true">
								<div>
									<p>할당된 사람 : 주수경</p>
									<h2 id="kanban-name">
										<a href="#">제목 : E</a>
									</h2>
								</div>
							</div>
							<!-- small-tabel end -->
						</div>
					</div>

					<div class="divi" id="divi4">
						<p>Complete</p>
						<div class="option">
							<a id="button-add-div4" href="#">등록</a> <a href="#">수정</a> <a
								href="#">삭제</a>
						</div>
						<div id="table-inner4" class="inner"></div>
					</div>


					<div class="divi" id="divi5">
						<p>test ready</p>
						<div class="option">
							<a id="button-add-div5" href="#">등록</a> <a href="#">수정</a> <a
								href="#">삭제</a>
						</div>
						<div id="table-inner5" class="inner"></div>
					</div>


					<div class="divi" id="divi6">
						<p>test ready</p>
						<div class="option">
							<a id="button-add-div5" href="#">등록</a> <a href="#">수정</a> <a
								href="#">삭제</a>
						</div>
						<div id="table-inner6" class="inner"></div>
					</div>



				</div>
				<!-- outline end -->

			</div>
			<!-- Kanban-table-header end  -->

		</div>
		<!-- Kanban-table end  -->


	</div>
	<!-- all end -->
</body>
</html>