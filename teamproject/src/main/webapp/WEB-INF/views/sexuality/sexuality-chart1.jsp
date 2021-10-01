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
				<form id="search-household-form" method="post" action="search-chart">
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



											<!--            <div class="row">
											<dd class="td3">
												<select class="form-control" onchange="categoryChange(this)" name="sido">
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
												<select class="form-control" id="good" name="gugun">
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
										</div> -->


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

<!-- 												<dd class="td3">
													<select class="form-control" id="good" name="gugun">
														<option>시·군·구</option>
													</select>

													<script type="text/javascript">
														function categoryChange(
																e) {
															var good_11 = [
																	[ "시·군·구",
																			-1 ],
																	[ "종로구",
																			110 ],
																	[ "중구", 140 ],
																	[ "용산구",
																			170 ],
																	[ "성동구",
																			120 ],
																	[ "광진구",
																			215 ],
																	[ "동대문구",
																			230 ],
																	[ "중랑구",
																			260 ],
																	[ "성북구",
																			290 ],
																	[ "강북구",
																			305 ],
																	[ "도봉구",
																			320 ],
																	[ "노원구",
																			350 ],
																	[ "은평구",
																			380 ],
																	[ "서대문구",
																			410 ],
																	[ "마포구",
																			440 ],
																	[ "양천구",
																			470 ],
																	[ "강서구",
																			500 ],
																	[ "구로구",
																			530 ],
																	[ "금천구",
																			545 ],
																	[ "영등포구",
																			560 ],
																	[ "동작구",
																			590 ],
																	[ "관악구",
																			620 ],
																	[ "서초구",
																			650 ],
																	[ "강남구",
																			680 ],
																	[ "송파구",
																			710 ],
																	[ "강동구",
																			740 ] ];
															var good_26 = [
																	[ "시·군·구",
																			-1 ],
																	[ "중구", 110 ],
																	[ "서구", 140 ],
																	[ "동구", 170 ],
																	[ "영도구",
																			200 ],
																	[ "부산진구",
																			230 ],
																	[ "동래구",
																			260 ],
																	[ "남구", 290 ],
																	[ "북구", 320 ],
																	[ "해운대구",
																			350 ],
																	[ "사하구",
																			380 ],
																	[ "금정구",
																			410 ],
																	[ "강서구",
																			440 ],
																	[ "연제구",
																			470 ],
																	[ "수영구",
																			500 ],
																	[ "사상구",
																			530 ],
																	[ "기장군",
																			710 ] ];
															var good_27 = [
																	[ "시·군·구",
																			-1 ],
																	[ "중구", 110 ],
																	[ "동구", 140 ],
																	[ "서구", 170 ],
																	[ "남구", 200 ],
																	[ "북구", 230 ],
																	[ "수성구",
																			260 ],
																	[ "달서구",
																			290 ],
																	[ "달성군",
																			710 ] ];
															var good_28 = [
																	[ "시·군·구",
																			-1 ],
																	[ "중구", 110 ],
																	[ "동구", 140 ],
																	[ "미추홀구",
																			170 ],
																	[ "연수구",
																			185 ],
																	[ "남동구",
																			200 ],
																	[ "부평구",
																			237 ],
																	[ "계양구",
																			245 ],
																	[ "서구", 260 ],
																	[ "강화군",
																			710 ],
																	[ "옹진군",
																			720 ] ];
															var good_29 = [
																	[ "시·군·구",
																			-1 ],
																	[ "동구", 110 ],
																	[ "서구", 140 ],
																	[ "남구", 170 ],
																	[ "북구", 200 ],
																	[ "광산구",
																			200 ] ];
															var good_30 = [
																	[ "시·군·구",
																			-1 ],
																	[ "동구", 110 ],
																	[ "중구", 140 ],
																	[ "서구", 170 ],
																	[ "유성구",
																			200 ],
																	[ "대덕구",
																			230 ] ];
															var good_31 = [
																	[ "시·군·구",
																			-1 ],
																	[ "중구", 110 ],
																	[ "남구", 140 ],
																	[ "동구", 170 ],
																	[ "북구", 200 ],
																	[ "울주군",
																			710 ] ];
															var good_36 = [
																	[ "시·군·구",
																			-1 ],
																	[
																			"세종특별자치시",
																			110 ] ];
															var good_41 = [
																	[ "시·군·구",
																			-1 ],
																	[ "수원시",
																			110 ],
																	[ "성남시",
																			130 ],
																	[ "의정부시",
																			150 ],
																	[ "안양시",
																			170 ],
																	[ "부천시",
																			190 ],
																	[ "광명시",
																			210 ],
																	[ "평택시",
																			220 ],
																	[ "동두천시",
																			250 ],
																	[ "안산시",
																			270 ],
																	[ "고양시",
																			280 ],
																	[ "과천시",
																			290 ],
																	[ "구리시",
																			310 ],
																	[ "남양주시",
																			360 ],
																	[ "오산시",
																			370 ],
																	[ "시흥시",
																			390 ],
																	[ "군포시",
																			410 ],
																	[ "의왕시",
																			430 ],
																	[ "하남시",
																			450 ],
																	[ "용인시",
																			460 ],
																	[ "파주시",
																			480 ],
																	[ "이천시",
																			500 ],
																	[ "안성시",
																			550 ],
																	[ "김포시",
																			570 ],
																	[ "화성시",
																			590 ],
																	[ "광주시",
																			610 ],
																	[ "양주시",
																			630 ],
																	[ "포천시",
																			650 ],
																	[ "여주시",
																			670 ],
																	[ "연천군",
																			800 ],
																	[ "가평군",
																			820 ],
																	[ "양평군",
																			830 ] ];
															var good_42 = [
																	[ "시·군·구",
																			-1 ],
																	[ "춘천시",
																			110 ],
																	[ "원주시",
																			130 ],
																	[ "강릉시",
																			150 ],
																	[ "동해시",
																			170 ],
																	[ "태백시",
																			190 ],
																	[ "속초시",
																			210 ],
																	[ "삼척시",
																			230 ],
																	[ "홍천군",
																			720 ],
																	[ "횡성군",
																			730 ],
																	[ "영월군",
																			750 ],
																	[ "평창군",
																			760 ],
																	[ "정선군",
																			770 ],
																	[ "철원군",
																			780 ],
																	[ "화천군",
																			790 ],
																	[ "양구군",
																			800 ],
																	[ "인제군",
																			810 ],
																	[ "고성군",
																			820 ],
																	[ "양양군",
																			830 ] ];
															var good_43 = [
																	[ "시·군·구",
																			-1 ],
																	[ "청주시",
																			110 ],
																	[ "충주시",
																			130 ],
																	[ "제천시",
																			150 ],
																	[ "보은군",
																			720 ],
																	[ "옥천군",
																			730 ],
																	[ "영동군",
																			740 ],
																	[ "증평군",
																			745 ],
																	[ "진천군",
																			750 ],
																	[ "괴산군",
																			760 ],
																	[ "음성군",
																			770 ],
																	[ "단양군",
																			780 ] ];
															var good_44 = [
																	[ "시·군·구",
																			-1 ],
																	[ "천안시",
																			130 ],
																	[ "공주시",
																			150 ],
																	[ "보령시",
																			180 ],
																	[ "아산시",
																			200 ],
																	[ "서산시",
																			210 ],
																	[ "논산시",
																			230 ],
																	[ "계룡시",
																			250 ],
																	[ "당진시",
																			270 ],
																	[ "금산군",
																			710 ],
																	[ "부여군",
																			760 ],
																	[ "서천군",
																			770 ],
																	[ "청양군",
																			790 ],
																	[ "홍성군",
																			800 ],
																	[ "예산군",
																			810 ],
																	[ "태안군",
																			825 ] ];
															var good_45 = [
																	[ "시·군·구",
																			-1 ],
																	[ "전주시",
																			110 ],
																	[ "군산시",
																			130 ],
																	[ "익산시",
																			140 ],
																	[ "정읍시",
																			180 ],
																	[ "남원시",
																			190 ],
																	[ "김제시",
																			210 ],
																	[ "완주군",
																			710 ],
																	[ "진안군",
																			720 ],
																	[ "무주군",
																			730 ],
																	[ "장수군",
																			740 ],
																	[ "임실군",
																			750 ],
																	[ "순창군",
																			770 ],
																	[ "고창군",
																			790 ],
																	[ "부안군",
																			800 ] ];
															var good_46 = [
																	[ "시·군·구",
																			-1 ],
																	[ "목포시",
																			110 ],
																	[ "여수시",
																			130 ],
																	[ "순천시",
																			150 ],
																	[ "나주시",
																			170 ],
																	[ "광양시",
																			230 ],
																	[ "담양군",
																			710 ],
																	[ "곡성군",
																			720 ],
																	[ "구례군",
																			730 ],
																	[ "고흥군",
																			770 ],
																	[ "보성군",
																			780 ],
																	[ "화순군",
																			790 ],
																	[ "장흥군",
																			800 ],
																	[ "강진군",
																			810 ],
																	[ "해남군",
																			820 ],
																	[ "영암군",
																			830 ],
																	[ "무안군",
																			840 ],
																	[ "함평군",
																			860 ],
																	[ "영광군",
																			870 ],
																	[ "장성군",
																			880 ],
																	[ "완도군",
																			890 ],
																	[ "진도군",
																			900 ],
																	[ "신안군",
																			910 ] ];
															var good_47 = [
																	[ "시·군·구",
																			-1 ],
																	[ "포항시",
																			110 ],
																	[ "경주시",
																			130 ],
																	[ "김천시",
																			150 ],
																	[ "안동시",
																			170 ],
																	[ "구미시",
																			190 ],
																	[ "영주시",
																			210 ],
																	[ "영천시",
																			230 ],
																	[ "상주시",
																			250 ],
																	[ "문경시",
																			280 ],
																	[ "경산시",
																			290 ],
																	[ "군위군",
																			720 ],
																	[ "의성군",
																			730 ],
																	[ "청송군",
																			750 ],
																	[ "영양군",
																			760 ],
																	[ "영덕군",
																			770 ],
																	[ "청도군",
																			820 ],
																	[ "고령군",
																			830 ],
																	[ "성주군",
																			840 ],
																	[ "칠곡군",
																			850 ],
																	[ "예천군",
																			900 ],
																	[ "봉화군",
																			920 ],
																	[ "울진군",
																			930 ],
																	[ "울릉군",
																			940 ] ];
															var good_48 = [
																	[ "시·군·구",
																			-1 ],
																	[ "창원시",
																			120 ],
																	[ "진주시",
																			170 ],
																	[ "통영시",
																			220 ],
																	[ "사천시",
																			240 ],
																	[ "김해시",
																			250 ],
																	[ "밀양시",
																			270 ],
																	[ "거제시",
																			310 ],
																	[ "양산시",
																			330 ],
																	[ "의령군",
																			720 ],
																	[ "함안군",
																			730 ],
																	[ "창녕군",
																			740 ],
																	[ "고성군",
																			820 ],
																	[ "남해군",
																			840 ],
																	[ "하동군",
																			850 ],
																	[ "산청군",
																			860 ],
																	[ "함양군",
																			870 ],
																	[ "거창군",
																			880 ],
																	[ "합천군",
																			890 ] ];
															var good_50 = [
																	[ "시·군·구",
																			-1 ],
																	[ "제주시",
																			110 ],
																	[ "서귀포시",
																			130 ] ];

															var target = document
																	.getElementById("good");

															if (e.value == "11")
																var d = good_11;
															else if (e.value == "26")
																var d = good_26;
															else if (e.value == "27")
																var d = good_27;
															else if (e.value == "28")
																var d = good_28;
															else if (e.value == "29")
																var d = good_29;
															else if (e.value == "30")
																var d = good_30;
															else if (e.value == "31")
																var d = good_31;
															else if (e.value == "36")
																var d = good_36;
															else if (e.value == "41")
																var d = good_41;
															else if (e.value == "42")
																var d = good_42;
															else if (e.value == "43")
																var d = good_43;
															else if (e.value == "44")
																var d = good_44;
															else if (e.value == "45")
																var d = good_45;
															else if (e.value == "46")
																var d = good_46;
															else if (e.value == "47")
																var d = good_47;
															else if (e.value == "48")
																var d = good_48;
															else if (e.value == "50")
																var d = good_50;

															target.options.length = 0;

															for (x in d) {
																var opt = document
																		.createElement("option");
																opt.value = d[x][1]; // 이 부분 수정
																opt.innerHTML = d[x][0]; // 이 부분 수정
																target
																		.appendChild(opt);
															}
														}
													</script>
												</dd> -->
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
									<th>시도</th>
									<th>년도</th>
									<th>월</th>
									<th style="text-align: right;">남자 인구수</th>
									<th style="text-align: right;">여자 인구수</th>
									<th style="text-align: right;">남녀 성비(여자/남자)</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach items="${genderList}" var="genders">
									<tr>
										<td>${gender.region}</td>
										<td>${gender.year}년</td>
										<td>${gender.month}월</td>
										<td style="text-align: right;">${gender.population_male}</td>
										<td style="text-align: right;">${gender.population_female}</td>									
										<td style="text-align: right;">${(gender.population_male)%(gender.population_female)}</td>
									</tr>
								</c:forEach>

								<!-- <tr class="alert" role="alert">
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
								</tr> -->
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<!--	 		<script type="text/javascript">

 			$(function() {
			$(#searchMonthEnd).on('change', function(event) {
				var monthEnd = $(this).val();
				var month = $(this).find("option:selected").text();
			
			location.href = “household/search?searchMonthEnd=" + monthEnd;
			
		</script> -->

	<!-- /# column -->


	<!-- jquery vendor -->
	<script src="/population/resources/assets/js/lib/jquery.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$("#search-link").on('click', function(event) {
				$('#search-household-form').submit();
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