<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link rel="stylesheet" type="text/css" href="css/kanban.css" />
<link rel="stylesheet" type="text/css" href="css/header.css" />
</head>
<script type="text/javascript">

</script>
<body>
	<div id="all">
	
		<jsp:include page="header.jsp"></jsp:include> 


		<div class="main-Kanban1">
			<div class="main-Kanban2">
				<h1>
					<span class="project-name">KH 파이널</span> <span class="Kanban-name">KANBAN</span>
				</h1>
				
			</div><!-- main-kanban2 end -->
		</div><!-- main-kanban1 end -->

			<form  method="get" id="form">
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
						<div id="table-inner1" class="inner">그러자 포르투갈도 변화를 줬다. 측면에서
							크로스를 올리기 시작했다. 후반 5분 오른쪽 측면에서 호날두가 볼을 잡았다. 수비수를 흔들다가 뒤로 내줬다. 뒤에서
							바로 크로스를 올렸다. 안드레 실바가 헤딩슛했다. 아킨페예프 골키퍼가 막아냈다. 13분 역습 상황이었다. 거침없이
							밀고 들어갔다. 그리고 다시 크로스를 올렸다. 반대편에서 뛰어들던 안드레 실바가 헤딩슛했다. 골문 앞에서 러시아
							수비수가 헤딩으로 막아냈다. 흐른 볼을 포르투갈의 세드리치가 중거리슛으로 연결했다. 아킨페예프 골키퍼가 선방해냈다.
							경기는 불을 뿜었다. 15분에는 러시아가 반격했다. 사메도프가 오른쪽에서 크로스를 올렸다. 이를 스몰로프가
							헤딩슛하려했다. 볼이 머리에 살짝 스치고 말았다. 이어 글루샤코프가 볼을 가지고 들어갔다. 수비수 뒷공간으로 찔렀다.
							에로킨이 잡았다. 에로킨은 그대로 반대편을 향해 크로스했다. 슈팅으로 연결되지 않았다. 17분 포르투갈이 역습으로
							나섰다. 호날두가 볼을 잡고 들어갔다. 수비수 한 명읒 제쳤다. 그리고 안드레 고메스에게 패스했다. 안드레 고메스는
							볼을 잡은 뒤 다시 문전 앞에 있는 호날두에게 볼을 올렸다. 호날두는 헤딩슛을 시도했지만 약했다. 2분 후에도 역습
							찬스를 잡았다. 호날두가 치고간 뒤 동료 선수와 2대1 패스를 주고 받았다. 아크서클 근처에서 슈팅했지만 볼이 뜨고
							말았다. 이후 러시아가 경기의 흐름을 잡았다. 포르투갈을 계속 몰아쳤다. 다만 결정력이 문제였다. 마지막 순간 골을
							넣어야하는 장면에서 마무리짓지 못했다. 포르투갈과 러시아의 차이였다.</div>

					</div>

					<div class="divi" id="divi2">
						<p>Ready</p>
						<div class="option">
							<a id="button-add-div2" href="kanbanNewMake.do">등록</a> <a href="#">수정</a>
							<a href="#">삭제</a>
						</div><!-- option end -->
						
						<!-- 내부 칸반 div -->
						<div id="table-inner2" class="inner">
							<div class="small-table">
								<div>
									<p>할당된 사람 : 안정환</p>
										<h2 id="kanban-name">
											<a href="#">제목 : MemDao</a>
									</h2>	
								</div>
							</div><!-- small-tabel end -->
						</div><!-- table-inner2 end -->
					</div> <!-- divi end -->

					<div class="divi" id="divi3">
						<p>Progress</p>
						<div class="option">
							<a id="button-add-div3" href="#">등록</a> <a href="#">수정</a> <a
								href="#">삭제</a>
						</div>
						<div id="table-inner2" class="inner"></div>
					</div>

					<div class="divi" id="divi4">
						<p>Complete</p>
						<div class="option">
							<a id="button-add-div4" href="#">등록</a> <a href="#">수정</a> <a
								href="#">삭제</a>
						</div>
						<div id="table-inner2" class="inner"></div>
					</div>


					<div class="divi" id="divi5">
						<p>test ready</p>
						<div class="option">
							<a id="button-add-div5" href="#">등록</a> <a href="#">수정</a> <a
								href="#">삭제</a>
						</div>
						<div id="table-inner2" class="inner"></div>
					</div>


					<div class="divi" id="divi5">
						<p>test ready</p>
						<div class="option">
							<a id="button-add-div5" href="#">등록</a> <a href="#">수정</a> <a
								href="#">삭제</a>
						</div>
						<div id="table-inner2" class="inner"></div>
					</div>



				</div><!-- outline end -->
				
			</div><!-- Kanban-table-header end  -->
			
		</div><!-- Kanban-table end  -->
		
	
	</div><!-- all end -->
</body>
</html>