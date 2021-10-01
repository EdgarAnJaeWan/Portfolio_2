<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>team3_WebProject</title>

<!-- ================= Favicon ================== -->
<!-- Standard -->
<link rel="shortcut icon" href="http://placehold.it/64.png/000/fff">
<!-- Retina iPad Touch Icon-->
<link rel="apple-touch-icon" sizes="144x144"
	href="http://placehold.it/144.png/000/fff">
<!-- Retina iPhone Touch Icon-->
<link rel="apple-touch-icon" sizes="114x114"
	href="http://placehold.it/114.png/000/fff">
<!-- Standard iPad Touch Icon-->
<link rel="apple-touch-icon" sizes="72x72"
	href="http://placehold.it/72.png/000/fff">
<!-- Standard iPhone Touch Icon-->
<link rel="apple-touch-icon" sizes="57x57"
	href="http://placehold.it/57.png/000/fff">
<!-- Styles -->
<link
	href="/web/resources/population/resources/assets/css/lib/calendar2/pignose.calendar.min.css"
	rel="stylesheet">
<link
	href="/population/resources/assets/css/lib/chartist/chartist.min.css"
	rel="stylesheet">
<link href="/population/resources/assets/css/lib/font-awesome.min.css"
	rel="stylesheet">
<link href="/population/resources/assets/css/lib/themify-icons.css"
	rel="stylesheet">
<link href="/population/resources/assets/css/lib/owl.carousel.min.css"
	rel="stylesheet" />
<link
	href="/population/resources/assets/css/lib/owl.theme.default.min.css"
	rel="stylesheet" />
<link href="/population/resources/assets/css/lib/weather-icons.css"
	rel="stylesheet" />
<link href="/population/resources/assets/css/lib/menubar/sidebar.css"
	rel="stylesheet">
<link href="/population/resources/assets/css/lib/bootstrap.min.css"
	rel="stylesheet">
<link href="/population/resources/assets/css/lib/helper.css"
	rel="stylesheet">
<link href="/population/resources/assets/css/style.css" rel="stylesheet">
</head>

