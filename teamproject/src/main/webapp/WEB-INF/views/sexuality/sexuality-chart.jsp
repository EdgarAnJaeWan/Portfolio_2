<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
										3???
										<h3>????????? ????????? ??????</h3>
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

												<!-- ???????????? tooltip mobile -->
												<div class="row">
													<div class="popover-layer">
														<p class="pHeader">????????????</p>
													</div>
												</div>
											</dt>

											<div class="row">
												<dd class="td3">
													<select class="form-control"
														onchange="categoryChange(this)" name="sido">
														<option>??????</option>
														<option value="11" ${ sido == "11" ? "selected" : "" }>???????????????</option>
														<option value="26" ${ sido == "26" ? "selected" : "" }>???????????????</option>
														<option value="27" ${ sido == "27" ? "selected" : "" }>???????????????</option>
														<option value="28" ${ sido == "28" ? "selected" : "" }>???????????????</option>
														<option value="29" ${ sido == "29" ? "selected" : "" }>???????????????</option>
														<option value="30" ${ sido == "30" ? "selected" : "" }>???????????????</option>
														<option value="31" ${ sido == "31" ? "selected" : "" }>???????????????</option>
														<option value="36" ${ sido == "36" ? "selected" : "" }>?????????????????????</option>
														<option value="41" ${ sido == "41" ? "selected" : "" }>?????????</option>
														<option value="42" ${ sido == "42" ? "selected" : "" }>?????????</option>
														<option value="43" ${ sido == "43" ? "selected" : "" }>????????????</option>
														<option value="44" ${ sido == "44" ? "selected" : "" }>????????????</option>
														<option value="45" ${ sido == "45" ? "selected" : "" }>????????????</option>
														<option value="46" ${ sido == "46" ? "selected" : "" }>????????????</option>
														<option value="47" ${ sido == "47" ? "selected" : "" }>????????????</option>
														<option value="48" ${ sido == "48" ? "selected" : "" }>????????????</option>
														<option value="50" ${ sido == "50" ? "selected" : "" }>?????????????????????</option>
													</select>
												</dd>

											</div>



										</dl>
									</div>


									<dl>

										<!-- ???????????? tooltip PC -->
										<dd class="td_popover">
											<div class="popoverWrap">
												<!-- <span><span class="hide">????????????</span></span> -->
												<div class="popoverBox pop2">
													<!-- <div class="pHeader">
																????????????
																
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
													<label>????????????</label> <br> <label>(2011????????? 2021???
														8????????? ?????????????????????.)</label>

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
									<div class="btn_box">
										<a id="search-link" href="#" class="btn btn-primary btn-sm"
											style="float: left">??????</a>
									</div>
								</div>
							</fieldset>
						</div>
				</form>
			</div>
		</div>
	</div>

	<!-- /# column -->

	<!-- /# column -->
	<div class="col-lg-12">
		<div class="col-lg-12">
			<div class="card" style="width: 1600px;">
				<div class="card-title pr">
					<h4>????????? ??????</h4>
				</div>


				<div class="section3" style="">
					<div class="current_title">
						<strong><span>???????????? ?????? ??? ???????????? </span></strong>

					</div>
				</div>

				<!-- table -->
				<div class="row">
					<div class="col-md-12">
						<div class="table-wrap">
							<table class="table">
								<thead class="thead-dark">
									<tr>
										<th>??????</th>
										<th>??????</th>
										<th>???</th>
										<th style="text-align: right;">?????? ?????????</th>
										<th style="text-align: right;">?????? ?????????</th>
										<th style="text-align: right;">?????? ??????(??????/??????)</th>
									</tr>
								</thead>
								<tbody>

									<c:forEach items="${sexualitysList}" var="sexuality">
										<tr>
											<td>${sexuality.region}</td>
											<td>${sexuality.year}???</td>
											<td>${sexuality.month}???</td>
											<td style="text-align: right;">${sexuality.population_male}</td>
											<td style="text-align: right;">${sexuality.population_female}</td>
											<td style="text-align: right;"><fmt:formatNumber
													value="${((sexuality.population_female)/(sexuality.population_male))}"
													maxFractionDigits="2" /></td>
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