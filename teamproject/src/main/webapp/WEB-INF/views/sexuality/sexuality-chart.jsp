<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" pageEncoding="utf-8"
	contentType="text/html; chartset=utf-8;"%>

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
	href="/population/resources/assets/css/lib/calendar2/pignose.calendar.min.css"
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


	<div class="content-wrap">
		<div class="main">
			<div class="container-fluid">
				<form id="search-sexuality-form" method="post" action="search-chart">
					<div class="row">
						<div class="col-lg-8 p-r-0 title-margin-right">
							<div class="page-header">
								<div class="page-title">
									<h1>
										3팀
										<h3>남녀별 인구수 조회</h3>
									</h1>
								</div>
							</div>
						</div>
					</div>

					<!-- /# column -->
					<div class="col-lg-12">
						<div class="card">

							<div class="card-title pr"></div>
							<fieldset>

								<div class="tbl_form_box">
									<div class="dl_group">
										<dl>
											<dt>

												<!-- 행정구역 tooltip mobile -->
												<div class="row">
													<div class="popover-layer">
														<p class="pHeader">행정구역</p>
													</div>
												</div>
											</dt>

											<div class="row">
												<dd class="td3">
													<select class="form-control"
														onchange="categoryChange(this)" name="sido">
														<option>시도</option>
														<option value="11">서울특별시</option>
														<option value="26">부산광역시</option>
														<option value="27">대구광역시</option>
														<option value="28">인천광역시</option>
														<option value="29">광주광역시</option>
														<option value="30">대전광역시</option>
														<option value="31">울산광역시</option>
														<option value="36">세종특별자치시</option>
														<option value="41">경기도</option>
														<option value="42">강원도</option>
														<option value="43">충청북도</option>
														<option value="44">충청남도</option>
														<option value="45">전라북도</option>
														<option value="46">전라남도</option>
														<option value="47">경상북도</option>
														<option value="48">경상남도</option>
														<option value="50">제주특별자치도</option>
													</select>
												</dd>

											</div>



										</dl>
									</div>


									<dl>

										<!-- 등록구분 tooltip PC -->
										<dd class="td_popover">
											<div class="popoverWrap">
												<!-- <span><span class="hide">등록구분</span></span> -->
												<div class="popoverBox pop2">
													<!-- <div class="pHeader">
																등록구분
																
															</div> -->
													<div class="pContent tbl">
														<table>
															<colgroup>
																<col style="width: 66px;">
																<col style="">
															</colgroup>
														</table>
													</div>
												</div>
											</div>
										</dd>
									</dl>
								</div>

								<div class="dl_group">


									<input type="hidden" value="2021" id="nowYear" name="nowYear">

									<dl>
										<div class="dl_group">
											<input type="hidden">
											<dl>
												<dt>
													<label>연월조회</label> <br> <label>(2011년부터 2021년
														8월까지 조회가능합니다.)</label>

												</dt>
											</dl>
											<dl>
												<div class="row">
													<dd class="td1_2">
														<select class="form-control" name="year" id="year">
															<c:forEach var="i" begin="2012" end="2021">

																<option value="${ i }"
																	${ i eq requestScope.year ? "selected" : "" }>${ i }
																</option>
															</c:forEach>
														</select>
													</dd>

													<dd class="td1_2">
														<select class="form-control" name="month" id="month">
															<c:forEach var="i" begin="1" end="12">

																<option value="${ i }"
																	${ i eq requestScope.month ? "selected" : "" }>${ i }
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
						<div class="btn_box">
							<a id="search-link" href="#" class="btn btn-primary btn-sm"
								style="float: right">검색</a>
						</div>
				</form>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<!-- /# column -->

	<!-- /# column -->
	<div class="col-lg-12">
		<div class="col-lg-12">
			<div class="card-title pr">
				<h4>통계표 출력</h4>
			</div>


			<div class="section3" style="">
				<div class="current_title">
					<strong><span>주민등록 인구 및 세대현황 </span></strong>

				</div>
			</div>

			<!-- table -->
			<div class="row">
				<div class="col-md-12">
					<div class="table-wrap">
						<table class="table">
							<thead class="thead-dark">
								<tr>
									<th>시도</th>
									<th>년도</th>
									<th>월</th>
									<th style="text-align: right;">남자 인구수</th>
									<th style="text-align: right;">여자 인구수</th>
									<th style="text-align: right;">남녀 성비(여자/남자)</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach items="${sexualitysList}" var="sexuality">
									<tr>
										<td>${sexuality.region}</td>
										<td>${sexuality.year}년</td>
										<td>${sexuality.month}월</td>
										<td style="text-align: right;">${sexuality.population_male}</td>
										<td style="text-align: right;">${sexuality.population_female}</td>									
										<td style="text-align: right;">
											<fmt:formatNumber value="${((sexuality.population_female)/(sexuality.population_male))}" 
															  maxFractionDigits="2" />
										</td>
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

	<!-- /# column -->


	<!-- jquery vendor -->
	<script src="/population/resources/assets/js/lib/jquery.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$("#search-link").on('click', function(event) {
				$('#search-sexuality-form').submit();
			});
		});
		
	</script>
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
	<!-- scripit init-->
	<script src="/population/resources/assets/js/dashboard2.js"></script>




</body>

</html>