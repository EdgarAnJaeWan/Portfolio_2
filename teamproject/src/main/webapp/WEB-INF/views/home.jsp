<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
			<div class="container-fluid">

				<div class="card">
					<div class="stat-widget-four">
						<div class="stat-content">
							<div class="text-left dib">
								<div class="stat-heading">대한민국 인구데이터</div>
								<div style="text-align: center;" class="stat-text">made by
									team3 0_0</div>
							</div>
						</div>
					</div>
				</div>


				<div class="row">
					<div class="col-lg-3">
						<div class="card p-0">
							<div class="stat-widget-three">
								<div style="cursor: pointer;" onclick=location.href=
									"/population/area.action" class="stat-icon bg-primary">
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
								<div style="cursor: pointer;" onclick=location.href=
									"household/chart" class="stat-icon bg-success">
									<i class="ti-user"></i>
								</div>
								<div class="stat-content">
									<div class="stat-digit">2034만</div>
									<div class="stat-text">세대별 인구</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="card p-0">
							<div class="stat-widget-three">
								<div style="cursor: pointer;" onclick=location.href=
									"gender.action" class="stat-icon bg-warning">
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
								<div style="cursor: pointer;" onclick=location.href=
									"board/list" class="stat-icon bg-danger">
									<i class="ti-map"></i>
								</div>
								<div class="stat-content">
									<div class="stat-digit">^-^</div>
									<div class="stat-text">게시판</div>

								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-6">
						<div class="card">
							<div class="card-title">
								<h4>대한민국 인구변화 추이</h4>
							</div>

							<canvas id="myChart" width="400" height="400"></canvas>
							

						</div>
					</div>

					<div class="col-lg-6">
						<div class="card">

							<table id="bootstrap-data-table-export"
								class="table table-striped table-bordered dataTable no-footer"
								role="grid" aria-describedby="bootstrap-data-table-export_info">
								<thead>
									<tr role="row">
										<th>행정구역</th>
										<th>세대수</th>
										<th>남자 인구</th>
										<th>여자 인구</th>
										<th>총 인구</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${homeList}" var="home">
										<tr>

											<td>${ home.region }</td>
											<td><fmt:formatNumber value="${home.household}" /></td>
											<td><fmt:formatNumber value="${home.population_male}" /></td>
											<td><fmt:formatNumber value="${home.population_female}" /></td>
											<td><fmt:formatNumber
													value="${home.population_male + home.population_female}" /></td>


										</tr>
									</c:forEach>
								</tbody>
							</table>

						</div>


					</div>
				</div>


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
	<!— scripit init—>
	<script src="/population/resources/assets/js/dashboard2.js"></script>
	<script
		src="/population/resources/assets/js/lib/vector-map/jquery.vmap.js"></script>
	<!-- scripit init-->
	<script
		src="/population/resources/assets/js/lib/vector-map/jquery.vmap.min.js"></script>
	<!-- scripit init-->
	<script
		src="/population/resources/assets/js/lib/vector-map/jquery.vmap.sampledata.js"></script>
	<!-- scripit init-->


	<script
		src="/population/resources/assets/js/lib/vector-map/vector.init.js"></script>
	<!-- scripit init-->
	
	<script src="/population/resources/assets/js/lib/chart-js/Chart.bundle.js"></script>
    <script src="/population/resources/assets/js/lib/chart-js/chartjs-init.js"></script>
	
	<script type="text/javascript">
		$(function() {
			var context = $("#myChart");
        
		
		var population_data = [];
       	var total_population = [];
       	var year = [];
       	<c:set var = "prevRegion" value = "" />
       	<c:forEach var="home" items="${homeList}" varStatus="status">
       		<c:if test="${ home.region != prevRegion }">
       		<c:set var = "prevRegion" value = "${ home.region }" />
	       		<c:if test="${ status.index > 0 }">
	       		population_data.push({
		            label: '${ prevRegion }', 
		            fill: false, 
		            data: total_population
		            
		        });
	       		total_population = [];
	       		</c:if>
	        </c:if>
       		total_population.push(${ home.population_male + home.population_female });
       		
       		if (!year.includes(${ home.year })) {
       			year.push(${ home.year });
       		}
       	</c:forEach>
       	
       	population_data.push({
            label: '${ prevRegion }', //차트 제목
            fill: false, 
            data: total_population,
                
            
        });
        
        var myChart = new Chart(context, {
            type: 'line', 
            data: { 
                labels: year,
                datasets: population_data,
                
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
		});
            
        </script>
	 

</body>

</html>