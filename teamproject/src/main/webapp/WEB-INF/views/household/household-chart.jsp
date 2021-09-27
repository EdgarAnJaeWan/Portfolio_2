<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
				<form method="post" action="search">
					<div class="row">
						<div class="col-lg-8 p-r-0 title-margin-right">
							<div class="page-header">
								<div class="page-title">
									<h1>
										3팀
										<h3>세대별 인구수 조회</h3>
									</h1>
								</div>
							</div>
						</div>
					</div>

				<!-- /# column -->
				<div class="col-lg-8">
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
													<!-- 	                                                        <p class="pContent">
 	                                                            <span>
																		조회결과는 선택한 행정구역의 산하 행정구역들이 조회됩니다. <br>
																		(예를들어, 서울특별시 선택시 종로구, 중구, 용산구등 해당 구 자료가 조회됩니다)
																	</span>
																	<span>
																		아래 7개의 면은 인구가 없는 지역이므로 통계현황에서 제외됩니다.<br>
																		(경기도 파주시 장단면, 진서면, 강원도 철원군 근동면, 원동면, 원남면, 임남면, 고성군 수동면)
																	</span>			
																	<span>경기도 파주시 장단출장소 인구는 경기도 파주시 군내면 인구를 의미합니다.</span> 
	                                                        </p> -->
												</div>
											</div>
										</dt>
										<div class="row">
											<dd class="td3">
												<select class="form-control" onchange="categoryChange(this)">
													<option>시도</option>
													<option value="a">서울특별시</option>
													<option value="b">부산광역시</option>
													<option value="c">대구광역시</option>
													<option value="d">인천광역시</option>
													<option value="e">광주광역시</option>
													<option value="f">대전광역시</option>
													<option value="g">울산광역시</option>
													<option value="h">세종특별자치시</option>
													<option value="i">경기도</option>
													<option value="j">강원도</option>
													<option value="k">충청북도</option>
													<option value="l">충청남도</option>
													<option value="m">전라북도</option>
													<option value="n">전라남도</option>
													<option value="o">경상북도</option>
													<option value="p">경상남도</option>
													<option value="q">제주특별자치도</option>
												</select>
											</dd>

											<dd class="td3">
												<select class="form-control" id="good">
													<option>시·군·구</option>
												</select>

												<script type="text/javascript">
													function categoryChange(e) {
														var good_a = [ "시·군·구",
																"종로구", "중구",
																"용산구", "성동구",
																"광진구", "동대문구",
																"중랑구", "성북구",
																"강북구", "도봉구",
																"노원구", "은평구",
																"서대문구", "마포구",
																"양천구", "강서구",
																"구로구", "금천구",
																"영등포구", "동작구",
																"관악구", "서초구",
																"강남구", "송파구",
																"강동구" ];
														var good_b = [ "시·군·구",
																"중구", "서구",
																"동구", "영도구",
																"부산진구", "동래구",
																"남구", "북구",
																"해운대구", "사하구",
																"금정구", "강서구",
																"연제구", "수영구",
																"사상구", "기장군" ];
														var good_c = [ "시·군·구",
																"중구", "동구",
																"서구", "남구",
																"북구", "수성구",
																"달서구", "달성군" ];
														var good_d = [ "시·군·구",
																"중구", "동구",
																"미추홀구", "연수구",
																"남동구", "부평구",
																"계양구", "서구",
																"강화군", "옹진군" ];
														var good_e = [ "시·군·구",
																"동구", "서구",
																"남구", "북구",
																"광산구" ];
														var good_f = [ "시·군·구",
																"동구", "중구",
																"서구", "유성구",
																"대덕구" ];
														var good_g = [ "시·군·구",
																"중구", "남구",
																"동구", "북구",
																"울주군" ];
														var good_h = [ "시·군·구",
																"세종특별자치시" ];
														var good_i = [ "시·군·구",
																"수원시", "성남시",
																"의정부시", "안양시",
																"부천시", "광명시",
																"평택시", "동두천시",
																"안산시", "고양시",
																"과천시", "구리시",
																"남양주시", "오산시",
																"시흥시", "군포시",
																"의왕시", "하남시",
																"용인시", "파주시",
																"이천시", "안성시",
																"김포시", "화성시",
																"광주시", "양주시",
																"포천시", "여주시",
																"연천군", "가평군",
																"양평군" ];
														var good_j = [ "시·군·구",
																"춘천시", "원주시",
																"강릉시", "동해시",
																"태백시", "속초시",
																"삼척시", "홍천군",
																"횡성군", "영월군",
																"평창군", "정선군",
																"철원군", "화천군",
																"양구군", "인제군",
																"고성군", "양양군" ];
														var good_k = [ "시·군·구",
																"청주시", "충주시",
																"제천시", "보은군",
																"옥천군", "영동군",
																"증평군", "진천군",
																"괴산군", "음성군",
																"단양군" ];
														var good_l = [ "시·군·구",
																"천안시", "공주시",
																"보령시", "아산시",
																"서산시", "논산시",
																"계룡시", "당진시",
																"금산군", "부여군",
																"서천군", "청양군",
																"홍성군", "예산군",
																"태안군" ];
														var good_m = [ "시·군·구",
																"전주시", "군산시",
																"익산시", "정읍시",
																"남원시", "김제시",
																"완주군", "진안군",
																"무주군", "장수군",
																"임실군", "순창군",
																"고창군", "부안군" ];
														var good_n = [ "시·군·구",
																"목포시", "여수시",
																"순천시", "나주시",
																"광양시", "담양군",
																"곡성군", "구례군",
																"고흥군", "보성군",
																"화순군", "장흥군",
																"강진군", "해남군",
																"영암군", "무안군",
																"함평군", "영광군",
																"장성군", "완도군",
																"진도군", "신안군" ];
														var good_o = [ "시·군·구",
																"포항시", "경주시",
																"김천시", "안동시",
																"구미시", "영주시",
																"영천시", "상주시",
																"문경시", "경산시",
																"군위군", "의성군",
																"청송군", "영양군",
																"영덕군", "청도군",
																"고령군", "성주군",
																"칠곡군", "예천군",
																"봉화군", "울진군",
																"울릉군" ];
														var good_p = [ "시·군·구",
																"창원시", "진주시",
																"통영시", "사천시",
																"김해시", "밀양시",
																"거제시", "양산시",
																"의령군", "함안군",
																"창녕군", "고성군",
																"남해군", "하동군",
																"산청군", "함양군",
																"거창군", "합천군" ];
														var good_q = [ "시·군·구",
																"제주시", "서귀포시" ];

														var target = document
																.getElementById("good");

														if (e.value == "a")
															var d = good_a;
														else if (e.value == "b")
															var d = good_b;
														else if (e.value == "c")
															var d = good_c;
														else if (e.value == "d")
															var d = good_d;
														else if (e.value == "e")
															var d = good_e;
														else if (e.value == "f")
															var d = good_f;
														else if (e.value == "g")
															var d = good_g;
														else if (e.value == "h")
															var d = good_h;
														else if (e.value == "i")
															var d = good_i;
														else if (e.value == "j")
															var d = good_j;
														else if (e.value == "k")
															var d = good_k;
														else if (e.value == "l")
															var d = good_l;
														else if (e.value == "m")
															var d = good_m;
														else if (e.value == "n")
															var d = good_n;
														else if (e.value == "o")
															var d = good_o;
														else if (e.value == "p")
															var d = good_p;
														else if (e.value == "q")
															var d = good_q;

														target.options.length = 0;

														for (x in d) {
															var opt = document
																	.createElement("option");
															opt.value = d[x];
															opt.innerHTML = d[x];
															target
																	.appendChild(opt);
														}
													}
												</script>
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
									<dt>
										<label for="year1">조회 연/월</label>
										<!-- 조회기간 tooltip mobile -->
										<!-- 														<span class="popover-btn"><span class="hide">조회기간</span></span>
	                                                    <div class="popover-layer">
	                                                        <p class="pHeader">조회기간</p>
	                                                        <p class="pContent">
	                                                                    <span>
																			주민등록 인구통계는 2008년부터 시스템으로 집계하여 공표하고 있습니다.
																		</span>
																		<span>
																			2008년 이전 자료는 통계청 자료(www.kosis.kr)를 이용하시기 바랍니다.
																		</span>
																		<span>
																			작성기준 : 매월 말일 /공표일시 : 매월 1일 12시 이후(공표일이 주말, 공휴일인 경우에는 다음 평일에 공표)
																		</span>
	                                                        </p>
	                                                        <p class="pFooter"><span>닫기</span></p>
	                                                    </div> -->
									</dt>
								</dl>	
