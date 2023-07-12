<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>showInsertForm</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/reset.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/joinForm.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/admin.css"
	type="text/css">
<link rel="stylesheet" type="text/css"
	href="https://image.yes24.com/sysimage/yesUI/yesUI.css?v=20230403"
	media="all">
<!-- 구글폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300&display=swap"
	rel="stylesheet">
<!-- 제이쿼리 최신버전 -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
#ySContent {
	width: 1200px;
}

#ySContent .ySContRow {
	width: 900px;
}

#ySContent .yesIpt {
	margin-right: 10px;
	margin-top: 10px;
}

#category {
	width: 890px;
}

.admRow .admSpan .container {
	border-top: solid 1px rgb(0, 0, 0);
	border-left: solid 1px rgb(0, 0, 0);
	align-items: center;
	display: none;
}
#seatClass{height:50px;}
#imgCol2{margin-bottom: 10px;}
#seatClass .classButton{background:#196ab3;}
</style>
</head>
<body>
	<section>
		<!-- 헤더 -->
		<c:import url="/WEB-INF/views/includes/adminHeader.jsp"></c:import>
		<!-- //헤더 -->

		<section>
			<div id="ySContent">
				<form name="" method="post"
					action="${pageContext.request.contextPath}/show/insertShowSeatClass"
					id="insertShowSeatClass">
					<div class="ySContRow w_900">
						<!-- ==================== 정보 입력 영역 시작 ==================== -->
						<div class="tm_grp">
							<h3 class="tmM_txt">
								<em class="tit_txt"><strong id="adminTit">공연 좌석클래스
										등록</strong></em>
							</h3>
						</div>

						<!-- ==================== 공연금액 입력 영역 시작 ==================== -->
						<div class="concertHall">
							<div class="imgCol">
								<strong>좌석설정</strong>
							</div>
							<div class="inpRow">
								<div>
									<div class="inpRow cols">
										<div class="inpRow">
											<div class="colGrp">
												<div class="colCell w_280">
													<span class="yesIpt b_size ipt_wSizeF hallWidth"> <input
														id="seatClass1" name="seatClass" type="text"
														class="seatClass inpwid" placeholder="좌석등급 입력">석
													</span>
												</div>
												<div class="colCell w_280">
													<span class="yesIpt b_size ipt_wSizeF hallWidth"> <input
														id="seatPrice1" name="seatPrice" type="number"
														class="inpwid" placeholder="좌석금액 입력">원
													</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="inpRow">
								<div>
									<div class="inpRow cols">
										<div class="inpRow">
											<div class="colGrp">
												<div class="colCell w_280">
													<span class="yesIpt b_size ipt_wSizeF hallWidth"> <input
														id="seatClass2" name="seatClass" type="text"
														class="seatClass inpwid" placeholder="좌석등급 입력">석
													</span>
												</div>
												<div class="colCell w_280">
													<span class="yesIpt b_size ipt_wSizeF hallWidth"> <input
														id="seatPrice2" name="seatPrice" type="number"
														class="inpwid" placeholder="좌석금액 입력">원
													</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="inpRow">
								<div>
									<div class="inpRow cols">
										<div class="inpRow">
											<div class="colGrp">
												<div class="colCell w_280">
													<span class="yesIpt b_size ipt_wSizeF hallWidth"> <input
														id="seatClass3" name="seatClass" type="text"
														class="seatClass inpwid" placeholder="좌석등급 입력">석
													</span>
												</div>
												<div class="colCell w_280">
													<span class="yesIpt b_size ipt_wSizeF hallWidth"> <input
														id="seatPrice3" name="seatPrice" type="number"
														class="inpwid" placeholder="좌석금액 입력">원
													</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="inpRow">
								<div>
									<div class="inpRow cols">
										<div class="inpRow">
											<div class="colGrp">
												<div class="colCell w_280">
													<span class="yesIpt b_size ipt_wSizeF hallWidth"> <input
														id="seatClass4" name="seatClass" type="text"
														class="seatClass inpwid" placeholder="좌석등급 입력">석
													</span>
												</div>
												<div class="colCell w_280">
													<span class="yesIpt b_size ipt_wSizeF hallWidth"> <input
														id="seatPrice4" name="seatPrice" type="number"
														class="seatClass inpwid" placeholder="좌석금액 입력">원
													</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="admRow">
							<div class="imgCol" id="imgCol2">
								<strong id="seatClass">등급선택</strong>
							</div>
							<span class="admSpan" > <span class="container"></span>
							</span>
						</div>


						<div class="yesFormBtn">
							<div class="formBtn_btn">
								<a id="insertButton" href="#none"
									class="btnC xb_size btn_blue btn_wSizeH "> <span
									class="bWrap"><em id="emtxt" class="txt">등록</em></span>
								</a> <a id="cencleConcertHall" href=""
									class="btnC xb_size btn_blue btn_wSizeH "> <span
									class="bWrap"><em id="emtxt" class="txt">취소</em></span>
								</a>
							</div>
						</div>
					</div>
				</form>
				<div id="wrapperContent"></div>
			</div>
		</section>
	</section>
</body>

<script>
	$(document).ready(function() {
			
		//좌석정보등록
		$(".seatClass").on("change",function(){
			var seatClass = $(this).val();
			var item = '&nbsp;<button type="button" class="classButton" id='+seatClass+'>'+seatClass+'</button>';
			
			$("#seatClass").append(item);
			
		});
		
		//좌석배치 미리보기

		var num1 = 65 + Number('${concertHall.concertHallWidth}');		
		var num2 = '${concertHall.concertHallHeight}';
		
		var container = $('.container'); // .container 요소를 변수에 저장
		container.empty(); // .container 내부를 비움
		container.css({ 'grid-template-columns': 'repeat(' + num2 + ', 30px)', 'display' : 'grid', 'width' : + num2 * 30 + 'px' });// display 속성을 grid로 설정
		
		for (var i = 65; i < num1; i++) {
			  for (var j = 1; j <= num2; j++) {
			    var seatNo = String.fromCharCode(i) + j;
			    var item = $('<span>').addClass('item').text(seatNo).attr("id",seatNo);
			    container.append(item);		
			  }
			}
		container.show();
			
			
		//공연등록
		$("#insertButton").on("click", function() {
			console.log("등록");
			$("#insertShowSeatClass").submit();
		});
		
		
	});
</script>
</html>