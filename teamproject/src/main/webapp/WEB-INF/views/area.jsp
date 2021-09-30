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
					<h3>행정구역별 데이터 조회</h3>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table">
							<!-- <thead>
								<tr>
									<th>시도</th>
									<th>년도</th>
									<th>월</th>
									<th>총인구수<th>
									
								</tr>

							</thead> -->
							<tbody>

								<%-- <tr>
									<th rowspan="1" colspan="1">
										<select id="sido" class="form-control">
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
									</th>
									
									<th rowspan="1" colspan="1">
										<select id="year"
											class="form-control">
	
												<c:forEach var="i" begin="2012" end="2021">
													<option value="${ i }"
														${ i eq requestScope.year ? "selected" : "" }>${ i }</option>
												</c:forEach>
	
										</select>
									</th>

									<th rowspan="1" colspan="1">
										<select id="month"
											class="form-control">
												<c:forEach var="i" begin="1" end="12">
													<option value="${ i }"
														${ i eq requestScope.month ? "selected" : "" }>${ i }</option>
												</c:forEach>
										</select>
									</th>
								</tr> --%>

<div class="card">

				<div class="card-title pr"></div>
				

					<div class="tbl_form_box">
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

					</div>

							<div class="dl_group">
								<input type="hidden">
								<dl>
									<dt>
										<label>연월조회</label> <br>
										<label>(2011년부터 2021년 8월까지 조회가능합니다.)</label>
										
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
								
																
								</div>
								
							</div>
						</dl>
					</div>
				</fieldset>
			</div>
			
							
								<tr>
									<th>시도</th>
									<th>년도</th>
									<th>월</th>
									<th style="text-align: right;">총인구수<th>
									
								</tr>
							

								<c:forEach items="${areaList}" var="area">
									<tr>
										<td>${area.region}</td>
										<td>${area.year}년</td>
										<td>${area.month}월</td>
										<td>${area.population_male+area.population_female}명</td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
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
	
	<script src="/population/resources/assets/js/dashboard2.js"></script>

	<script type="text/javascript">
	$(function(){
		$('#search').on('click', function(event) {
			
			
		});

		$('#sido').on('change', function(event) {
			/* var sidoCode = $(this).val();
			var sidoName = $(this).find("option:selected").text();
			
			location.href = "area.action?sido=" + sidoCode; */

			doRequest();
		});
		
		$('#year').on('change', function(event) {
			/* var yearCode = $(this).val();
			var yearName = $(this).find("option:selected").text();
			
			location.href = "area.action?year=" + yearCode;
			*/

			doRequest();
		});

		$('#month').on('change', function(event) {
			/* var monthCode = $(this).val();
			var monthName = $(this).find("option:selected").text();
			
			location.href = "area.action?month=" + monthCode; */
			
			doRequest();
		});
		
		function doRequest() {
			var sidoCode = $('#sido').val();
			var yearCode = $('#year').val();
			var monthCode = $('#month').val();
			
			location.href = "area.action?month=" + monthCode + "&year=" + yearCode + "&sido=" + sidoCode;			
		}
	});
	</script>	
	
	
</body>

</html>