<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Gender_statistics</title>
</head>
<body>

	<!-- sidebar -->
	<jsp:include page="/WEB-INF/views/modules/sidebar.jsp" />
	<!-- end of sidebar -->

	<!-- css -->
	<jsp:include page="/WEB-INF/views/modules/common-css.jsp" />
	<!-- end of css -->

	<!-- js -->
	<jsp:include page="/WEB-INF/views/modules/common-js.jsp" />
	<!-- end of js -->

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
									<dt>

										<!-- 행정구역 tooltip mobile -->
										<div class="row">
											<div class="popover-layer">
												<p class="pHeader">행정구역</p>
											</div>
									</dt>

									<div class="row">
										<dd class="td3">
											<select class="form-control" onchange="categoryChange(this)"
												name="sido">
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
											<select class="form-control" id="good" name="sigungu">
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
								</div>

							</div>
							<div class="dl_group">

								<input type="hidden" value="2021" id="nowYear" name="nowYear">


								<!-- <dt>
							<label for="year1">조회기간</label>

						</dt>
						 -->

								<dt>
									<div class="popover-layer">
										<p class="pHeader">조회기간</p>
									</div>
								</dt>
								<dd class="td_period">
									<div>
										<input class="i_radio" type="radio" value="month" id="searchMonth" name="searchYearMonth" checked="">
											<label for="period_select1">월간</label>
										<input class="i_radio" type="radio" value="year" id="searchYear" name="searchYearMonth">
											<label for="period_select2">연간</label>
									</div>
								</dd>
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
									<span class="dash" style="font-size: large">&nbsp; ~
										&nbsp;</span>
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
								</div>
							</div>
					</div>

					<div class="btn_box">
						<input type="submit" value="검색" class="btn_search"
							onclick="return goSearch();">
					</div>

				</div>
			</div>
		</div>

		<!-- /# column -->


		<!-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->


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
					<!-- table -->
					<div class="tab_section current_table">
						<div id="contextTable_wrapper"
							class="dataTables_wrapper no-footer dts DTS">
							<div class="DTFC_ScrollWrapper"
								style="position: relative; clear: both; height: 601px;">
								<div class="DTFC_RightWrapper"
									style="position: absolute; top: 0; right: 0;"
									aria-hidden="true">
									<div class="DTFC_RightHeadWrapper"
										style="position: relative; top: 0; left: 0;">
										<div class="DTFC_RightHeadBlocker DTFC_Blocker"
											style="position: absolute; top: 0; bottom: 0;"></div>
									</div>
									<div class="DTFC_RightBodyWrapper"
										style="position: relative; top: 0; left: 0; overflow: hidden;">
										<div class="DTFC_RightBodyLiner"
											style="position: relative; top: 0; left: 0; overflow-y: scroll;"></div>
									</div>
									<div class="DTFC_RightFootWrapper"
										style="position: relative; top: 0; left: 0;">
										<div class="DTFC_RightFootBlocker DTFC_Blocker"
											style="position: absolute; top: 0; bottom: 0;"></div>
									</div>
								</div>
								<div class="dataTables_scroll">
									<div class="dataTables_scrollHead"
										style="overflow: hidden; position: relative; border: 0px; width: 100%;">
										<div class="dataTables_scrollHeadInner"
											style="box-sizing: content-box; width: 866px; padding-right: 17px;">
											<table class="tbl_type1 dataTable no-footer" cellspacing="0"
												role="grid" style="margin-left: 0px; width: 866px;">
												<thead>
													<tr role="row" style="height: 50px;">

														<th colspan="6" rowspan="1">2021년 08월</th>
													</tr>

													<tr role="row" style="height: 50px;">
														<th scope="col" class="th1 sorting" tabindex="0"
															aria-controls="contextTable" rowspan="1" colspan="1"
															style="width: 86.375px;"
															aria-label="행정구역: activate to sort column ascending">
															행정구역</th>
														<th scope="col" class="th1 sorting" tabindex="0"
															aria-controls="contextTable" rowspan="1" colspan="1"
															style="width: 86.375px;"
															aria-label="총 인구수: activate to sort column ascending">총
															인구수</th>

														<th scope="col" class="th1 sorting" tabindex="0"
															aria-controls="contextTable" rowspan="1" colspan="1"
															style="width: 92.7812px;"
															aria-label="남자 인구수: activate to sort column ascending">남자
															인구수</th>
														<th scope="col" class="th1 sorting" tabindex="0"
															aria-controls="contextTable" rowspan="1" colspan="1"
															style="width: 92.7812px;"
															aria-label="여자 인구수: activate to sort column ascending">여자
															인구수</th>
														<th scope="col" class="th1 sorting" tabindex="0"
															aria-controls="contextTable" rowspan="1" colspan="1"
															style="width: 86.4375px;"
															aria-label="남여 비율: activate to sort column ascending">남여
															비율</th>
													</tr>
												</thead>

											</table>
										</div>
									</div>
									<div class="dataTables_scrollBody"
										style="position: relative; overflow: auto; width: 100%; max-height: 500px; height: 500px;">
										<table class="tbl_type1 dataTable no-footer" cellspacing="0"
											id="contextTable" role="grid"
											style="width: 866px; position: absolute; top: 0px; left: 0px; background-color: white;">
											<colgroup>
												<col width="12%">
												<col width="12%" span="6">
											</colgroup>
											<thead>
												<tr role="row" style="height: 0px;">
													<th colspan="6" rowspan="1"
														style="padding-top: 0px; padding-bottom: 0px; border-top-width: 0px; border-bottom-width: 0px; height: 0px; width: 692.531px;">
														<div class="dataTables_sizing"
															style="height: 0px; overflow: hidden;">2021년 08월</div>
													</th>
												</tr>

												<tr role="row" style="height: 0px;">

													<th scope="col" class="th1 sorting"
														aria-controls="contextTable" rowspan="1" colspan="1"
														style="width: 86.375px;"
														aria-label="총 인구수: activate to sort column ascending">
														<div class="dataTables_sizing"
															style="height: 0px; overflow: hidden;">총 인구수</div>
													</th>
													<th scope="col" class="th1 sorting"
														aria-controls="contextTable" rowspan="1" colspan="1"
														style="width: 92.7812px;"
														aria-label="남자 인구수: activate to sort column ascending"><div
															class="dataTables_sizing"
															style="height: 0px; overflow: hidden;">남자 인구수</div></th>
													<th scope="col" class="th1 sorting"
														aria-controls="contextTable" rowspan="1" colspan="1"
														style="width: 92.7812px;"
														aria-label="여자 인구수: activate to sort column ascending">
														<div class="dataTables_sizing"
															style="height: 0px; overflow: hidden;">여자 인구수</div>
													</th>
													<th scope="col" class="th1 sorting"
														aria-controls="contextTable" rowspan="1" colspan="1"
														style="width: 86.4375px;"
														aria-label="남여 비율: activate to sort column ascending">
														<div class="dataTables_sizing"
															style="height: 0px; overflow: hidden;">남여 비율</div>
													</th>
												</tr>
											</thead>



											<tbody>
												<!-- forEach Level_00 End -->
												<tr role="row" class="odd selected" style="height: 49px;">
													<td style="display: none;" class="sorting_1">1000000000</td>
													<td class="td_admin th1">전국</td>

													<td style="padding-left: 80px;">51,669,716</td>
													<td style="padding-left: 116px;">25,766,031</td>
													<td style="padding-left: 108px;">25,903,685</td>
													<td style="padding-left: 100px;">0.99</td>
												</tr>

												<tr role="row" class="even" style="height: 49px;">
													<td style="display: none;" class="sorting_1">1100000000</td>
													<td class="td_admin th1">서울특별시</td>

													<td style="padding-left: 85px;">9,550,227</td>
													<td style="padding-left: 125px;">4,640,740</td>
													<td style="padding-left: 115px;">4,909,487</td>
													<td style="padding-left: 100px;">0.95</td>
												</tr>

												<tr role="row" class="odd" style="height: 49px;">
													<td style="display: none;" class="sorting_1">2600000000</td>
													<td class="td_admin th1">부산광역시</td>

													<td style="padding-left: 85px;">3,359,527</td>
													<td style="padding-left: 125px;">1,644,378</td>
													<td style="padding-left: 115px;">1,715,149</td>
													<td style="padding-left: 100px;">0.96</td>
												</tr>

												<tr role="row" class="even" style="height: 49px;">
													<td style="display: none;" class="sorting_1">2700000000</td>
													<td class="td_admin th1">대구광역시</td>

													<td style="padding-left: 85px;">2,393,626</td>
													<td style="padding-left: 125px;">1,180,223</td>
													<td style="padding-left: 115px;">1,213,403</td>
													<td style="padding-left: 100px;">0.97</td>
												</tr>

												<tr role="row" class="odd" style="height: 49px;">
													<td style="display: none;" class="sorting_1">2800000000</td>
													<td class="td_admin th1">인천광역시</td>

													<td style="padding-left: 85px;">2,938,429</td>
													<td style="padding-left: 125px;">1,471,347</td>
													<td style="padding-left: 115px;">1,467,082</td>
													<td style="padding-left: 100px;">1.00</td>
												</tr>

												<tr role="row" class="even" style="height: 49px;">
													<td style="display: none;" class="sorting_1">2900000000</td>
													<td class="td_admin th1">광주광역시</td>

													<td style="padding-left: 85px;">1,441,970</td>
													<td style="padding-left: 125px;">713,286</td>
													<td style="padding-left: 115px;">728,684</td>
													<td style="padding-left: 100px;">0.98</td>
												</tr>

												<tr role="row" class="odd" style="height: 49px;">
													<td style="display: none;" class="sorting_1">3000000000</td>
													<td class="td_admin th1">대전광역시</td>

													<td style="padding-left: 85px;">1,454,679</td>
													<td style="padding-left: 125px;">725,956</td>
													<td style="padding-left: 115px;">728,723</td>
													<td style="padding-left: 100px;">1.00</td>
												</tr>

												<tr role="row" class="even" style="height: 49px;">
													<td style="display: none;" class="sorting_1">3100000000</td>
													<td class="td_admin th1">울산광역시</td>

													<td style="padding-left: 85px;">1,124,459</td>
													<td style="padding-left: 125px;">577,806</td>
													<td style="padding-left: 115px;">546,653</td>
													<td style="padding-left: 100px;">1.06</td>
												</tr>

												<tr role="row" class="odd" style="height: 49px;">
													<td style="display: none;" class="sorting_1">3600000000</td>
													<td class="td_admin th1">세종특별자치시</td>

													<td style="padding-left: 90px;">365,309</td>
													<td style="padding-left: 125px;">182,430</td>
													<td style="padding-left: 115px;">182,879</td>
													<td style="padding-left: 100px;">1.00</td>
												</tr>

												<tr role="row" class="even" style="height: 49px;">
													<td style="display: none;" class="sorting_1">4100000000</td>
													<td class="td_admin th1">경기도</td>

													<td style="padding-left: 80px;">13,530,519</td>
													<td style="padding-left: 120px;">6,810,105</td>
													<td style="padding-left: 110px;">6,720,414</td>
													<td style="padding-left: 100px;">1.01</td>
												</tr>

												<tr role="row" class="odd" style="height: 49px;">
													<td style="display: none;" class="sorting_1">4200000000</td>
													<td class="td_admin th1">강원도</td>

													<td style="padding-left: 85px;">1,536,270</td>
													<td style="padding-left: 125px;">773,260</td>
													<td style="padding-left: 115px;">763,010</td>
													<td style="padding-left: 100px;">1.01</td>
												</tr>

												<tr role="row" class="even" style="height: 49px;">
													<td style="display: none;" class="sorting_1">4300000000</td>
													<td class="td_admin th1">충청북도</td>

													<td style="padding-left: 85px;">1,597,179</td>
													<td style="padding-left: 125px;">810,095</td>
													<td style="padding-left: 115px;">787,084</td>
													<td style="padding-left: 100px;">1.03</td>
												</tr>

												<tr role="row" class="odd" style="height: 49px;">
													<td style="display: none;" class="sorting_1">4400000000</td>
													<td class="td_admin th1">충청남도</td>

													<td style="padding-left: 85px;">2,118,183</td>
													<td style="padding-left: 125px;">1,082,664</td>
													<td style="padding-left: 115px;">1,035,519</td>
													<td style="padding-left: 100px;">1.05</td>
												</tr>

												<tr role="row" class="even" style="height: 49px;">
													<td style="display: none;" class="sorting_1">4500000000</td>
													<td class="td_admin th1">전라북도</td>

													<td style="padding-left: 85px;">1,792,476</td>
													<td style="padding-left: 125px;">891,776</td>
													<td style="padding-left: 115px;">900,700</td>
													<td style="padding-left: 100px;">0.99</td>
												</tr>

												<tr role="row" class="odd" style="height: 49px;">
													<td style="display: none;" class="sorting_1">4600000000</td>
													<td class="td_admin th1">전라남도</td>

													<td style="padding-left: 85px;">1,838,353</td>
													<td style="padding-left: 125px;">924,912</td>
													<td style="padding-left: 115px;">913,441</td>
													<td style="padding-left: 100px;">1.01</td>
												</tr>

												<tr role="row" class="even" style="height: 49px;">
													<td style="display: none;" class="sorting_1">4700000000</td>
													<td class="td_admin th1">경상북도</td>

													<td style="padding-left: 85px;">2,630,254</td>
													<td style="padding-left: 125px;">1,325,354</td>
													<td style="padding-left: 115px;">1,304,900</td>
													<td style="padding-left: 100px;">1.02</td>
												</tr>

												<tr role="row" class="odd" style="height: 49px;">
													<td style="display: none;" class="sorting_1">4800000000</td>
													<td class="td_admin th1">경상남도</td>

													<td style="padding-left: 85px;">3,322,373</td>
													<td style="padding-left: 125px;">1,672,737</td>
													<td style="padding-left: 115px;">1,649,636</td>
													<td style="padding-left: 100px;">1.01</td>
												</tr>

												<tr role="row" class="even" style="height: 49px;">
													<td style="display: none;" class="sorting_1">5000000000</td>
													<td class="td_admin th1">제주특별자치도</td>

													<td style="padding-left: 85px;">675,883</td>
													<td style="padding-left: 125px;">338,962</td>
													<td style="padding-left: 115px;">336,921</td>
													<td style="padding-left: 100px;">1.01</td>
												</tr>

											</tbody>
										</table>

										<div
											style="position: relative; top: 0px; left: 0px; width: 1px; height: 882px;"></div>
										<div class="dts_label" style="display: none;">0</div>
									</div>

									<div class="dataTables_scrollFoot"
										style="overflow: hidden; border: 0px; width: 100%;">
										<div class="dataTables_scrollFootInner">
											<table class="tbl_type1 dataTable no-footer" cellspacing="0"
												role="grid" style="margin-left: 0px;">
												<tfoot></tfoot>
											</table>
										</div>
									</div>
								</div>
								<div class="DTFC_LeftWrapper"
									style="position: absolute; top: 0px; left: 0px; width: 142.469px; height: 1px;"
									aria-hidden="true">
									<div class="DTFC_LeftHeadWrapper"
										style="position: relative; top: 0; left: 0; overflow: hidden;">
										<table class="tbl_type1 dataTable no-footer DTFC_Cloned"
											cellspacing="0" role="grid"
											style="margin-left: 0px; width: 100%;">
											<thead>
												<tr role="row" style="height: 50px;">
													<th rowspan="2" style="display: none; width: 0px;"
														class="sorting_asc" tabindex="0"
														aria-controls="contextTable" colspan="1"
														aria-label="행정기관코드: activate to sort column descending"
														aria-sort="ascending">행정기관코드</th>
												<tr role="row" style="height: 50px;"></tr>
											</thead>

										</table>
									</div>

								</div>
								<div class="DTFC_LeftFootWrapper"
									style="position: relative; top: 0; left: 0; overflow: hidden;"></div>
							</div>
						</div>
						<div class="dataTables_paginate paging_simple_numbers"
							id="contextTable_paginate">
							<a class="paginate_button previous disabled"
								aria-controls="contextTable" data-dt-idx="0" tabindex="0"
								id="contextTable_previous">Previous</a><span><a
								class="paginate_button current" aria-controls="contextTable"
								data-dt-idx="1" tabindex="0">1</a></span><a
								class="paginate_button next disabled"
								aria-controls="contextTable" data-dt-idx="2" tabindex="0"
								id="contextTable_next">Next</a>
						</div>
					</div>
				</div>
				<!-- //table -->
			</div>
			<!-- /# column -->
</html>