<!-- 									<dd class="td_period">
										<div class="row">
											<div>
												<input class="i_radio" type="radio" value="month"
													id="searchYearMonth" name="searchYearMonth" checked="">
												<label for="period_select1">월간</label>
											</div>
											<div>
												<input class="i_radio" type="radio" value="year"
													id="searchYearMonth" name="searchYearMonth"> <label
													for="period_select2">연간</label>
											</div>
										</div>
									</dd> -->
									
									<dl>
										<div class="row">
											<dd class="td1_2">
												<select class="form-control" name="searchYearStart"
													id="searchYearStart">

													<option value="2021" selected="">2021년</option>
													<option value="2020">2020년</option>
													<option value="2019">2019년</option>
													<option value="2018">2018년</option>
													<option value="2017">2017년</option>
													<option value="2016">2016년</option>
													<option value="2015">2015년</option>
													<option value="2014">2014년</option>
													<option value="2013">2013년</option>
													<option value="2012">2012년</option>
													<option value="2011">2011년</option>
													<option value="2010">2010년</option>
													<option value="2009">2009년</option>
													<option value="2008">2008년</option>
												</select>
											</dd>
											<dd class="td1_2">
												<select class="form-control" name="searchMonthStart"
													id="searchMonthStart">
													<option value="12">12월</option>
													<option value="11">11월</option>
													<option value="10">10월</option>
													<option value="09">09월</option>
													<option value="08" selected="">08월</option>
													<option value="07">07월</option>
													<option value="06">06월</option>
													<option value="05">05월</option>
													<option value="04">04월</option>
													<option value="03">03월</option>
													<option value="02">02월</option>
													<option value="01">01월</option>
												</select>
											</dd>
											<h3 class="dash">~</h3>
											<dd class="td1_2">
												<select class="form-control" name="searchYearEnd"
													id="searchYearEnd">

													<option value="2021" selected="">2021년</option>
													<option value="2020">2020년</option>
													<option value="2019">2019년</option>
													<option value="2018">2018년</option>
													<option value="2017">2017년</option>
													<option value="2016">2016년</option>
													<option value="2015">2015년</option>
													<option value="2014">2014년</option>
													<option value="2013">2013년</option>
													<option value="2012">2012년</option>
													<option value="2011">2011년</option>
													<option value="2010">2010년</option>
													<option value="2009">2009년</option>
													<option value="2008">2008년</option>
												</select>
											</dd>
											<dd class="td1_2">
												<select class="form-control" name="searchMonthEnd"
													id="searchMonthEnd">
													<option value="12">12월</option>
													<option value="11">11월</option>
													<option value="10">10월</option>
													<option value="09">09월</option>
													<option value="08" selected="">08월</option>
													<option value="07">07월</option>
													<option value="06">06월</option>
													<option value="05">05월</option>
													<option value="04">04월</option>
													<option value="03">03월</option>
													<option value="02">02월</option>
													<option value="01">01월</option>
												</select>
											</dd>
										</div>
									</dl>
									
							</div>





							<div class="dl_group">
								<!-- <dl class="label_txt">
									<dt>구분</dt>
									<div class="row">
										<dd>
											<input class="i_check" id="sex1" type="checkbox"
												name="gender" value="gender" checked=""> <label
												for="sex1">세대수</label>
										</dd>
										<dd>
											<input class="i_check" id="sex2" type="checkbox"
												name="genderPer" value="genderPer" checked=""> <label
												for="sex2">세대당 인구</label>
										</dd>
										<dd>
											<input class="i_check" id="generation" type="checkbox"
												name="generation" value="generation" checked=""> <label
												for="generation">작년 (동월) 대비 세대수 증감</label>
										</dd>
									</div>
								</dl> -->
								<!-- <dl>
									<dt>
										<label for="range">정렬순서</label>
									</dt>
									<div class="row">
										<dd class="td2">
											<select class="form-control" name="sltOrderType"
												id="sltOrderType" title="행정기관코드">
												id="range"
												<option value="1">행정기관코드</option>
											</select>
										</dd>
										<dd class="td2">
											<select class="form-control" name="sltOrderValue"
												id="sltOrderValue">
												id="sort"
												<option value="ASC" selected="">오름차순</option>
												<option value="DESC">내림차순</option>
											</select>
										</dd>
									</div>
								</dl> -->
							</div>
					</div>
					</fieldset>
					<div class="btn_box">
						<input type="submit" value="검색" class="btn_search"
							onclick="return goSearch();">
						<!-- <input type="reset"
							value="초기화" class="btn_reset" onclick="return goReset();"> -->
					</div>

				</div>
			</div>
			</form>
		</div>


	<!-- /# column -->

	<!-- /# column -->
	<div class="col-lg-8">
		<div class="card" style="width: 1000px;">
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
									<th>년도</th>
									<th>월</th>
									<th>시·도</th>
									<th>시·군·구</th>
									<th>세대수</th>
									<th>세대당 인구</th>

								</tr>
							</thead>
							<tbody>

								 	<tr class="alert" role="alert">
										<th scope="row">2021</th>
										<td>08</td>
										<td>서울특별시</td>
										<td>종로구</td>
										<td>60318</td>
										<td>2.3</td>
									</tr>
									<tr class="alert" role="alert">
										<th scope="row">2021</th>
										<td>08</td>
										<td>서울특별시</td>
										<td>중구</td>
										<td>57712</td>
										<td>2.4</td>
									</tr>
									<tr class="alert" role="alert">
										<th scope="row">2021</th>
										<td>08</td>
										<td>서울특별시</td>
										<td>용산구</td>
										<td>46575</td>
										<td>2.1</td>
									</tr>
									<tr class="alert" role="alert">
										<th scope="row">2021</th>
										<td>08</td>
										<td>서울특별시</td>
										<td>성동구</td>
										<td>48766</td>
										<td>1.9</td>
									</tr>
									<tr class="alert" role="alert">
										<th scope="row">2021</th>
										<td>08</td>
										<td>서울특별시</td>
										<td>광진구</td>
										<td>48895</td>
										<td>2.1</td>
									</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>




	<!-- /# column -->


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
	<!-- scripit init-->
	<script src="/population/resources/assets/js/dashboard2.js"></script>
</body>

</html>