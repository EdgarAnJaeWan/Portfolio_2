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
<link href="/population/resources/assets/css/lib/chartist/chartist.min.css"
	rel="stylesheet">
<link href="/population/resources/assets/css/lib/font-awesome.min.css"
	rel="stylesheet">
<link href="/population/resources/assets/css/lib/themify-icons.css"
	rel="stylesheet">
<link href="/population/resources/assets/css/lib/owl.carousel.min.css"
	rel="stylesheet" />
<link href="/population/resources/assets/css/lib/owl.theme.default.min.css"
	rel="stylesheet" />
<link href="/population/resources/assets/css/lib/weather-icons.css"
	rel="stylesheet" />
<link href="/population/resources/assets/css/lib/menubar/sidebar.css"
	rel="stylesheet">
<link href="/population/resources/assets/css/lib/bootstrap.min.css"
	rel="stylesheet">
<link href="/population/resources/assets/css/lib/helper.css" rel="stylesheet">
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
			<div class="container-fluid">

				<div class="card">
					<div class="stat-widget-four">
						<div class="stat-content">
							<div class="text-left dib">
								<div class="stat-heading">대한민국 인구데이터</div>
								<div style="text-align: center;" class="stat-text">made by team3 0_0</div>
							</div>
						</div>
					</div>
				</div>
				
				
				<div class="row">
            <div class="col-lg-3">
              <div class="card p-0">
                <div class="stat-widget-three">
                  <div style="cursor: pointer;" onclick=location.href="/population/area.action" class="stat-icon bg-primary">
                    <i class="ti-user"></i>
                  </div>
                  <div class="stat-content">
                    <div class="stat-digit">5,182만</div>
                    <div class="stat-text">총인구</div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-3">
              <div class="card p-0">
                <div class="stat-widget-three">
                  <div style="cursor: pointer;" onclick=location.href="household/chart" class="stat-icon bg-success">
                    <i class="ti-user"></i>
                  </div>
                  <div  class="stat-content">
                    <div class="stat-digit">2034만</div>
                    <div class="stat-text">세대별 인구</div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-3">
              <div class="card p-0">
                <div class="stat-widget-three">
                  <div style="cursor: pointer;" onclick=location.href="gender.action" class="stat-icon bg-warning">
                    <i class="ti-user"></i>
                  </div>
                 <div class="stat-content">
                    <div class="stat-digit">78,217</div>
                    <div class="stat-text">남녀별인구</div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-3">
              <div class="card p-0">
                <div class="stat-widget-three">
                  <div class="stat-icon bg-danger">
                    <i class="ti-map"></i>
                  </div>
                  <div class="stat-content">
                   <div class="stat-digit">^-^</div>
                    <div class="stat-text">인구 지도</div>
                    
                  </div>
                </div>
              </div>
            </div>
          </div>
          
          <div class="card">
                  <div class="card-title">
                    <h4>대한민국 인구변화 추이</h4>            
                  </div>
                  
                  <div>

						<canvas id="myChart" width="800" height="400"></canvas>
						<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
						<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
						<script type="text/javascript">
            var context = document
                .getElementById('myChart')
                .getContext('2d');
            
            var year = ['2012','2013','2014','2015','2016','2017','2018','2019','2020'];
            
            var myChart = new Chart(context, {
                type: 'line', // 차트의 형태
                data: { // 차트에 들어갈 데이터
                    labels: year,
                    datasets: [
                        { //데이터
                            label: '총 인구변화', //차트 제목
                            fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
                            data: [
                            	50094393,50556257,50826606,50302326,50512410,
                            	50659415,51394159,51668864,51699779
                            	
                            	//x축 label에 대응되는 데이터 값
                            ],
                            backgroundColor: [
                                //색상
                                'rgba(255, 99, 132, 0.2)',
                                'rgba(54, 162, 235, 0.2)',
                                'rgba(255, 206, 86, 0.2)',
                                'rgba(75, 192, 192, 0.2)',
                                'rgba(153, 102, 255, 0.2)',
                                'rgba(255, 159, 64, 0.2)'
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
                
                
                <div class="card">
					
					<table border="1" style="text-align: center;">
					
					<tr>
									<th>행정구역</th>
									<th>세대수</th>
									<th>남자 인구수</th>
									<th>여자 인구수</th>
									<th style="text-align: right;">총 인구수</th>
					</tr>
										
					<tbody>
					<c:forEach items="${homeList}" var="home">
					<tr>
					
						<td>${ home.region }</td>
						<td>${ home.household }세대</td>
						<td>${ home.population_male }명</td>
						<td>${ home.population_female }명</td>
						<td>${ home.population_male + home.population_female }명</td>
					
					
					</tr>
					</c:forEach>
					</tbody>
					</table>
					
				</div>
                
    
			</div>
		</div>
	</div>
	

	
	

	<!-- jquery vendor -->
	<script src="/population/resources/assets/js/lib/jquery.min.js"></script>
	<script src="/population/resources/assets/js/lib/jquery.nanoscroller.min.js"></script>
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
	<script src="/population/resources/assets/js/lib/calendar-2/pignose.init.js"></script>


	<script
		src="/population/resources/assets/js/lib/weather/jquery.simpleWeather.min.js"></script>
	<script src="/population/resources/assets/js/lib/weather/weather-init.js"></script>
	<script
		src="/population/resources/assets/js/lib/circle-progress/circle-progress.min.js"></script>
	<script
		src="/population/resources/assets/js/lib/circle-progress/circle-progress-init.js"></script>
	<script src="/population/resources/assets/js/lib/chartist/chartist.min.js"></script>
	<script
		src="/population/resources/assets/js/lib/sparklinechart/jquery.sparkline.min.js"></script>
	<script
		src="/population/resources/assets/js/lib/sparklinechart/sparkline.init.js"></script>
	<script
		src="/population/resources/assets/js/lib/owl-carousel/owl.carousel.min.js"></script>
	<script
		src="/population/resources/assets/js/lib/owl-carousel/owl.carousel-init.js"></script>
	<!— scripit init—>
	<script src="/population/resources/assets/js/dashboard2.js"></script>
	<script src="/population/resources/assets/js/lib/vector-map/jquery.vmap.js"></script>
    <!-- scripit init-->
    <script src="/population/resources/assets/js/lib/vector-map/jquery.vmap.min.js"></script>
    <!-- scripit init-->
    <script src="/population/resources/assets/js/lib/vector-map/jquery.vmap.sampledata.js"></script>
    <!-- scripit init-->
   
   
    <script src="/population/resources/assets/js/lib/vector-map/vector.init.js"></script>
    <!-- scripit init-->
	
</body>

</html>