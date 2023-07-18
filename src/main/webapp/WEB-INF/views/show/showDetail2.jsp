<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detail</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/reset.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/sub.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/detail.css"
	type="text/css">
<!-- 구글폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300&display=swap"
	rel="stylesheet">
<!-- 제이쿼리 최신 버전 -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<!-- 다음지도API -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1d8e22ec81bcdc862373ee6f17fdef96&libraries=services"></script>
<!-- 풀켈린더js -->
<script type="text/javascript"
	src='${pageContext.request.contextPath }/assets/js/index.global.min.js'></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
<style>
#map {margin: 0 auto;}
#cName {width: 150px;text-align: center;padding: 4px 0;font-size: 19px;}
#cName img {width: 20px;}
#ticketingdiv {text-align: center;}
#ticketingdiv div {padding: 5px;width: 250px;background: #f43142;margin: 0 auto;border: 2px solid #f43142;}
.ticketing {font-size: 20px;color: #fff;display: block; height:100%;}

.concertHall .position{margin-bottom: 50px;}
.concertHall .position{width: 1178px;display: flex;border: solid 1px #ec7d2c; padding: 10px;}
.concertHall .position #calendar,#dayList{margin-right: 20px; width: 390px;}
.concertHall .position #remainingSeats{ width: 355px;}
.concertHall .position h2{font-size: 20px;}
.concertHall .position .fc-scrollgrid-sync-table a{font-size: 12px; cursor: pointer;}
.concertHall .position .fc .fc-button{font-size: 12px;}
.position #calendar .fc-view-harness .fc-col-header .fc-col-header-cell{width:55px;}
.position #calendar .fc-scrollgrid-section .fc-scrollgrid-sync-table tbody .fc-day{width:55px;}
.fc .fc-daygrid-body-unbalanced .fc-daygrid-day-events {min-height: 0em;}
#fc-dom-87{border-bottom: solid 2px;}
#remaining{border: 1px solid #ddd;height: 200px;margin-top: 15px;padding: 10px; }
#remainingSeats h2{height: 55px;}
#remainingSeats .fc-view-harness{padding: 10px;}
</style>
</head>
<body>
	<!-- 헤더 -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- //헤더 -->
	<section>
		<div class="renew-wrap">
			<div class="renew-content">				
				<div class="rn-02">
					<!--제목-->
					<p class="rn-big-title">${show.showName}</p>
					<div class="rn-product-short-data">
						<p>
							<span class="ps-date">${show.startDate} ~ ${show.endDate}</span><a
								href="#map" id="ps-location"><span class="ps-location">공연장
									위치보기</span></a>
						</p>
					</div>
				</div>
				<!--rn-02-->
			</div>
		</div>
		<div class="renew-content">
			<div class="rn-03">
				<!--상단-->
				<div class="rn-03-left">
					<!--포스터, 지역, 동영상-->
					<div class="rn-product-imgbox">
						<img
							src="${pageContext.request.contextPath}/upload/${show.subImage}">
						<a href="#" class="rn-product-movie" style="display: none;"><img
							src="http://tkfile.yes24.com/imgNew/common/kv-movie.png" alt=""></a>
					</div>
					<div class="rn-product-maps" id="divPerfRelation"
						style="display: none;"></div>
					<div class="rn-product-social">
						<a href="javascript:;" class="rn-product-good"> <img
							src="http://tkfile.yes24.com/imgNew/sub/rn-product-good1.png"
							alt=""><img
							src="http://tkfile.yes24.com/imgNew/sub/rn-product-good2.png"
							alt=""><span class="rn-pdg-txt2">33</span><span
							class="rn-pdg-txt1">Likes</span>
						</a>

					</div>
				</div>
				<!--rn-03-left-->
				<div class="rn-03-right">
					<!--상품정보-->
					<div class="rn-product-area1">
						<!--등급, 관람시간, 출연, 가격, 혜택-->
						<dl>
							<dt>등급</dt>
							<dd>&nbsp;${show.viewingAge}세 이상</dd>
							<dt>관람시간</dt>
							<dd>&nbsp;총 ${show.showTime}분 (인터미션 20분)</dd>
							<dt>출연</dt>
							<dd>
								&nbsp;<a href="https://www.google.com/search?q=${show.cast}"
									target="_blank" class="rn-product-peole">${show.cast}</a>
							</dd>
							<dt>연출자</dt>
							<dd>
								&nbsp;<a href="https://www.google.com/search?q=${show.director}"
									target="_blank" class="rn-product-peole">${show.director}</a>
							</dd>
							<dt id="dtPrice">가격</dt>
							<dd id="divPrice" class="rn-product-price">
								<div id="mCSB_3"
									class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
									tabindex="0" style="max-height: none;">
									<div id="mCSB_3_container"
										class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
										style="position: relative; top: 0; left: 0;" dir="ltr">
										<ul
											class="rn-product-price1 scroll-color mCustomScrollbar _mCS_3 mCS_no_scrollbar">
											<c:forEach items="${show.seatClass}" var="seatClass"
												varStatus="status">
												<li>${seatClass}석&nbsp;:&nbsp;<span class="rn-red">
														<fmt:formatNumber type="number" maxFractionDigits="3"
															value="${show.seatPrice[status.index]}" />
												</span>원
												</li>
											</c:forEach>

										</ul>
									</div>
								</div>
							</dd>
						</dl>
					</div>
					<!--포인트-->

					<div class="rn-product-area3">
						<!--공연시간안내, 배송정보-->
						<dl>
							<dt>공연시간 안내</dt>
							<dd>
								2023년 8월 11일(금) ~ 2023년 8월 20일(일) <br>수,목,금 오후 7시 30분 / 토
								오후 2시, 6시 30분 / 일 오후 2시 <br>* 8월 15일(화) 오후 2시, 6시 30분 <br>*
								8월 18일(금) 오후 3시, 7시 30분
							</dd>
						</dl>
					</div>
				</div>
			</div>
			
				<!-- ==================== 캘린더 영역 시작 ==================== -->
				<div class="concertHall">
					<div class="inpRow">
						<div class="concertHall">							
							<div class="position">
								<div id='calendar' class="calendar"></div>
								<div id='dayList' class="calendar"></div>
								
								<div id="remainingSeats"> 		
									<div class="fc-header-toolbar fc-toolbar ">
										<div class="fc-toolbar-chunk">
											<h2 class="fc-toolbar-title" id="fc-dom-87">예매가능 좌석</h2>
										</div>										
									</div>
									<div aria-labelledby="fc-dom-86"
										class="fc-view-harness fc-view-harness-active"
										style="height: 288.889px;">
										<div>										
										</div>
										<div id ="remaining">
											<div id="remainingSeat" class="fc-listDay-view fc-view fc-list fc-list-sticky"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>			
				<!-- ==================== 캘린더 영역 끝 ==================== -->				
			<div id="ticketingdiv">
				<div>
					<a id="ticketing" href="#none" class="ticketing">예매하기</a>
				</div>
			</div>
		</div>
		<br>
		<h2>공연장 위치 정보</h2>
		<!-- 지도를 표시할 div 입니다 -->
		<div id="map" style="width: 1200px; height: 350px;"></div>
	</section>


	<!-- Footer -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- //Footer -->
</body>

<script>
$(document).ready(function() {
	let dayListEl;
	let dayList;
	let date;
	// 오늘날짜
	var currentDate = new Date();
	var formattedDate = currentDate.toISOString().split('T')[0];
	// 페리이 로드되면 오늘날짜로 회차정보 가지고오기
	getShowingInfo(formattedDate);
	
	// 날짜를 클릭하면 데이터 가져오기
	function dayEvent(date) { 
		  console.log(date);
		  dayList.removeAllEvents();
		  var Seat = $("#remainingSeat");
	      // 회차클릭시 잔여좌석 비우기
	      Seat.empty();	
		  getShowingInfo(date);
		 
		}

	// 달력 초기화
	var calendarEl = $('#calendar')[0];
	var calendar = new FullCalendar.Calendar(calendarEl, {
		initialView : 'dayGridMonth',
		selectable : true,
		// dateClick: true,
		locale : 'ko',
		timeZone : 'ko',
		dateClick : function(arg) {
			console.log(arg);
			date = moment(arg.date).format("YYYY-MM-DD");
			// date = arg.dateStr;
			dayEvent(date);
			dayList.gotoDate(date);
		}
	});
	calendar.render();
	
	// 리스트 초기화
	dayListEl = $('#dayList')[0];
	// 리스트 클릭이벤트 
	dayList = new FullCalendar.Calendar(dayListEl, {
		initialView : 'listDay',
		locale : 'ko',
		timeZone : 'local',
		initialDate : moment().toDate(),
		eventClick : function(arg) {
    	var Seat = $("#remainingSeat");
    	// 회차클릭시 잔여좌석 비우기
    	Seat.empty();
		var showingSq = arg.event.extendedProps.hiddenValue; 
					
		var ShowingVO = {showingSq : showingSq};
		// 회차 정보 가져오기
		  $.ajax({
		    url: "${pageContext.request.contextPath}/showing/remainingSeats",
		    type: "post",
		    //contentType: "application/json",
		    data: ShowingVO,
		    
		    dataType: "json",
		    success: function(result) {		          	     
		               	  console.log(result);
			   
			    for (let index in result.data) {
			        if (result.data.hasOwnProperty(index)) {
			            //금액 포맷
			        	var seatPriceFormatted = new Intl.NumberFormat('ko-KR').format(result.data[index].seatPrice);

			            var item = '<div style="margin-bottom: 5px;">' + result.data[index].seatClass +'석'			            
			            	item += '&nbsp;&nbsp;';
			            	item += seatPriceFormatted  +'원';
			            	item += '&nbsp;&nbsp;';
			            	item += '<span style="color: orange"> 잔여 : ('+result.data[index].seatEa +'석)</span>';
			            	item +='</div>';
			            Seat.append(item);
			        }
			    }
		    },
		    error: function(XHR, status, error) {
		      console.error(status + " : " + error);
		    }
		  });
		}
	});
	dayList.render();


	//예매버튼 클릭시
	$("#ticketing").on("click", function(e){
		e.preventDefault()
		console.log("예매");
		popup();
		
	});
	//팝업창
	function popup() {
		var url = '${pageContext.request.contextPath}/order/orderForm/${show.showSq}';
		var name = "ticketing";
		var option = "width=990, height=640, top=100, left=200, location=no";
		window.open(url, name, option);
	}

	var mapContainer = $("#map"); // 지도를 표시할 div 
	var mapOption = {
		center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		level : 3
	// 지도의 확대 레벨
	};

	// 지도를 표시할 div와 지도 옵션으로 지도를 생성합니다
	var map = new kakao.maps.Map(mapContainer.get(0), mapOption);

	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();

	// 주소로 좌표를 검색합니다
	geocoder.addressSearch('${concertHall.concertHallJibunAddr}', function(result, status) {
		// 정상적으로 검색이 완료됐으면
		if (status === kakao.maps.services.Status.OK) {
			var coords = new kakao.maps.LatLng(result[0].y,
					result[0].x);

			// 결과값으로 받은 위치를 마커로 표시합니다
			var marker = new kakao.maps.Marker({
				map : map,
				position : coords
			});

			// 인포윈도우로 장소에 대한 설명을 표시합니다
			var infowindow = new kakao.maps.InfoWindow(
					{
						content : '<div id="cName">&nbsp;&nbsp;<img src="${pageContext.request.contextPath}/assets/images/극장.png"/> ${concertHall.concertHallName}</div>'
					});
			infowindow.open(map, marker);

			// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
			map.setCenter(coords);
		}
	});
	
	// 날짜로 회차 데이터 가져오기
	function getShowingInfo(date) {
			console.log("호출");
		  var ShowingVO = { showingDate: date, showSq: '${show.showSq}'};
		  console.log(ShowingVO);
		  $.ajax({
		    url: "${pageContext.request.contextPath}/showing/getShowing",
		    type: "post",
		    //contentType: "application/json",
		    data: ShowingVO,
		    dataType: "json",
		    success: function(result) {
		    	console.log(result);
		      for (var i = 0; i < result.data.length; i++) {
		        var startTime = result.data[i].showingDate + 'T' + result.data[i].startTime;
		        var endTime = result.data[i].showingDate + 'T' + result.data[i].endTime;
		        var showingSq = result.data[i].showingSq;
		        dayList.addEvent({
		          title: [i + 1] + '회차',
		          start: startTime,
		          end: endTime,
		          hiddenValue: showingSq
		        });
		      }
		    },
		    error: function(XHR, status, error) {
		      console.error(status + " : " + error);
		    }
		  });
		}
	
});
</script>
</html>