<body>

	<!-- sidebar -->
	<jsp:include page="/WEB-INF/views/modules/sidebar.jsp" />
	<!-- end of sidebar -->

	<!-- topbar -->
	<jsp:include page="/WEB-INF/views/modules/topbar.jsp" />
	<!-- end of topbar -->

	<div class="content-wrap">
		<div class="main">

			<div class="card">
				<div class="card-title">
					<h3>행정구역별 그래프</h3>
				</div>
				
				<%-- <div class="tbl_form_box">
						<div class="dl_group">
							<dl>
								<dt>

									<!-- 행정구역 tooltip mobile -->
									<div class="row">
										<div class="popover-layer">
											<p class="pHeader">행정구역</p>
											
										<select class="form-control" id="sido" >
											
											<option value="11" ${ sido == "11" ? "selected" : "" }>서울특별시</option>
											<option value="26" ${ sido == "26" ? "selected" : "" }>부산광역시</option>
											<option value="27" ${ sido == "27" ? "selected" : "" }>대구광역시</option>
											<option value="28" ${ sido == "28" ? "selected" : "" }>인천광역시</option>
											<option value="29" ${ sido == "29" ? "selected" : "" }>광주광역시</option>
											<option value="30" ${ sido == "30" ? "selected" : "" }>대전광역시</option>
											<option value="31" ${ sido == "31" ? "selected" : "" }>울산광역시</option>
											<option value="36" ${ sido == "36" ? "selected" : "" }>세종특별자치시</option>
											<option value="41" ${ sido == "41" ? "selected" : "" }>경기도</option>
											<option value="42" ${ sido == "42" ? "selected" : "" }>강원도</option>
											<option value="43" ${ sido == "43" ? "selected" : "" }>충청북도</option>
											<option value="44" ${ sido == "44" ? "selected" : "" }>충청남도</option>
											<option value="45" ${ sido == "45" ? "selected" : "" }>전라북도</option>
											<option value="46" ${ sido == "46" ? "selected" : "" }>전라남도</option>
											<option value="47" ${ sido == "47" ? "selected" : "" }>경상북도</option>
											<option value="48" ${ sido == "48" ? "selected" : "" }>경상남도</option>
											<option value="50" ${ sido == "50" ? "selected" : "" }>제주특별자치도</option>
										</select>
									
										</div>
									</div>
								</dt>
								
							</dl>
						</div>

					</div> --%>
					
					<%-- <div class="dl_group">
								<input type="hidden">
								<dl>
									<dt>
										<p class="pHeader">연월조회</p>
										
									</dt>
								</dl>
								<dl>
							<div class="row">
								<dd class="td1_2">
									<select class="form-control" name="year"
										id="year">
										<c:forEach var="i" begin="2012" end="2021">
											
											<option 
											value="${ i }" ${ i eq requestScope.year ? "selected" : "" }>${ i }
											</option>
										</c:forEach>
									</select>
								</dd>
								
								<dd class="td1_2">
									<select class="form-control" name="month"
										id="month">
										<c:forEach var="i" begin="1" end="12">
											
											<option value="${ i }"${ i eq requestScope.month ? "selected" : "" }>${ i }
											</option>
										</c:forEach>
									</select>
								</dd>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<div>
								<button>조회</button>
								</div>
								
								</div>
							</div> --%>
							
				
					<canvas id="areagraph" width="800" height="400"></canvas>
						<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
						<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
						<script type="text/javascript">
            var context = document
                .getElementById('areagraph')
                .getContext('2d');

            
            
            var sido = ['서울특별시', '부산광역시', '대구광역시', '인천광역시', '광주광역시', '대전광역시', '울산광역시', '세종특별자치시', '경기도', '강원도', '충청북도', '충청남도', '전라북도', '전라남도', '경상북도', '경상남도', '제주특별자치도'];
            
            var myChart = new Chart(context, {
                type: 'bar', // 차트의 형태
                data: { // 차트에 들어갈 데이터
                    labels: sido,
                    datasets: [
                        { //데이터
                            label: '전국', //차트 제목
                            
                            data: [
                            	977, 343, 246, 292, 150, 153, 116, 28, 1341, 156, 158, 206, 187, 190, 270, 344, 69
                            	
                            	//x축 label에 대응되는 데이터 값
                            ],
                            backgroundColor: [
                                //색상
                                'rgba(255, 99, 132, 0.2)',
                                'rgba(54, 162, 235, 0.2)',
                                'rgba(255, 206, 86, 0.2)',
                                'rgba(75, 192, 192, 0.2)',
                                'rgba(153, 102, 255, 0.2)',
                                'rgba(129, 215, 66, 0.2)',
                                'rgba(130, 36, 227, 0.2)',
                                
                            ],
                            borderColor: [
                                //경계선 색상
                                'rgba(255, 99, 132, 1)',
                                'rgba(54, 162, 235, 1)',
                                'rgba(255, 206, 86, 1)',
                                'rgba(75, 192, 192, 1)',
                                'rgba(153, 102, 255, 1)',
                                'rgba(255, 159, 64, 1)'
                            ],
                            borderWidth: 1 //경계선 굵기
                        }
                    ]
                },
                options: {
                		responsive: true,
                		
                    scales: {
                        yAxes: [
                            {
                                ticks: {
                                    beginAtZero: true
                                }
                            }
                        ]
                    }
                }
            });
        </script>
					
					
						
						
					
				</div>
			</div>

			
		</div>
	

	<!-- jquery vendor -->
	<script src="/population/resources/assets/js/lib/jquery.min.js"></script>
	<script
		src="/population/resources/assets/js/lib/jquery.nanoscroller.min.js"></script>
	<!-- nano scroller -->
	<script src="/population/resources/assets/js/lib/menubar/sidebar.js"></script>
	<script src="/population/resources/assets/js/lib/preloader/pace.min.js"></script>
	<!-- sidebar -->

	<script src="/population/resources/assets/js/lib/bootstrap.min.js"></script>
	<script src="/population/resources/assets/js/scripts.js"></script>
	<!-- bootstrap -->

	<script
		src="/population/resources/assets/js/lib/calendar-2/moment.latest.min.js"></script>
	<script
		src="/population/resources/assets/js/lib/calendar-2/pignose.calendar.min.js"></script>
	<script
		src="/population/resources/assets/js/lib/calendar-2/pignose.init.js"></script>


	<script
		src="/population/resources/assets/js/lib/weather/jquery.simpleWeather.min.js"></script>
	<script
		src="/population/resources/assets/js/lib/weather/weather-init.js"></script>
	<script
		src="/population/resources/assets/js/lib/circle-progress/circle-progress.min.js"></script>
	<script
		src="/population/resources/assets/js/lib/circle-progress/circle-progress-init.js"></script>
	<script
		src="/population/resources/assets/js/lib/chartist/chartist.min.js"></script>
	<script
		src="/population/resources/assets/js/lib/sparklinechart/jquery.sparkline.min.js"></script>
	<script
		src="/population/resources/assets/js/lib/sparklinechart/sparkline.init.js"></script>
	<script
		src="/population/resources/assets/js/lib/owl-carousel/owl.carousel.min.js"></script>
	<script
		src="/population/resources/assets/js/lib/owl-carousel/owl.carousel-init.js"></script>
	
	<script src="/population/resources/assets/js/dashboard2.js"></script>

	
	
	
</body>

</html>