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
				<div class="row">
					<div class="col-lg-8 p-r-0 title-margin-right">
						<div class="page-header">
							<div class="page-title">
								<h1>
									Hello, <span>Welcome</span>
								</h1>
							</div>
						</div>
					</div>

				</div>
				<!-- /# row -->
				<section id="main-content">
					<div class="row">
						<div class="col-lg-3">
							<div class="card">
								<div class="stat-widget-one">

									<div class="stat-content dib">
									<!-- 주민등록인구 및 세대현황 -->
										<div class="stat-text">총인구</div>
										<div class="stat-digit">@@</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3">
							<div class="card">
								<div class="stat-widget-one">

									<div class="stat-content dib">
										<div class="stat-text">행정구역별 인구</div>
										<div class="stat-digit">부산 : @@</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3">
							<div class="card">
								<div class="stat-widget-one">

									<div class="stat-content dib">
										<div class="stat-text">연령별 인구</div>
										<div class="stat-digit">20대 : @@</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3">
							<div class="card">
								<div class="stat-widget-one">

									<div class="stat-content dib">
										<div class="stat-text">남녀별 인구</div>
										<div class="stat-digit">남 : @@</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">

						<div class="col-lg-8">
							<div class="card">
								<div class="card-title">
									<h4>Population change in Korea.</h4>

								</div>
								<!-- <div class="card-body">
									<div class="ct-bar-chart m-t-30"></div> -->
								
								<div class="card-body">	
								<div class="flot-container">
                  <div id="chart1" style="padding: 0px; position: relative;">
                  <canvas class="flot-base" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 382px; height: 275px;" width="764" height="550"></canvas>
                  <div class="flot-text" style="position: absolute; inset: 0px; font-size: smaller; color: rgb(84, 84, 84);">
                  <div class="flot-x-axis flot-x1-axis xAxis x1Axis" style="position: absolute; inset: 0px; display: block;">
                  <div style="position: absolute; max-width: 47px; top: 257px; left: 62px; text-align: center;" class="flot-tick-label tickLabel">2016</div>
                  <div style="position: absolute; max-width: 47px; top: 257px; left: 117px; text-align: center;" class="flot-tick-label tickLabel">2017</div>
                  <div style="position: absolute; max-width: 47px; top: 257px; left: 172px; text-align: center;" class="flot-tick-label tickLabel">2018</div>
                  <div style="position: absolute; max-width: 47px; top: 257px; left: 227px; text-align: center;" class="flot-tick-label tickLabel">2019</div>
                  <div style="position: absolute; max-width: 47px; top: 257px; left: 282px; text-align: center;" class="flot-tick-label tickLabel">2020</div>
                  <div style="position: absolute; max-width: 47px; top: 257px; left: 337px; text-align: center;" class="flot-tick-label tickLabel">2021</div>
                  </div>
                  <div class="flot-y-axis flot-y1-axis yAxis y1Axis" style="position: absolute; inset: 0px; display: block;">
                  <div style="position: absolute; top: 243px; left: 0px; text-align: right;" class="flot-tick-label tickLabel">6320</div>
                  <div style="position: absolute; top: 213px; left: 0px; text-align: right;" class="flot-tick-label tickLabel">6330</div>
                  <div style="position: absolute; top: 182px; left: 0px; text-align: right;" class="flot-tick-label tickLabel">6340</div>
                  <div style="position: absolute; top: 152px; left: 0px; text-align: right;" class="flot-tick-label tickLabel">6350</div>
                  <div style="position: absolute; top: 122px; left: 0px; text-align: right;" class="flot-tick-label tickLabel">6360</div>
                  <div style="position: absolute; top: 91px; left: 0px; text-align: right;" class="flot-tick-label tickLabel">6370</div>
                  <div style="position: absolute; top: 61px; left: 0px; text-align: right;" class="flot-tick-label tickLabel">6380</div>
                  <div style="position: absolute; top: 30px; left: 0px; text-align: right;" class="flot-tick-label tickLabel">6390</div>
                  <div style="position: absolute; top: 0px; left: 0px; text-align: right;" class="flot-tick-label tickLabel">6400</div>
                  </div></div>
                  <canvas class="flot-overlay" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 382px; height: 275px;" width="764" height="550"></canvas>
                  </div>
                </div>
								</div>
									
								</div>
							</div>
						</div>

						<div class="col-lg-4">
							<div class="card">

								<div class="card-body">
									<div class="ct-pie-chart"></div>
								</div>
							</div>
						</div>
					</div>

					<div class="row"></div>			

				</section>
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
</body>

</html>