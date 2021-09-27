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
									시 or 도 행정구역 지도
								</h1>
							</div>
						</div>
					</div>

				</div>				
			
				<!-- /# row -->
				
				<section id="main-content">
					
					<div class="row">
						


					<div class="row">
                        <div class="col-lg-6">
                            <div class="card nestable-cart">
                                <div class="card-title">
                                    <h4>SEOUL</h4>
                                    <div class="card-title-right-icon">
                                        <ul>        
                                        </ul>
                                    </div>
                                </div>
                                
                                <div class="Vector-map-js">
                                  <!-- 여기서부터  -->
                                   <div class="card-body">
                                   
									<div class="Vector-map-js">
									
										<div class="allMap">
											<span class="allMap-view"><img src="/population/resources/assets/images/map/seoul.png" alt="seoul" usemap="#all-map"></span>
											<map name="all-map" id="all-map" class="allMap-point">
												<area shape="poly" coords="54,78,54,83,58,84,60,83,63,84,68,79,65,76,64,72,60,72,57,75" href="#" alt="서울" data-area-name="seoul" data-detail="ss_bg" data-code="11">
											</map>
										</div>
										<div class="mapDetail ss_bg" style="display: block;" data-parent-code="11" data-image="seoul_00.png" data-usemap="#seoul-map"><!-- djlee 수정 2019-07-15 -->
											<span class="mapDetail-view"><img src="/population/resources/assets/images/map/seoul_01.png" usemap="#seoul-map" alt="seoul_01"></span><!-- djlee 수정 2019-07-15 -->
											<map name="seoul-map" id="seoul-map" class="mapDetail-point">
												<area shape="poly" coords="416,16,411,15,408,19,402,23,402,27,400,37,405,63,402,60,395,72,412,87,418,84,427,80,433,84,436,81,440,81,439,76,444,71,444,64,439,58,432,59,431,53,430,48,433,42,433,35,429,29,434,22,425,18,422,13" href="#" data-code="11110" alt="노원구" data-area-num="seoul_01">
												<area shape="poly" coords="378,9,375,12,372,14,371,19,372,24,375,29,376,33,379,37,376,41,377,44,374,47,376,53,381,56,390,63,395,71,402,60,404,63,402,40,400,37,403,23,399,20,400,16,394,15,391,17,385,16,386,11" href="#" data-code="11100" alt="도봉구" data-area-num="seoul_02">
												<area shape="poly" coords="370,23,368,25,363,26,361,31,362,41,357,45,352,51,355,59,354,64,355,67,366,77,372,78,372,83,379,86,385,90,388,93,401,79,394,72,384,58,377,54,374,50,378,43,376,41,379,38,377,33,374,29" href="#" data-code="11090" alt="강북구" data-area-num="seoul_03">
												<area shape="poly" coords="356,68,349,72,352,77,356,86,356,94,351,101,356,106,363,108,367,108,371,114,373,118,379,116,380,120,394,108,398,103,405,98,414,94,416,86,407,84,401,78,395,85,388,91,387,89,382,89,379,87,372,83,371,79,366,77" href="#" data-code="11080" alt="성북구" data-area-num="seoul_04">
												<area shape="poly" coords="382,120,383,127,388,128,397,125,408,134,418,135,421,126,419,117,416,109,416,104,418,99,416,93,410,95,408,98,403,100,400,104,396,104,394,108,392,109" href="#" data-code="11060" alt="동대문구" data-area-num="seoul_05">
												<area shape="poly" coords="425,81,417,85,415,95,417,97,415,103,416,112,419,118,421,125,427,126,430,126,436,124,439,116,443,115,444,109,446,105,447,101,446,98,447,96,448,84,442,80,437,81,433,81,431,82" href="#" data-code="11070" alt="중랑구" data-area-num="seoul_06">
												<area shape="poly" coords="422,126,418,135,418,137,409,159,417,165,429,165,441,151,447,137,441,139,437,134,437,125,432,127" href="#" data-code="11050" alt="광진구" data-area-num="seoul_07">
												<area shape="poly" coords="383,124,384,131,386,133,383,136,380,140,373,150,373,154,377,156,384,151,409,159,418,135,408,133,396,123,389,126" href="#" data-code="11040" alt="성동구" data-area-num="seoul_08">
												<area shape="poly" coords="341,130,343,134,338,137,338,141,339,143,345,140,348,142,356,141,362,146,366,145,369,145,370,149,384,132,382,130,382,126,374,127,362,128,353,127,351,126,345,127" href="#" data-code="11020" alt="중구" data-area-num="seoul_09">
												<area shape="poly" coords="340,142,340,145,336,149,335,152,333,156,327,158,332,165,332,168,335,170,348,176,355,176,368,169,368,166,376,160,376,158,377,156,373,154,372,151,370,149,369,145,363,145,362,147,356,142,351,141,349,140,347,142,343,140" href="#" data-code="11030" alt="용산구" data-area-num="seoul_10">
												<area shape="poly" coords="282,108,278,114,278,118,267,122,303,151,311,150,318,153,323,153,325,158,328,157,331,157,336,151,335,148,340,145,338,142,339,138,339,136,323,138,321,139,313,135,314,132,312,130,307,129,285,111,285,105" href="#" data-code="11140" alt="마포구" data-area-num="seoul_11">
												<area shape="poly" coords="329,91,323,97,323,101,319,102,315,107,314,111,312,111,310,114,306,115,304,111,296,120,309,130,314,132,313,136,321,140,325,138,337,137,343,134,335,121,336,105,336,102,332,100,332,98,333,95" href="#" data-code="11130" alt="서대문구" data-area-num="seoul_12">
												<area shape="poly" coords="345,70,329,77,330,82,330,91,333,96,332,100,336,103,335,106,335,122,342,130,345,127,355,127,362,128,378,127,382,125,381,118,378,119,376,114,371,116,370,111,366,109,367,107,358,106,349,101,356,94,356,87,353,76" href="#" data-code="11010" alt="종로구" data-area-num="seoul_13">
												<area shape="poly" coords="300,57,302,67,300,71,301,75,299,79,295,88,295,104,294,108,285,109,284,106,281,108,296,121,304,111,306,114,310,114,312,110,314,109,314,106,320,101,324,101,323,97,330,90,330,76,346,71,343,68,342,65,339,61,335,55,330,50,327,47,321,54,316,55,310,58,305,59" href="#" data-code="11120" alt="은평구" data-area-num="seoul_14">
												<area shape="poly" coords="489,118,485,119,473,128,463,128,454,138,448,151,453,155,450,165,467,173,474,162,475,154,481,150,488,149,491,147,494,149,495,143,493,140,493,136,491,131,491,126" href="#" data-code="11250" alt="강동구" data-area-num="seoul_15">
												<area shape="poly" coords="448,152,444,158,438,167,424,174,419,173,414,172,415,187,440,197,453,218,456,217,461,216,458,210,463,212,470,206,478,195,479,189,472,184,468,186,464,181,467,174,458,168,450,163,453,155" href="#" data-code="11240" alt="송파구" data-area-num="seoul_16">
												<area shape="poly" coords="413,172,403,164,389,159,384,159,376,168,389,203,395,203,402,215,401,217,403,218,421,212,425,211,433,224,438,224,442,222,448,226,449,221,454,217,441,197,414,185" href="#" data-code="11230" alt="강남구" data-area-num="seoul_17">
												<area shape="poly" coords="376,168,367,176,358,183,351,185,352,188,354,189,353,193,353,213,357,220,356,227,361,223,362,221,362,218,368,218,370,225,375,229,382,227,387,221,390,226,391,236,391,242,397,246,403,252,411,252,416,248,416,242,418,240,422,241,428,234,431,227,430,220,425,212,419,212,403,217,399,214,397,211,395,203,388,202" href="#" data-code="11220" alt="서초구" data-area-num="seoul_18">
												<area shape="poly" coords="298,202,294,208,300,208,302,211,300,215,303,220,304,226,308,228,312,232,316,237,322,243,323,246,329,243,340,242,341,236,347,235,354,227,357,224,357,220,353,213,351,210,343,209,339,205,337,195,333,196,326,194,321,195,313,195,312,198" href="#" data-code="11210" alt="관악구" data-area-num="seoul_19">
												<area shape="poly" coords="313,176,310,187,309,191,304,194,298,202,309,199,313,198,314,195,320,196,327,194,338,195,338,205,345,211,353,211,354,191,355,189,351,187,351,185,337,178,327,174" href="#" data-code="11200" alt="동작구" data-area-num="seoul_20">
												<area shape="poly" coords="276,201,283,219,283,223,286,223,285,228,291,238,295,243,299,249,305,243,310,241,311,238,315,234,309,227,305,228,303,222,302,216,302,210,300,207,286,207" href="#" data-code="11180" alt="금천구" data-area-num="seoul_21">
												<area shape="poly" coords="240,182,240,187,235,190,232,191,233,195,238,197,240,200,238,202,238,206,234,211,238,212,243,210,248,210,254,212,256,206,262,205,272,195,276,200,280,203,288,209,295,208,297,203,291,198,289,189,285,181,284,177,280,173,277,177,275,182,274,185,267,184,264,182,257,180,254,183,247,185,245,183" href="#" data-code="11170" alt="구로구" data-area-num="seoul_22">
												<area shape="poly" coords="278,142,287,158,287,162,283,164,279,168,278,173,285,178,290,190,291,198,298,202,303,194,309,191,310,186,313,176,306,169,302,159" href="#" data-code="11190" alt="영등포구" data-area-num="seoul_23">
												<area shape="poly" coords="242,147,240,154,241,161,244,164,243,168,241,176,241,181,245,183,248,187,254,184,257,180,264,181,268,184,275,186,277,180,279,175,278,166,286,161,280,145,270,143,267,149,267,161,253,165,247,152,245,147" href="#" data-code="11150" alt="양천구" data-area-num="seoul_24">
												<area shape="poly" coords="225,98,231,106,279,140,280,146,275,147,269,145,268,151,269,162,252,166,247,153,244,152,243,145,239,152,232,153,226,150,222,156,215,151,206,147,200,142,199,139,207,135,208,129,213,122,218,119,221,113,224,109,222,101" href="#" data-code="11160" alt="강서구" data-area-num="seoul_25">
											</map>
										</div>
										
									</div>
								   </div>
                                  <!-- 여기까지  -->
                                </div>
                            </div>
                            <!-- /# card -->
                        </div>
                        <!-- /# column -->

                        <div class="col-lg-6">
                            <div class="card nestable-cart">
                                <div class="card-title">
                                    <h4>BUSAN</h4>
                                    <div class="card-title-right-icon">
                                        <ul> 
                                        </ul>
                                    </div>
                                </div>
                                
                                
                                <!-- 여기서부터  -->
                                   <div class="card-body">
                                   
									<div class="Vector-map-js">
									
										<div class="allMap">
											<span class="allMap-view"><img src="/population/resources/assets/images/map/bs.png" alt="bs" usemap="#all-map"></span>
											<map name="all-map" id="all-map" class="allMap-point">
												<area shape="poly" coords="113,187,114,192,118,192,120,190,123,189,139,183,142,176,138,173,129,179,127,183,119,182" href="#" alt="부산" data-code="21" data-area-name="bs" data-detail="bs_bg">
												
											</map>
										</div>
										<div class="mapDetail bs_bg" style="display: block;" data-parent-code="21" data-image="bs_00.png" data-usemap="#bs_map"> <!-- djlee 수정 2019-07-15 -->
											<span class="mapDetail-view"><img src="/population/resources/assets/images/map/bs_08.png" usemap="#bs_map" alt="bs_08"></span> <!-- djlee 수정 2019-07-15 -->
											<map name="bs_map" id="bs_map" class="mapDetail-point">
												<area shape="poly" coords="421,35,428,29,427,18,430,15,439,21,458,18,468,29,467,43,480,46,479,55,478,56,473,57,470,53,462,56,458,64,461,78,458,80,457,84,454,86,457,98,451,113,447,114,443,119,446,123,446,128,444,131,435,138,435,129,431,127,426,133,422,129,413,124,411,105,409,100,407,99,401,95,401,91,395,90,394,78,399,73,397,69,387,66,391,56,395,50,399,36,405,30,417,36" href="#" alt="기장군" data-area-num="bs_01" data-code="21310">
												<area shape="poly" coords="405,98,399,106,397,110,393,112,393,119,389,123,392,126,392,134,402,151,409,151,417,149,423,151,425,149,430,148,431,140,436,136,434,128,431,127,427,131,422,127,413,121,417,110,411,106,409,100" href="#" alt="해운대구" data-code="21090" data-area-num="bs_02">
												<area shape="poly" coords="364,73,370,73,388,65,398,72,395,79,393,90,402,91,403,97,405,99,400,107,397,111,393,114,391,121,385,124,377,119,378,115,375,112,366,113,358,108,362,103,357,89" href="#" alt="금정구" data-code="21110" data-area-num="bs_03">
												<area shape="poly" coords="343,84,350,83,358,84,357,90,359,99,361,103,358,109,367,114,359,127,352,131,347,134,334,131,332,127,336,120,335,105" href="#" alt="북구" data-code="21080" data-area-num="bs_04">
												<area shape="poly" coords="367,114,359,128,363,132,369,132,376,127,383,131,391,132,392,128,387,123,379,118,377,115,375,112" href="#" alt="동래구" data-code="21060" data-area-num="bs_05">
												<area shape="poly" coords="361,131,363,135,366,135,371,141,376,142,383,137,391,135,385,131,380,130,374,126,368,130" href="#" alt="연제구" data-code="21130" data-area-num="bs_06">
												<area shape="poly" coords="389,137,383,144,386,154,387,158,390,163,394,159,393,154,400,151,400,145,393,136" href="#" alt="수영구" data-code="21140" data-area-num="bs_08">
												<area shape="poly" coords="357,125,352,128,347,133,348,135,343,142,344,148,343,151,346,154,344,163,353,165,359,157,367,160,369,155,374,154,377,150,383,148,384,142,380,138,374,141,369,141,365,134,361,135" href="#" alt="부산진구" data-code="21050" data-area-num="bs_09">
												<area shape="poly" coords="331,126,322,135,319,163,319,172,329,174,333,170,336,171,340,168,340,164,344,162,346,154,342,150,343,146,343,143,348,137,347,133,341,132,334,130" href="#" alt="사상구" data-code="21150" data-area-num="bs_10">
												<area shape="poly" coords="269,195,269,219,262,236,265,241,264,245,260,248,255,244,256,237,258,235,252,231,252,228,251,221,249,217,240,213,240,209,248,207,249,202,251,195,258,191,255,188,256,185,262,183,265,180,260,168,257,169,246,161,242,153,253,150,257,153,267,148,278,148,284,150,284,137,278,126,287,118,309,110,319,113,336,106,336,119,331,127,321,135,318,164,306,178,305,190,299,192,297,197,278,195" href="#" alt="강서구" data-code="21120" data-area-num="bs_11">
												<area shape="poly" coords="318,165,307,179,305,198,310,204,307,209,329,217,331,214,329,210,332,206,335,213,337,217,340,214,336,203,336,193,344,197,344,185,343,179,338,172,338,170,330,170,329,173,319,169" href="#" alt="사하구" data-code="21100" data-area-num="bs_12">
												<area shape="poly" coords="341,163,349,163,348,181,351,188,350,205,344,212,340,197,343,195,345,186,343,179,338,173,338,171" href="#" alt="서구" data-code="21020" data-area-num="bs_13">
												<area shape="poly" coords="351,187,361,183,375,191,377,200,383,207,382,211,377,213,374,206,369,207,368,201,360,200,351,193" href="#" alt="영도구" data-code="21040" data-area-num="bs_14">
												<area shape="poly" coords="349,175,360,181,352,187,349,184" href="#" alt="중구" data-code="21010" data-area-num="bs_15">
												<area shape="poly" coords="352,163,354,162,358,158,366,160,369,167,359,179,351,173,349,164" href="#" alt="동구" data-code="21030" data-area-num="bs_16">
												<area shape="poly" coords="369,156,376,155,377,151,385,150,386,155,385,159,394,165,399,174,399,184,394,184,392,183,390,186,388,189,385,190,381,183,375,182,371,180,371,173,369,170,369,164,368,158" href="#" alt="남구" data-code="21070" data-area-num="bs_17">
											</map>
										</div>
										
									</div>
								   </div>
                                  <!-- 여기까지  -->
                            </div>
                            <!-- /# card -->
                        </div>
                        <!-- /# column -->
                    </div>
                    <!-- /# row -->

                    <div class="row">
                        <div class="col-lg-6">
                            <div class="card nestable-cart">
                                <div class="card-title">
                                    <h4>KYEONGKI</h4>
                                    <div class="card-title-right-icon">
                                        <ul>        
                                        </ul>
                                    </div>
                                </div>
                                
                                <div class="Vector-map-js">
                                  <!-- 여기서부터  -->
                                   <div class="card-body">
                                   
									<div class="Vector-map-js">
									
										<div class="allMap">
											<span class="allMap-view"><img src="/population/resources/assets/images/map/kk.png" alt="kk" usemap="#all-map"></span>
											<map name="all-map" id="all-map" class="allMap-point">
												<area shape="poly" coords="43,70,46,76,50,76,53,78,61,72,63,74,63,77,67,77,62,83,53,81,49,84,47,92,45,97,49,98,52,104,57,107,66,104,72,105,88,95,88,77,81,74,81,63,75,55,69,52,62,48,53,50,53,55,54,56,52,58,50,63,50,66" href="#" alt="경기도" data-code="31" data-area-name="kk" data-detail="kk_bg">
											</map>
										</div>
										<div class="mapDetail kk_bg" style="display: block;">
											<span class="mapDetail-view"><img src="/population/resources/assets/images/map/kk_24.png" data-code="31" alt="kk_24" usemap="#kk-map"></span><!-- djlee 수정 2019-07-15 -->
											<map name="kk-map" id="kk-map" class="mapDetail-point"><!-- djlee 수정 2019-07-15 -->
												<area shape="poly" coords="260,93,261,99,262,101,262,108,263,115,266,127,274,127,280,121,291,130,301,130,293,121,282,113,284,109,283,103,280,95,277,94,272,98" href="#" data-code="31230" alt="김포시" data-area-num="kk_01">
												<area shape="poly" coords="282,64,286,60,291,61,302,57,309,59,315,63,315,57,321,59,327,54,332,59,324,72,323,84,317,87,318,95,321,98,319,104,314,106,307,104,300,105,298,110,283,111,281,95,282,84,286,77,282,76" href="#" data-code="31200" alt="파주시" data-area-num="kk_02">
												<area shape="poly" coords="301,55,310,47,311,40,309,35,318,30,326,29,324,26,328,13,332,13,342,5,346,4,348,12,355,14,357,27,355,33,358,42,352,44,349,42,347,45,348,49,351,56,347,60,344,57,342,59,337,60,332,68,326,65,332,56,326,51,322,57,315,57,314,61,308,59,305,62" href="#" data-code="31350" alt="연천군" data-area-num="kk_03">
												<area shape="poly" href="javascript:void(0)" coords="352,43,347,45,348,50,351,58,348,60,342,57,345,68,351,72,351,79,346,81,348,90,346,97,354,102,360,99,363,101,369,96,371,81,377,79,376,70,382,69,386,66,385,58,390,56,394,48,394,38,392,35,390,37,386,35,378,39,376,36,370,32,372,23,368,23,362,30,356,27,354,32,357,35,357,43" data-code="31270" alt="포천시" data-area-num="kk_04">
												<area shape="poly" href="javascript:void(0)" coords="372,80,377,79,377,69,382,69,387,65,383,60,390,57,391,50,394,47,399,54,409,56,411,62,420,65,419,79,413,79,407,87,407,93,408,101,405,105,412,107,410,119,412,127,411,131,405,133,397,133,396,125,392,118,382,119,384,114,379,106,377,101,368,95" data-code="31370" alt="가평군" data-area-num="kk_05">
												<area shape="poly" href="javascript:void(0)" coords="338,60,330,69,336,74,339,78,344,79,351,79,352,74,343,65,343,61" data-code="31080" alt="동두천시" data-area-num="kk_06">
												<area shape="poly" href="javascript:void(0)" coords="325,67,333,72,340,78,346,82,349,91,345,97,333,99,331,112,324,113,316,114,320,95,317,95,316,86,318,83,321,83,322,77,323,71" data-code="31260" alt="양주시" data-area-num="kk_07">
												<area shape="poly" href="javascript:void(0)" coords="332,99,330,110,340,112,346,107,350,100,345,95,337,99" data-code="31030" alt="의정부시" data-area-num="kk_08">
												<area shape="poly" href="javascript:void(0)" coords="343,112,346,120,356,132,359,131,372,146,384,119,384,115,380,105,373,97,367,95,362,98,357,96,354,100,349,100" data-code="31130" alt="남양주시" data-area-num="kk_09">
												<area shape="poly" href="javascript:void(0)" coords="346,124,346,135,354,133,350,125" data-code="31120" alt="구리시" data-area-num="kk_10">
												<area shape="poly" coords="283,110,285,115,310,133,318,120,324,118,327,121,329,113,323,112,319,114,316,113,320,101,315,102,313,104,308,102,302,105,300,102,296,109" href="javascript:void(0)" data-code="31101,31103,31104" alt="고양시" data-area-num="kk_11" data-inside-name="in-goyang">
												<area shape="poly" coords="356,131,356,138,348,144,353,151,360,149,366,151,367,146,372,144,359,129" href="javascript:void(0)" data-code="31180" alt="하남시" data-area-num="kk_14">
												<area shape="poly" coords="375,138,385,147,383,155,389,161,393,159,399,161,405,158,408,163,418,160,430,164,435,170,442,171,447,152,440,145,449,138,452,138,446,133,440,131,433,130,419,119,412,123,410,130,405,130,402,133,398,132,398,123,392,116,387,118,381,121" href="#" data-code="31380" alt="양평군" data-area-num="kk_15">
												<area shape="poly" coords="387,160,393,157,399,159,403,158,408,163,415,160,423,163,431,164,434,170,442,171,441,189,428,212,421,208,413,202,411,206,405,203,405,196,406,186,409,180,397,172,394,172,394,168,389,168" href="javascript:void(0)" data-code="31280" alt="여주시" data-area-num="kk_16">
												<area shape="poly" coords="395,171,398,171,410,182,407,188,407,198,405,204,413,206,415,203,422,211,421,222,413,226,410,231,402,225,404,220,401,215,393,211,386,207,383,203,381,200,378,195,380,187,380,185,383,179,387,179" href="javascript:void(0)" data-code="31210" alt="이천시" data-area-num="kk_17">
												<area shape="poly" coords="356,151,360,163,351,172,350,176,357,175,359,177,362,173,365,173,371,176,372,189,379,188,385,180,393,171,394,168,384,154,386,148,382,142,376,139,373,145,368,145,366,149" href="javascript:void(0)" data-code="31250" alt="광주시" data-area-num="kk_18">
												<area shape="poly" coords="313,224,329,224,329,216,336,213,343,214,347,211,347,223,344,225,349,227,346,232,350,233,349,240,339,250,333,251,327,249,315,254,304,241,296,237,307,234" href="javascript:void(0)" data-code="31070" alt="평택시" data-area-num="kk_19">
												<area shape="poly" coords="342,213,329,206,332,200,337,201,346,211,353,205,350,199,343,198,339,193,332,195,325,194,315,185,305,187,299,187,297,193,280,186,279,202,284,210,282,217,294,207,300,205,302,213,296,216,293,231,302,237,308,231,313,224,329,223,329,215,335,212" href="javascript:void(0)" data-code="31240" alt="화성시" data-area-num="kk_20">
												<area shape="poly" coords="331,201,338,203,344,210,336,210,330,205" href="javascript:void(0)" data-code="31140" alt="오산시" data-area-num="kk_21">
												<area shape="poly" coords="300,186,287,181,294,173,299,176,305,170,312,170,311,177,321,183,317,186,313,184,306,188" href="javascript:void(0)" data-code="31091,31092" alt="안산" data-area-num="kk_22" data-inside-name="in-ansan">
												<area shape="poly" coords="296,152,297,158,294,161,295,164,289,167,285,173,283,179,289,181,297,175,299,175,305,171,311,170,307,155,309,151,303,152" href="javascript:void(0)" data-code="31150" alt="시흥" data-area-num="kk_23">
												<area shape="poly" coords="295,137,292,146,299,151,305,153,304,144,304,140" href="javascript:void(0)" data-code="31050" alt="부천" data-area-num="kk_24">
												<area shape="poly" coords="327,152,324,157,328,163,334,160,338,157" href="javascript:void(0)" data-code="31110" alt="과천" data-area-num="kk_25">
												<area shape="poly" coords="318,169,314,172,313,180,320,182,323,174" href="javascript:void(0)" data-code="31160" alt="군포" data-area-num="kk_26">
												<area shape="poly" coords="328,164,332,174,338,169,336,163,335,160" href="javascript:void(0)" data-code="31170" alt="의왕" data-area-num="kk_27">
												<area shape="poly" coords="331,174,324,182,320,184,318,188,330,195,335,194,340,187,336,180,333,174" href="javascript:void(0)" data-code="31011,31012,31013,31014" alt="수원" data-inside-name="in-suwon">
												<area shape="poly" coords="308,157,313,170,320,167,325,170,327,165,326,162,323,158" href="#" data-code="31041,31042" alt="안양" data-inside-name="in-anyang">
												<area shape="poly" coords="339,154,335,162,337,168,344,175,351,176,351,171,358,163,356,152,351,151,344,154" href="#" data-code="31021,31022,31023" alt="성남시" data-inside-name="in-sungnam">
												<area shape="poly" coords="309,148,308,154,319,158,317,148" href="#" data-code="31060" alt="광명" data-area-num="kk_39">
												<area shape="poly" coords="348,221,358,221,366,214,367,208,374,217,377,216,381,219,389,219,390,215,390,210,398,214,402,216,403,226,397,229,395,234,388,238,386,245,383,248,378,247,373,253,370,257,361,249,348,241,350,237,351,230,345,231,347,226,344,223" href="#" data-code="31220" alt="안성" data-area-num="kk_40">
												<area shape="poly" coords="340,185,341,193,349,199,354,202,346,210,348,219,359,221,367,214,367,209,375,218,379,217,388,219,391,216,390,209,378,198,377,188,371,188,370,175,366,172,362,173,359,177,357,176,346,177,341,175,338,174,335,177" href="#" data-code="31191,31192,31193" alt="용인" data-inside-name="in-yongin">
											</map>
										</div>
										
									</div>
								   </div>
                                  <!-- 여기까지  -->
                                </div>
                            </div>
                            <!-- /# card -->
                        </div>
                        <!-- /# column -->

                        <div class="col-lg-6">
                            <div class="card nestable-cart">
                                <div class="card-title">
                                    <h4>INCHON</h4>
                                    <div class="card-title-right-icon">
                                        <ul> 
                                        </ul>
                                    </div>
                                </div>
                                
                                
                                <!-- 여기서부터  -->
                                   <div class="card-body">
                                   
									<div class="Vector-map-js">
									
										<div class="allMap">
											<span class="allMap-view"><img src="/population/resources/assets/images/map/inchon.png" alt="inchon" usemap="#all-map"></span>
											<map name="all-map" id="all-map" class="allMap-point">
												<area shape="poly" coords="41,84,45,81,50,85,54,81,53,77,49,75,45,76,43,71,44,69,41,64,38,64,35,64,32,66,32,68,30,70,30,73,33,73,35,75,38,81,36,87,28,88,25,91,26,95,30,96,35,98,40,93,44,93,44,87,40,87,38,87,37,87" href="#" alt="인천 " data-code="23" data-area-name="inchon" data-detail="ic_bg">
											</map>
										</div>
											<div class="mapDetail ic_bg" style="display: block;" data-parent-code="23" data-image="inchon_00.png" data-usemap="#ic-map"><!-- djlee 수정 2019-07-15 -->
												<span class="mapDetail-view"><img src="/population/resources/assets/images/map/inchon_01.png" usemap="#ic-map" alt="inchon_01"></span><!-- djlee 수정 2019-07-15 -->
													<map name="ic-map" id="ic-map" class="mapDetail-point">
														<area shape="poly" coords="312,61,341,76,347,81,347,72,339,65,331,62,324,62,316,58" href="#" data-code="23310" alt="강화군" data-area-num="inchon_01">
														<area shape="poly" coords="338,51,348,53,354,58,363,66,364,72,368,75,373,72,380,64,384,68,374,78,373,85,398,92,404,90,414,95,415,87,420,84,413,64,413,45,414,38,408,27,390,15,379,18,377,22,364,24,350,20,340,21,337,30,333,34,341,39" href="#" data-code="23310" alt="강화군" data-area-num="inchon_01">
														<area shape="poly" coords="200,96,191,94,196,109,205,114,213,135,206,144,210,151,215,151,222,160,219,167,231,163,224,158,218,145,221,137,211,115,218,108,225,103,265,111,266,114,272,128,275,126,271,110,272,102,264,103,263,107,222,96,216,92" href="#" data-code="23320" alt="옹진군" data-area-num="inchon_02">
														<area shape="poly" coords="359,102,363,108,364,113,378,113,393,116,400,118,401,111,397,107,389,104,382,107,376,107,369,105" href="#" data-code="23320" alt="옹진군" data-area-num="inchon_02">
														<area shape="poly" coords="299,189,305,194,302,200,299,207,307,212,303,220,302,225,294,246,297,254,304,246,306,228,309,224,307,219,309,211,317,212,323,214,330,219,342,224,350,228,361,229,362,226,356,222,342,219,328,211,318,199,302,185" href="#" data-code="23320" alt="옹진군" data-area-num="inchon_02">
														<area shape="poly" coords="352,196,366,202,395,208,402,205,417,207,415,200,411,195,406,193,401,188,392,190,388,201,368,196,353,193" href="#" data-code="23320" alt="옹진군" data-area-num="inchon_02">
														<area shape="poly" coords="371,131,378,142,383,140,388,147,383,150,381,157,386,164,394,159,390,155,391,146,402,140,411,132,422,129,428,134,433,143,440,144,440,135,442,130,435,124,429,129,427,127,428,121,426,117,427,110,426,107,419,112,413,113,410,109,405,117,399,120,384,121" href="#" data-code="23010" alt="중구" data-area-num="inchon_03">
														<area shape="poly" coords="442,132,445,130,447,126,452,129,456,134,457,139,459,141,450,144,439,142" href="#" data-code="23090" alt="미추홀구" data-area-num="inchon_04">
														<area shape="poly" coords="439,127,441,125,444,123,447,126,444,131" href="#" data-code="23020" alt="동구" data-area-num="inchon_05">
														<area shape="poly" coords="429,90,435,88,440,89,445,78,463,93,460,97,452,95,456,100,460,107,453,115,455,126,452,130,441,122,432,123,432,110,432,106,434,103,430,101,426,94" href="#" data-code="23080" alt="서구" data-area-num="inchon_06">
														<area shape="poly" coords="462,92,472,94,482,93,476,101,474,112,454,112,453,109,459,106,459,103,456,97,451,94" href="#" data-code="23070" alt="계양구" data-area-num="inchon_07">
														<area shape="poly" coords="455,114,473,114,475,129,470,132,462,131,455,131,453,127,456,124,452,117" href="#" data-code="23060" alt="부평구" data-area-num="inchon_08">
														<area shape="poly" coords="455,133,456,138,458,143,451,152,449,154,455,159,463,158,473,145,476,127,468,130,461,129" href="#" data-code="23050" alt="남동구" data-area-num="inchon_09">
														<area shape="poly" coords="433,145,436,154,438,161,449,168,455,160,449,155,458,146,457,142,443,141" href="#" data-code="23040" alt="연수구" data-area-num="inchon_10">
													</map>
											</div>
										
									</div>
								   </div>
                                  <!-- 여기까지  -->
                            </div>
                            <!-- /# card -->
                        </div>
                        <!-- /# column -->
                    </div>
                    <!-- /# row -->

                    <div class="row">
                        <div class="col-lg-6">
                            <div class="card nestable-cart">
                                <div class="card-title">
                                    <h4>KANGWON</h4>
                                    <div class="card-title-right-icon">
                                        <ul>
                                           
                                        </ul>
                                    </div>
                                </div>
                                    <!-- 여기서부터  -->
                                   <div class="card-body">
                                   
									<div class="Vector-map-js">
									
									<div class="allMap">
										<span class="allMap-view"><img src="/population/resources/assets/images/map/kw.png" alt="kw" usemap="#all-map"></span>
											<map name="all-map" id="all-map" class="allMap-point">
												<area shape="poly" coords="65,48,67,54,76,56,79,63,78,68,81,77,87,77,89,96,98,94,137,98,143,92,143,88,118,53,110,37,106,36,104,40,98,40,98,46,71,46,68,44" href="#" alt="강원도" data-area-name="kw" data-detail="kw_bg" data-code="32">
											</map>
									</div>
									<div class="mapDetail kw_bg" style="display: block;" data-parent-code="32" data-image="kw_00.png" data-usemap="#kw-map"><!-- djlee 수정 2019-07-15 -->
										<span class="mapDetail-view"><img src="/population/resources/assets/images/map/kw_01.png" usemap="#kw-map" alt="kw_01"></span><!-- djlee 수정 2019-07-15 -->
											<map name="kw-map" id="kw-map" class="mapDetail-point">
												<area shape="poly" coords="359,12,366,10,373,18,374,28,379,35,377,38,383,45,391,57,394,68,384,72,374,72,375,65,367,66,361,63,360,54,357,51,355,48,351,47,349,42,357,36,359,24" href="#" data-code="32400" alt="고성군" data-area-num="kw_01">
												<area shape="poly" coords="377,74,385,75,393,69,398,79,389,83,382,83,378,86,373,77,378,73" href="#" data-code="32060" alt="속초시" data-area-num="kw_02">
												<area shape="poly" coords="372,90,380,85,383,82,388,83,396,78,422,115,414,117,393,124,389,122,380,119,379,115,378,111,384,103,382,96,375,97" href="#" data-code="32410" alt="양양군" data-area-num="kw_03">
												<area shape="poly" coords="341,54,344,56,342,66,338,68,336,78,333,86,336,87,334,91,338,99,329,102,321,108,326,117,335,120,343,120,345,127,349,132,357,126,360,125,364,130,371,126,383,121,381,109,385,103,381,97,373,96,373,89,379,84,374,76,377,72,375,66,367,66,362,62,360,54,351,46" href="#" data-code="32390" alt="인제군" data-area-num="kw_04">
												<area shape="poly" coords="311,57,307,64,308,75,309,86,313,94,313,99,318,103,321,99,325,102,336,98,337,93,335,81,338,70,342,64,343,54,338,53,330,57,325,56,323,61" href="#" data-code="32380" alt="양구군" data-area-num="kw_05">
												<area shape="poly" coords="217,67,216,61,219,57,224,58,233,54,241,57,251,53,259,55,264,59,274,53,292,52,302,58,309,57,308,60,292,61,289,67,283,64,274,63,267,72,263,78,264,85,256,86,252,88,246,87,240,90,237,83,237,75,229,82,223,70,223,68" href="#" data-code="32360" alt="철원군" data-area-num="kw_06">
												<area shape="poly" coords="256,87,262,86,264,82,263,77,267,72,273,65,282,64,288,67,293,62,306,61,306,72,309,76,308,85,313,95,307,97,303,103,298,104,294,98,283,100,275,91,270,92,271,101,269,105,261,104,256,98" href="#" data-code="32370" alt="화천군" data-area-num="kw_07">
												<area shape="poly" coords="268,103,272,92,275,91,280,96,286,99,295,99,299,104,303,102,307,96,313,95,316,99,319,99,327,102,323,106,323,113,320,120,318,127,315,129,310,124,302,127,305,136,306,139,303,144,278,149,272,146,264,144,269,139,266,134,267,127,277,121,277,112,269,109" href="#" data-code="32010" alt="춘천시" data-area-num="kw_08">
												<area shape="poly" coords="270,146,274,146,278,150,288,146,303,142,307,138,303,133,301,127,312,126,318,128,322,118,323,113,333,118,345,120,344,126,348,132,357,126,359,124,364,130,372,126,383,119,392,123,394,129,388,136,388,143,379,146,375,151,366,148,360,152,357,162,349,158,340,151,330,159,327,163,320,159,317,163,309,169,304,173,292,167,281,160,270,159,267,157" href="#" data-code="32310" alt="홍천군" data-area-num="kw_09">
												<area shape="poly" coords="297,179,303,175,307,173,310,168,311,164,318,164,320,160,327,164,339,152,345,155,352,158,355,162,357,160,358,170,361,175,355,184,357,195,347,197,347,205,338,209,337,211,328,207,334,200,335,194,331,188,323,186,318,185,317,179,312,183,308,189,308,195,303,190,300,189,298,182,295,180" href="#" data-code="32320" alt="횡성군" data-area-num="kw_10">
												<area shape="poly" coords="355,183,360,176,358,154,363,149,376,151,380,144,388,144,388,135,395,130,398,138,409,139,416,152,413,156,413,161,406,166,406,171,401,173,394,174,393,180,387,186,384,192,396,213,394,216,380,209,379,204,374,205,374,211,367,212,359,194,355,194" href="#" data-code="32340" alt="평창군" data-area-num="kw_11">
												<area shape="poly" coords="394,125,422,116,424,121,430,129,452,153,450,158,453,163,451,171,434,173,431,166,428,167,426,178,421,179,418,174,413,173,410,176,405,168,412,158,417,151,413,141,404,138,395,137,393,131" href="#" data-code="32030" alt="강릉시" data-area-num="kw_12">
												<area shape="poly" coords="441,175,441,180,443,183,447,189,455,186,464,181,459,168,453,162" href="#" data-code="32040" alt="동해시" data-area-num="kw_13">
												<area shape="poly" coords="406,169,402,173,395,174,391,181,391,187,385,185,387,192,385,194,389,197,396,212,393,217,394,224,403,228,416,224,427,230,432,230,436,233,436,219,426,207,431,192,437,186,442,187,443,180,440,176,441,175,431,165,427,172,424,177,419,172,412,172,409,174" href="#" data-code="32350" alt="정선군" data-area-num="kw_14">
												<area shape="poly" coords="437,188,430,195,428,211,435,221,439,208,446,203,446,207,448,212,445,218,448,229,457,232,458,240,470,248,475,248,475,243,489,232,487,217,477,199,464,181,460,185,448,186,447,189" href="#" data-code="32070" alt="삼척시" data-area-num="kw_15">
												<area shape="poly" coords="446,202,439,209,437,220,433,229,432,236,432,247,439,244,450,243,455,243,458,236,456,231,449,225,444,217" href="#" data-code="32050" alt="태백시" data-area-num="kw_16">
												<area shape="poly" coords="337,211,339,206,344,206,346,202,346,197,356,194,364,208,370,212,375,210,375,204,381,207,387,212,395,214,403,228,417,223,426,230,431,230,431,235,433,249,426,245,421,241,417,246,414,251,398,245,385,237,377,240,369,231,359,235,357,231,364,223,355,225,349,218,350,212,342,215" href="#" data-code="32330" alt="영월군" data-area-num="kw_17">
												<area shape="poly" coords="299,190,296,202,294,211,296,215,294,226,298,234,315,230,315,221,320,218,326,219,327,225,332,227,339,222,343,223,347,219,351,214,343,214,335,213,334,209,328,203,331,200,335,193,326,186,315,184,315,182,305,187,307,188,307,195" href="#" data-code="32020" alt="원주시" data-area-num="kw_18">
											</map>
									</div>
										
									</div>
								   </div>
                                  <!-- 여기까지  -->
                            </div>
                            <!-- /# card -->
                        </div>
                        <!-- /# column -->

                        <div class="col-lg-6">
                            <div class="card nestable-cart">
                                <div class="card-title">
                                    <h4>CHUNGNAM</h4>
                                    <div class="card-title-right-icon">
                                        <ul>
                                           
                                        </ul>
                                    </div>
                                </div>
                                <div class="Vector-map-js">
                                    <!-- 여기서부터  -->
                                   <div class="card-body">
                                   
									<div class="Vector-map-js">
									
									<div class="allMap">
										<span class="allMap-view"><img src="/population/resources/assets/images/map/chungnam.png" alt="chungnam" usemap="#all-map"></span>
										<map name="all-map" id="all-map" class="allMap-point">
											<area shape="poly" coords="29,109,40,98,45,99,47,104,53,102,55,107,66,103,71,105,75,110,74,112,70,114,71,118,75,121,73,123,70,129,70,135,78,137,78,135,80,135,84,143,80,146,74,145,73,139,67,139,64,142,62,143,61,137,57,138,51,145,45,145,43,130,38,130,35,123,36,118,33,116,32,117,29,114" href="#" alt="충청남도" data-code="34" data-area-name="chungnam" data-detail="chn_bg">
										</map>
									</div>
									
									<div class="mapDetail chn_bg" style="display: block;" data-parent-code="34" data-image="chungnam_00.png" data-usemap="#chn-map"> <!-- djlee 수정 2019-07-15 -->
										<span class="mapDetail-view"><img src="/population/resources/assets/images/map/chungnam_07.png" usemap="#chn-map" alt="chungnam_07"></span> <!-- djlee 수정 2019-07-15 -->
										<map name="chn-map" id="chn-map" class="mapDetail-point">
											<area shape="poly" coords="383,100,386,94,390,89,396,86,395,82,400,77,403,76,402,72,406,67,409,67,409,63,419,55,421,57,427,49,432,49,433,47,437,50,437,54,442,56,446,61,451,66,453,70,457,76,454,80,450,78,446,76,442,79,443,83,432,92,428,92,415,83,409,85,407,92,411,95,410,98,411,108,405,105,401,101,397,104,383,102" href="#" data-code="34011,34012" alt="천안시" data-area-num="chungnam_001" data-inside-name="in-chunan">
									<!-- 		<area shape="poly" coords="396,38,404,29,407,30,413,32,419,35,421,40,428,42,432,45,433,48,428,50,422,56,420,59,417,57,407,64,407,68,402,73,398,66,399,59,401,55,396,54,397,49,398,47,397,44,399,43" href="#" data-code="34012" alt="서북구" data-area-num="chungnam_02" /> -->
											<area shape="poly" coords="354,50,357,51,360,49,365,49,366,45,379,39,386,39,388,41,394,38,398,43,397,46,397,51,396,54,400,56,399,60,400,63,399,66,402,73,402,77,398,79,395,86,395,88,390,90,386,95,382,102,377,102,375,97,375,94,371,90,365,91,361,85,356,84,350,78,351,70,355,71,351,61" href="#" data-code="34040" alt="아산시" data-area-num="chungnam_03">
											<area shape="poly" coords="326,67,327,70,319,72,317,76,314,78,315,81,314,83,309,83,309,86,310,89,308,92,308,95,307,98,307,101,306,104,306,108,311,109,313,110,313,106,312,103,314,101,317,101,321,99,324,99,328,98,331,96,333,99,333,101,339,109,339,111,335,116,335,122,333,124,339,130,341,126,349,128,353,119,362,122,368,114,367,111,369,108,372,104,373,97,375,96,375,93,371,89,366,89,361,85,356,84,355,80,350,77,350,73,342,75,335,75,333,70,327,67" href="#" data-code="34370" alt="예산군" data-area-num="chungnam_04">
											<area shape="poly" coords="285,19,286,22,285,24,289,38,286,50,293,53,295,63,308,61,309,65,315,68,319,74,326,71,326,68,330,68,337,76,350,75,352,71,356,71,352,61,353,50,348,46,347,41,342,31,342,30,331,25,327,23,315,23,303,15,298,15,296,11,290,10" href="#" data-code="34080" alt="당진시" data-area-num="chungnam_05">
											<area shape="poly" coords="263,26,267,28,271,29,270,32,262,31,267,36,271,38,273,40,275,39,278,40,275,43,277,45,279,47,273,47,273,50,267,50,268,54,266,58,262,55,259,57,261,62,262,65,265,71,262,89,266,107,274,109,280,112,282,109,282,107,293,106,297,101,301,103,308,96,311,90,309,85,311,83,314,83,315,80,317,76,319,73,314,66,309,64,308,62,308,62,302,62,294,61,293,52,285,49,289,37,287,26,282,22,277,20,263,23" href="#" data-code="34050" alt="서산시" data-area-num="chungnam_06">
											<area shape="poly" coords="257,41,257,36,259,32,258,28,254,29,253,35,254,43,252,47,246,43,239,45,234,50,237,56,230,58,229,67,227,72,223,73,225,80,223,89,230,83,228,78,234,78,238,82,241,87,237,89,232,86,228,91,231,96,238,94,243,92,245,87,249,85,250,90,248,94,250,98,254,102,254,110,253,116,258,116,260,124,260,145,267,154,271,153,276,157,279,149,275,142,272,129,268,112,265,109,263,77,265,70,261,63,256,64,254,67,252,62,257,61,258,59,253,58,256,54,260,48,262,48" href="#" data-code="34380" alt="태안군" data-area-num="chungnam_07">
											<area shape="poly" coords="280,110,282,109,282,106,293,105,297,101,301,102,307,98,309,100,307,103,306,108,313,110,312,105,314,102,319,101,323,99,330,98,333,97,334,102,339,109,336,116,335,122,334,125,339,129,334,137,332,140,328,139,321,143,314,141,310,138,300,132,292,128,287,128,285,117" href="#" data-code="34360" alt="홍성군" data-area-num="chungnam_08">
											<area shape="poly" coords="291,128,294,129,299,134,303,133,311,137,314,142,321,142,325,154,328,156,330,161,331,163,328,165,326,171,324,173,324,181,328,187,333,190,330,197,321,205,319,207,317,205,312,207,304,206,301,202,294,204,297,198,295,192,297,189,297,187,299,186,295,179,293,178,291,172,297,169,298,169,298,165,292,160,287,159,289,153,293,149,288,141,286,135" href="#" data-code="34030" alt="보령시" data-area-num="chungnam_09">
											<area shape="poly" coords="333,138,339,131,339,128,349,127,353,119,363,122,361,126,361,139,365,143,367,146,369,145,373,142,381,145,382,149,384,150,383,153,386,157,379,164,378,171,375,171,367,176,363,174,356,174,354,172,355,168,352,166,350,163,349,162,345,162,343,166,335,168,329,162,327,155,323,153,324,149,321,144,329,139" href="#" data-code="34350" alt="청양군" data-area-num="chungnam_10">
											<area shape="poly" coords="373,97,369,109,368,114,362,122,362,125,361,127,361,130,362,140,365,144,369,145,373,143,381,145,381,148,384,150,384,153,386,156,385,159,379,164,378,178,385,183,392,184,395,176,400,171,407,177,414,172,416,173,420,168,424,168,427,173,430,170,431,156,431,154,427,153,426,155,424,153,417,147,416,143,414,137,411,131,413,130,412,126,414,125,416,119,418,118,409,111,400,99,397,102,387,100,379,100" href="#" data-code="34020" alt="공주시" data-area-num="chungnam_11">
											<area shape="poly" coords="416,173,417,180,416,183,417,190,423,190,424,195,430,193,431,189,429,179,426,174,424,171,423,168,418,168" href="#" data-code="34070" alt="계룡시" data-area-num="chungnam_12">
											<area shape="poly" coords="440,202,443,201,445,197,446,186,450,187,451,191,453,195,461,202,463,200,469,194,473,192,477,190,480,193,480,196,485,194,488,200,487,207,488,213,486,217,492,222,492,225,496,231,493,232,490,243,486,241,480,239,477,238,477,247,468,252,463,251,458,239,452,244,448,242,446,229,441,216,438,216,437,209" href="#" data-code="34310" alt="금산군" data-area-num="chungnam_13">
											<area shape="poly" coords="399,171,392,184,392,188,387,192,383,200,377,200,377,205,379,208,379,213,387,216,392,219,391,226,396,231,400,229,404,233,405,226,425,223,427,220,432,223,434,219,439,216,437,209,440,203,436,195,431,194,427,192,424,194,423,190,416,189,417,181,416,171,407,176" href="#" data-code="34060" alt="논산시" data-area-num="chungnam_14">
											<area shape="poly" coords="330,163,327,164,326,170,323,175,325,184,330,189,332,190,325,203,328,208,334,205,343,206,343,214,348,218,351,220,351,224,353,230,357,230,358,220,362,215,367,215,373,211,377,214,382,213,380,207,378,200,382,198,384,199,388,191,393,189,393,184,385,183,378,177,379,172,368,175,364,173,356,173,353,168,350,164,343,165,337,166" href="#" data-code="34330" alt="부여군" data-area-num="chungnam_15">
											<area shape="poly" coords="289,209,288,214,291,216,292,213,296,212,301,216,304,215,308,220,314,228,313,233,316,233,320,238,320,244,324,244,332,244,336,240,345,238,349,234,356,231,356,229,353,229,351,221,344,214,343,206,331,206,327,206,325,204,320,206,318,205,313,207,304,206,300,203,293,203,294,207,291,209" href="#" data-code="34340" alt="서천군" data-area-num="chungnam_16">
										</map>
									</div>
										
									</div>
								   </div>
                                  <!-- 여기까지  -->
                                </div>
                            </div>
                            <!-- /# card -->
                        </div>
                        <!-- /# column -->
                    </div>
                    <!-- /# row -->



                    <div class="row">
                        <div class="col-lg-6">
                            <div class="card nestable-cart">
                                <div class="card-title">
                                    <h4>SEJONG</h4>
                                    <div class="card-title-right-icon">
                                        <ul>
                                           
                                        </ul>
                                    </div>
                                </div>
                                <div class="Vector-map-js">
                                     <!-- 여기서부터  -->
                                   <div class="card-body">
                                   
									<div class="Vector-map-js">
									
									<div class="allMap">
										<span class="allMap-view"><img src="/population/resources/assets/images/map/sejong.png" alt="sejong" usemap="#all-map"></span>
										<map name="all-map" id="all-map" class="allMap-point">
											<area shape="poly" coords="70,112,70,117,76,123,78,117,78,111" href="#" alt="세종" data-code="29" data-area-name="sejong" data-detail="sj_bg">
										</map>
									</div>
									<div class="mapDetail sj_bg" style="display: block;" data-parent-code="29" data-image="sejong_00.png" data-usemap="#sj-map"><!-- djlee 수정 2019-07-15 -->
										<span class="mapDetail-view"><img src="/population/resources/assets/images/map/sejong_01.png" usemap="#sj-map" alt="sejong_01"></span><!-- djlee 수정 2019-07-15 -->
										<map name="sj-map" id="sj-map" class="mapDetail-point">
											<area shape="poly" coords="283,38,303,20,306,24,310,23,321,27,325,32,332,32,353,49,366,50,380,57,379,67,374,73,370,73,366,81,371,85,372,94,379,112,377,121,385,124,397,135,397,138,402,136,410,139,416,136,423,151,433,153,437,167,431,167,438,177,433,184,425,190,419,183,409,190,412,198,406,205,408,215,401,221,398,229,389,235,364,241,352,239,351,244,347,246,341,239,335,236,328,226,316,223,320,209,318,205,313,197,314,190,311,187,307,187,299,175,309,166,303,157,304,151,310,151,309,143,315,136,321,134,321,127,309,121,294,109,294,102,290,98,294,96,296,85,292,79,294,69,298,60,296,52,290,54" href="#" data-code="29010" alt="세종시" data-area-num="sejong_01">
										</map>
									</div>
										
									</div>
								   </div>
                                  <!-- 여기까지  -->
                                </div>
                            </div>
                            <!-- /# card -->
                        </div>
                        <!-- /# column -->

                        <div class="col-lg-6">
                            <div class="card nestable-cart">
                                <div class="card-title">
                                    <h4>DAEJEON</h4>
                                    <div class="card-title-right-icon">
                                        <ul>
                                           
                                        </ul>
                                    </div>
                                </div>
                                <div class="Vector-map-js">
                                      <!-- 여기서부터  -->
                                   <div class="card-body">
                                   
									<div class="Vector-map-js">
									
									<div class="allMap">
										<span class="allMap-view"><img src="/population/resources/assets/images/map/dj.png" alt="dj" usemap="#all-map"></span>
										<map name="all-map" id="all-map" class="allMap-point">
											<area shape="poly" coords="75,123,70,128,71,136,78,137,78,131,80,127" href="#" alt="대전" data-code="25" data-area-name="dj" data-detail="dj_bg">
										</map>
									</div>
									<div class="mapDetail dj_bg" style="display: block;" data-parent-code="25" data-image="dj_00.png" data-usemap="#dj-map"><!-- djlee 수정 2019-07-15 -->
										<span class="mapDetail-view"><img src="/population/resources/assets/images/map/dj_03.png" usemap="#dj-map" alt="dj_03"></span><!-- djlee 수정 2019-07-15 -->
										<map name="dj-map" id="dj-map" class="mapDetail-point">
											<area shape="poly" coords="398,63,377,89,375,106,383,121,382,125,377,126,370,125,363,120,357,125,353,134,350,134,367,159,370,159,377,172,372,175,368,171,359,175,361,182,361,185,364,190,359,199,359,204,363,205,369,215,365,219,363,224,355,225,358,238,355,241,367,251,377,245,376,239,384,228,399,215,395,200,399,167,405,163,402,153,406,147,406,138,419,125,423,98,428,91,430,73,422,73,415,72,410,82,403,81" href="#" data-code="25010" alt="동구" data-area-num="dj_01">
											<area shape="poly" coords="341,45,335,54,336,61,349,71,353,81,350,89,349,105,337,113,343,122,344,131,350,135,355,133,358,126,364,121,368,125,376,125,382,128,382,121,374,106,377,89,398,65,400,61,407,50,404,45,392,48,391,44,394,34,391,28,380,40,380,46,373,50,363,46" href="#" data-code="25050" alt="대덕구" data-area-num="dj_02">
											<area shape="poly" coords="317,19,333,12,343,24,341,44,335,54,335,60,348,70,355,81,350,89,348,105,338,113,324,112,310,127,312,141,300,146,301,160,298,164,299,167,292,170,290,179,285,183,284,189,270,195,263,195,249,185,244,175,248,170,251,170,250,146,257,145,265,132,264,112,268,107,264,101,266,77,293,71,305,63,307,56,314,48,314,40,318,31,315,23" href="#" data-code="25040" alt="유성구" data-area-num="dj_03">
											<area shape="poly" coords="326,111,310,128,311,142,301,144,302,158,298,162,298,167,292,169,291,177,285,182,284,189,271,194,264,206,266,211,265,217,272,223,280,223,291,237,292,242,296,251,308,249,309,240,320,230,316,223,316,216,320,212,314,203,318,192,324,190,321,180,324,173,329,170,329,162,333,158,331,153,335,147,343,137,344,131,342,120,337,112" href="#" data-code="25030" alt="서구" data-area-num="dj_04">
											<area shape="poly" coords="343,130,344,138,335,145,332,153,333,159,329,162,330,169,327,173,324,174,321,180,322,189,330,191,335,197,333,207,341,222,344,227,356,239,358,236,356,223,361,223,364,217,367,215,367,211,363,204,359,203,359,195,366,189,362,186,362,181,358,174,363,173,370,170,372,174,377,171,377,166,370,157,367,157,360,144" href="#" data-code="25020" alt="중구" data-area-num="dj_05">
										</map>
									</div>
										
									</div>
								   </div>
                                  <!-- 여기까지  -->
                                </div>
                            </div>
                            <!-- /# card -->
                        </div>
                        <!-- /# column -->
                    </div>
                    <!-- /# row -->

                    <div class="row">
                        <div class="col-lg-6">
                            <div class="card nestable-cart">
                                <div class="card-title">
                                    <h4>CHUNGBUK</h4>
                                    <div class="card-title-right-icon">
                                        <ul>
                                           
                                        </ul>
                                    </div>
                                </div>
                                <div class="Vector-map-js">
                                     <!-- 여기서부터  -->
                                   <div class="card-body">
                                   
									<div class="Vector-map-js">
									
									<div class="allMap">
										<span class="allMap-view"><img src="/population/resources/assets/images/map/chungbuk.png" alt="chungbuk" usemap="#all-map"></span>
										<map name="all-map" id="all-map" class="allMap-point">
											<area shape="poly" coords="73,105,74,113,78,114,78,121,75,123,79,127,77,133,82,135,82,144,94,143,98,139,97,133,95,134,93,131,93,121,91,118,104,108,106,112,111,111,111,104,116,99,97,92,91,95,88,96" href="#" alt="충청북도" data-code="33" data-area-name="chungbuk" data-detail="chb_bg">
										</map>
									</div>
									<div class="mapDetail chb_bg" style="display: block;" data-parent-code="33" data-image="chungbuk_00.png" data-usemap="#chb-map"> <!-- djlee 수정 2019-07-15 -->
										<span class="mapDetail-view"><img src="/population/resources/assets/images/map/chungbuk_01.png" usemap="#chb-map" alt="chungbuk_01"></span> <!-- djlee 수정 2019-07-15 -->
										<map name="chb-map" id="chb-map" class="mapDetail-point">
											<area shape="poly" coords="420,32,419,39,415,37,413,39,413,42,407,49,407,54,412,59,412,63,413,69,408,74,411,81,409,85,416,88,429,96,433,95,437,95,440,90,442,87,437,81,439,77,440,72,451,63,453,60,457,59,460,55,459,53,464,50,469,49,474,46,468,43,455,40,452,38,449,35,446,37,439,36,438,38,434,34,433,30,427,29,425,28" href="#" alt="단양군" data-code="33380" data-area-num="chungbuk_01">
											<area shape="poly" coords="359,15,367,8,373,10,377,16,376,20,378,22,383,21,390,18,391,13,398,18,399,13,404,10,408,14,411,14,414,18,423,16,422,19,418,23,413,28,419,33,420,38,418,39,414,35,411,39,413,42,407,48,407,54,412,57,412,63,414,68,409,73,412,80,409,87,406,89,406,97,391,93,388,92,385,87,382,89,381,91,377,87,382,76,378,69,381,66,384,67,385,60,384,57,386,52,383,46,384,42,378,37,376,36,372,39,367,36,368,32,365,26,360,26,362,20" href="#" alt="제천시" data-code="33030" data-area-num="chungbuk_02">
											<area shape="poly" coords="331,20,323,30,328,36,326,39,323,48,318,55,318,64,323,63,326,66,338,71,341,69,346,71,348,75,349,77,357,81,363,81,367,84,368,93,375,96,380,94,385,96,388,97,391,92,387,90,385,88,380,89,377,86,383,77,379,70,379,66,383,68,385,68,385,60,383,58,385,56,385,51,385,44,379,38,373,36,372,38,369,36,367,29,356,26,338,30,334,26" href="#" alt="충주시" data-code="33020" data-area-num="chungbuk_03">
											<area shape="poly" coords="341,69,347,72,347,76,350,79,357,81,361,83,363,81,367,86,367,94,374,96,381,94,381,100,378,108,384,115,378,116,374,113,371,115,364,112,363,117,360,121,355,120,361,128,361,134,354,130,352,127,348,132,348,136,342,135,339,138,336,135,326,125,329,121,322,113,316,117,312,116,311,109,312,101,316,99,315,93,316,88,320,86,324,82,329,82,335,82,338,78,339,81" data-code="33360" href="#" alt="괴산군" data-area-num="chungbuk_04">
											<area shape="poly" coords="301,51,298,49,286,50,285,68,289,73,294,71,305,83,307,89,314,89,316,87,322,85,325,82,334,83,339,81,340,76,337,70,326,66,322,62,317,62,319,55,324,50,325,40,329,37,325,33,314,30,314,39" href="#" alt="음성군" data-code="33370" data-area-num="chungbuk_05">
											<area shape="poly" coords="285,57,282,59,277,60,276,63,278,66,274,69,271,69,264,73,260,79,263,82,263,87,267,87,268,91,273,96,277,96,278,99,277,103,281,104,280,108,286,107,292,103,305,101,301,97,299,97,302,95,305,94,304,91,307,88,305,83,302,82,300,76,297,76,292,70,289,71,285,68" href="#" alt="진천군" data-code="33350" data-area-num="chungbuk_06">
											<area shape="poly" coords="307,88,304,90,304,94,300,97,303,100,305,106,309,111,312,116,316,117,320,116,321,113,316,107,313,101,314,98,315,96,314,91,315,89" href="#" alt="증평군" data-code="33390" data-area-num="chungbuk_07">
											<area shape="poly" coords="304,102,290,102,284,107,280,106,277,109,274,107,267,108,269,112,263,113,263,116,260,119,263,122,259,128,262,137,262,141,267,142,268,144,273,145,275,149,279,150,277,153,279,156,278,159,278,162,277,165,283,165,287,167,291,161,290,165,294,166,292,170,294,176,297,170,302,166,306,159,304,149,312,145,312,140,315,138,317,136,325,138,333,139,336,135,324,124,328,121,322,112,318,115,317,116,312,115,311,111" href="#" data-code="33041,33042,33043,33044" alt="청주시" data-area-num="chungbuk_08" data-inside-name="in-chungju">
											<area shape="poly" coords="296,172,300,173,299,177,305,177,307,174,310,174,317,168,321,168,322,172,328,177,335,178,340,178,348,181,353,181,353,165,353,159,355,156,356,151,352,148,351,144,340,140,340,136,332,139,325,137,323,139,316,136,311,143,311,145,304,150,305,158" href="#" alt="보은군" data-code="33320" data-area-num="chungbuk_09">
											<area shape="poly" coords="299,177,304,176,306,174,310,174,314,169,317,167,319,169,322,169,323,173,331,179,336,177,342,179,353,182,355,185,348,192,343,194,340,197,336,197,335,202,330,200,325,203,321,211,317,212,318,218,314,220,308,218,308,211,305,209,301,210,299,206,292,208,292,196,293,188,297,184" href="#" alt="옥천군" data-code="33330" data-area-num="chungbuk_10">
											<area shape="poly" coords="309,219,313,219,317,218,318,212,322,210,324,206,327,202,334,201,337,198,341,197,344,193,348,192,349,201,355,202,355,198,362,201,367,206,374,202,379,204,378,207,380,216,378,216,374,213,368,217,370,223,371,229,367,234,367,241,362,244,352,250,349,247,335,253,332,249,325,246,323,242,318,244,312,236,308,227" href="#" alt="영동군" data-code="33340" data-area-num="chungbuk_11">
										</map>
									</div>
										
									</div>
								   </div>
                                  <!-- 여기까지  -->
                                </div>
                            </div>
                            <!-- /# card -->
                        </div>
                        <!-- /# column -->

                        <div class="col-lg-6">
                            <div class="card nestable-cart">
                                <div class="card-title">
                                    <h4>GYEONGBUK</h4>
                                    <div class="card-title-right-icon">
                                        <ul>
                                           
                                        </ul>
                                    </div>
                                </div>
                                <div class="Vector-map-js">
                                    <!-- 여기서부터  -->
                                   <div class="card-body">
                                   
									<div class="Vector-map-js">
									
									<div class="allMap">
										<span class="allMap-view"><img src="/population/resources/assets/images/map/gyeongbuk.png" alt="gyeongbuk" usemap="#all-map"></span>
										<map name="all-map" id="all-map" class="allMap-point">
											<area shape="poly" coords="105,107,108,111,112,110,113,105,117,99,139,97,144,92,147,98,146,105,148,110,147,137,148,143,151,141,153,144,149,159,137,157,125,164,117,160,124,152,121,144,118,144,110,149,111,160,103,159,103,154,93,151,98,136,92,143,98,133,94,132,92,120,92,119" href="#" alt="경상북도" data-code="37" data-area-name="gyeongbuk" data-detail="gsb_bg">
											<area shape="poly" coords="172,38,168,39,168,43,173,47,178,47,182,50,182,46,177,43,177,38" href="#" alt="경상북도" data-code="37" data-area-name="gyeongbuk" data-detail="gsb_bg">
										</map>
									</div>
									<div class="mapDetail gsb_bg" style="display: block;" data-parent-code="37" data-image="gyeongbuk_00.png" data-usemap="#gsb-map"><!-- djlee 수정 2019-07-15 -->
										<span class="mapDetail-view"><img src="/population/resources/assets/images/map/gyeongbuk_24.png" usemap="#gsb-map" alt="gyeongbuk_24"></span><!-- djlee 수정 2019-07-15 -->
										<map name="gsb-map" id="gsb-map" class="mapDetail-point">
											<area shape="poly" coords="400,8,394,12,390,13,385,21,386,25,381,25,378,28,373,25,370,28,368,33,369,36,366,39,369,41,375,44,376,49,382,50,387,55,391,52,392,55,393,58,393,61,396,65,391,71,392,77,391,80,396,83,402,84,408,82,410,86,416,79,416,74,415,60,410,52,409,44,409,37,408,33,409,30,409,22,409,19,403,15,403,10" href="#" data-code="37420" alt="울진군" data-area-num="gyeongbuk_01">
											<area shape="poly" coords="378,50,375,53,373,57,368,60,366,61,363,66,356,69,357,74,358,75,358,81,359,86,357,89,359,94,363,96,365,99,368,103,374,103,375,108,378,109,381,109,385,109,389,106,388,92,388,88,387,85,392,81,393,77,391,71,395,67,396,64,394,61,393,59,391,55,391,52,388,55,382,51" href="#" data-code="37340" alt="영양군" data-area-num="gyeongbuk_02">
											<area shape="poly" coords="322,27,327,27,330,22,332,20,336,21,338,22,339,24,343,27,346,26,348,22,349,19,353,19,354,21,358,20,367,23,367,19,371,18,377,22,380,23,381,26,378,28,374,26,370,28,369,33,369,35,367,39,370,43,375,44,375,49,377,51,374,54,369,60,365,61,362,65,357,67,357,71,352,67,347,67,338,61,329,62,324,58,326,55,324,53,320,53,317,45,321,34" href="#" data-code="37410" alt="봉화군" data-area-num="gyeongbuk_03">
											<area shape="poly" coords="322,27,316,24,311,28,308,27,306,29,306,32,303,36,301,34,299,38,291,44,291,49,289,52,292,54,292,57,296,58,294,62,298,68,303,67,307,74,309,78,313,77,319,78,327,78,327,71,328,64,329,61,326,57,326,55,323,52,318,52,317,46" href="#" data-code="37060" alt="영주시" data-area-num="gyeongbuk_04">
											<area shape="poly" coords="283,64,284,62,290,62,293,56,295,58,296,60,295,63,299,68,303,67,306,71,308,78,311,80,311,86,305,90,299,98,293,103,290,108,283,110,281,104,279,106,278,112,274,116,270,116,269,102,273,100,271,91,277,86,277,81,277,75,277,74,281,72,282,70" href="#" data-code="37400" alt="예천군" data-area-num="gyeongbuk_05">
											<area shape="poly" coords="241,76,244,79,246,79,246,76,245,66,246,62,249,64,252,62,252,61,262,61,264,62,263,58,267,54,273,56,277,61,283,64,282,68,283,72,278,73,278,78,276,81,276,88,273,89,271,92,272,101,268,102,269,105,264,105,261,98,257,94,253,92,245,94,244,102,236,103,235,108,230,105,229,96,228,93,229,92,230,88,225,81,229,80,232,78,232,75,236,77,242,72" href="#" data-code="37090" alt="문경시" data-area-num="gyeongbuk_06">
											<area shape="poly" coords="219,94,213,96,217,100,220,100,223,103,222,106,226,107,227,110,224,113,224,118,224,131,225,133,220,139,220,146,225,144,225,143,229,145,234,149,239,146,243,149,249,149,251,150,256,147,254,143,258,141,264,141,270,131,274,134,277,128,279,124,275,115,271,115,268,105,265,105,263,100,252,92,246,95,244,102,240,104,236,104,234,108,229,105,229,96,227,92,223,89,220,91" href="#" data-code="37080" alt="상주시" data-area-num="gyeongbuk_07">
											<area shape="poly" coords="243,148,242,152,245,157,242,158,238,156,235,158,236,168,234,170,234,176,231,180,227,180,223,184,227,195,222,199,226,204,229,206,231,209,240,212,249,212,246,205,244,196,250,194,258,191,259,184,264,179,268,178,274,178,271,166,274,161,268,156,266,156,265,152,256,147,251,149,248,149" href="#" data-code="37030" alt="김천시" data-area-num="gyeongbuk_08">
											<area shape="poly" coords="262,140,257,141,254,144,253,148,261,150,266,152,266,157,270,156,273,160,271,171,277,174,281,174,283,177,287,174,294,174,298,169,306,169,305,161,304,157,302,156,297,156,296,151,291,153,289,150,289,144,283,135,274,134,269,131,264,138" href="#" data-code="37050" alt="구미시" data-area-num="gyeongbuk_09">
											<area shape="poly" coords="275,115,277,120,279,125,274,133,282,135,287,144,292,140,293,137,298,140,308,144,317,148,315,154,319,153,323,156,336,156,338,153,345,155,345,147,344,143,347,139,345,133,343,127,338,117,329,112,323,114,323,117,311,122,309,120,303,110,292,110,283,109,282,105,278,105,278,111" href="#" data-code="37320" alt="의성군" data-area-num="gyeongbuk_10">
											<area shape="poly" coords="310,79,312,81,311,86,305,90,298,99,293,101,293,111,295,110,304,110,310,121,311,124,323,117,324,114,329,110,334,115,339,117,340,122,345,128,344,134,346,136,347,139,352,138,356,129,358,121,355,113,359,108,356,103,358,100,356,98,360,93,357,69,352,67,347,66,340,62,330,61,326,62,327,68,327,75,326,79,318,77,312,76" href="#" data-code="37040" alt="안동시" data-area-num="gyeongbuk_11">
											<area shape="poly" coords="358,95,357,99,358,101,357,105,360,107,356,115,358,124,355,134,350,140,344,141,343,145,345,151,346,158,353,157,358,160,365,154,365,150,369,149,369,146,372,142,377,146,380,150,386,145,388,139,390,134,387,130,386,124,382,118,378,109,374,104,367,101,362,95" href="#" data-code="37330" alt="청송군" data-area-num="gyeongbuk_12">
											<area shape="poly" coords="390,81,386,85,389,89,387,92,388,103,388,106,385,109,378,108,377,113,381,118,385,122,386,129,388,133,391,135,394,137,395,142,402,144,407,143,407,132,413,119,413,104,412,99,409,94,410,85,404,82,400,84" href="#" data-code="37350" alt="영덕군" data-area-num="gyeongbuk_13">
											<area shape="poly" coords="370,143,369,147,370,150,365,152,364,155,359,159,367,163,373,172,376,173,379,177,389,177,392,173,395,173,395,176,395,181,398,187,400,193,402,199,406,205,416,206,424,209,427,201,424,195,426,193,429,185,431,181,430,173,428,171,424,175,420,180,416,183,413,184,409,180,413,179,406,175,411,172,413,168,408,162,409,158,405,152,407,147,405,143,397,142,390,134,386,136,386,140,384,145,383,148,380,149" href="#" data-code="37011,37012" alt="포항시" data-area-num="gyeongbuk_14" data-inside-name="in-pohang">
											<area shape="poly" coords="388,177,392,174,395,173,395,180,398,187,403,198,406,206,421,207,424,210,417,236,405,234,396,238,393,237,394,230,374,229,369,233,367,240,362,231,358,223,360,218,360,212,363,205,365,200,370,194,374,195,375,197,377,194,376,188,374,185,377,182,378,176" href="#" data-code="37020" alt="경주시" data-area-num="gyeongbuk_15">
											<area shape="poly" coords="324,225,327,229,331,231,336,225,341,224,344,222,349,224,354,221,356,210,362,209,361,215,361,219,358,222,359,226,362,233,366,234,368,239,364,243,359,245,353,240,349,241,348,246,342,248,338,248,335,252,325,251,323,247,318,248,312,250,307,244,304,236,304,229,314,226,314,229,316,231" href="#" data-code="37360" alt="청도군" data-area-num="gyeongbuk_16">
											<area shape="poly" coords="329,187,330,197,332,199,327,211,324,221,324,226,334,232,336,226,341,224,346,222,350,222,355,220,357,210,346,208,345,201,343,198,343,192" href="#" data-code="37100" alt="경산시" data-area-num="gyeongbuk_17">
											<area shape="poly" coords="348,159,347,162,342,164,342,168,336,172,323,178,323,184,332,188,343,193,343,197,342,200,346,203,346,209,360,209,365,204,365,199,369,195,372,193,375,197,378,194,375,183,378,183,379,176,376,172,372,171,367,163,358,158,356,160,352,157" href="#" data-code="37070" alt="영천시" data-area-num="gyeongbuk_18">
											<area shape="poly" coords="289,141,291,138,294,135,297,138,303,140,316,147,315,153,320,152,324,155,335,156,339,152,345,155,348,162,348,163,342,164,342,168,336,173,330,170,324,177,323,184,316,184,314,178,315,173,306,176,306,169,304,160,301,156,297,154,296,149,291,152,288,147" href="#" data-code="373110" alt="군위군" data-area-num="gyeongbuk_19">
											<area shape="poly" coords="273,173,274,179,275,181,276,181,277,188,283,194,286,196,288,202,291,197,296,195,298,199,297,203,302,201,305,195,305,192,311,189,317,184,315,177,314,173,311,175,306,175,307,171,299,168,295,171,293,173,285,173,282,176,279,173" href="#" data-code="37390" alt="칠곡군" data-area-num="gyeongbuk_20">
											<area shape="poly" coords="247,212,247,206,245,195,256,190,261,181,267,178,275,181,275,185,279,192,286,197,287,203,284,210,283,218,277,214,273,218,261,219,253,218,255,214" href="#" data-code="37380" alt="성주군" data-area-num="gyeongbuk_21">
											<area shape="poly" coords="261,220,261,224,263,230,264,234,257,238,266,241,269,239,281,240,284,244,288,242,285,236,282,231,289,231,293,231,291,226,287,221,290,216,298,216,298,211,285,208,282,217,277,215,271,217" href="#" data-code="37370" alt="고령군" data-area-num="gyeongbuk_22">
											<area shape="poly" coords="474,15,466,19,464,25,470,28,479,25,480,19,479,15" href="#" data-code="37430" alt="을릉군" data-area-num="gyeongbuk_24">
											<area shape="poly" coords="493,30,491,33,494,36,496,34,497,29" href="#" data-code="37430" alt="독도" data-area-num="gyeongbuk_25">
										</map>
									</div>
										
									</div>
								   </div>
                                  <!-- 여기까지  -->
                                </div>
                            </div>
                            <!-- /# card -->
                        </div>
                        <!-- /# column -->
                    </div>
                    <!-- /# row -->

                    <div class="row">
                        <div class="col-lg-6">
                            <div class="card nestable-cart">
                                <div class="card-title">
                                    <h4>DAEGU</h4>
                                    <div class="card-title-right-icon">
                                        <ul>
                                           
                                        </ul>
                                    </div>
                                </div>
                                <div class="Vector-map-js">
                                    <!-- 여기서부터  -->
                                   <div class="card-body">
                                   
									<div class="Vector-map-js">
									
									<div class="allMap">
										<span class="allMap-view"><img src="/population/resources/assets/images/map/dg.png" alt="dg" usemap="#all-map"></span>
										<map name="all-map" id="all-map" class="allMap-point">
											<area shape="poly" coords="111,160,117,160,123,152,121,145,117,145,110,148" href="#" alt="대구" data-code="22" data-area-name="dg" data-detail="dg_bg">
										</map>
									</div>
									<div class="mapDetail dg_bg" style="display: block;" data-parent-code="22" data-image="dg_00.png" data-usemap="#dg-map"><!-- djlee 수정 2019-07-15 -->
										<span class="mapDetail-view"><img src="/population/resources/assets/images/map/dg_01.png" usemap="#dg-map" alt="dg_01"></span><!-- djlee 수정 2019-07-15 -->
										<map name="dg-map" id="dg-map" class="mapDetail-point">
											<area shape="poly" coords="379,35,384,40,383,44,386,50,386,63,391,69,390,79,387,82,390,88,388,91,385,89,378,96,388,103,399,97,405,99,410,99,414,107,426,106,429,105,437,109,439,111,449,102,449,93,448,80,446,72,438,65,441,58,440,46,436,35,436,28,429,22,419,19,413,18,403,20,390,23,383,24" href="#" data-code="22020" alt="동구" data-area-num="dg_01">
											<area shape="poly" coords="346,51,346,63,341,74,335,80,331,89,336,89,345,92,351,86,356,89,378,97,386,88,389,90,390,87,388,82,390,80,389,66,386,62,387,49,384,42,377,35,363,39" href="#" data-code="22050" alt="북구" data-area-num="dg_02">
											<area shape="poly" coords="308,61,301,67,296,70,287,85,284,87,277,107,277,112,294,113,307,114,315,118,318,109,321,103,329,105,338,102,337,94,340,90,334,88,330,89,327,86,320,86,317,88,314,83,314,79,316,76,318,66" href="#" data-code="22310" alt="달성군" data-area-num="dg_03">
											<area shape="poly" coords="341,90,338,93,338,100,344,105,349,108,354,109,363,107,364,99,367,93,354,89,353,85,347,88,345,91" href="#" data-code="22030" alt="서구" data-area-num="dg_04">
											<area shape="poly" coords="368,92,364,100,364,107,368,109,379,109,382,104,383,101,379,96" href="#" data-code="22010" alt="중구" data-area-num="dg_05">
											<area shape="poly" coords="383,101,379,108,378,127,374,135,381,138,391,138,415,144,430,135,426,126,438,110,427,104,415,107,410,99,405,98,398,96,388,101" href="#" data-code="22060" alt="수성구" data-area-num="dg_06">
											<area shape="poly" coords="364,107,364,109,356,120,369,137,378,128,379,110" href="#" data-code="22040" alt="남구" data-area-num="dg_07">
											<area shape="poly" coords="321,103,317,110,316,118,322,124,323,131,332,131,343,146,351,147,355,156,360,155,363,152,362,142,368,140,370,137,355,118,361,112,365,109,355,108,351,108,344,106,338,102,330,104" href="#" data-code="22070" alt="달서구" data-area-num="dg_08">
											<area shape="poly" coords="294,135,318,137,324,129,331,132,343,147,350,148,356,156,360,155,364,152,362,143,370,141,372,135,412,145,414,156,420,170,417,177,416,182,405,187,399,192,387,196,383,188,382,174,367,177,345,189,348,198,344,212,335,214,333,232,324,235,306,234,300,242,295,241,290,246,284,240,286,229,268,212,262,203,264,196,268,192,292,198,299,193,300,183,280,172,277,164" href="#" data-code="22310" alt="달성군" data-area-num="dg_03">
										</map>
									</div>
										
									</div>
								   </div>
                                  <!-- 여기까지  -->
                                </div>
                            </div>
                            <!-- /# card -->
                        </div>
                        <!-- /# column -->
                        
					
                        <div class="col-lg-6">
                            <div class="card nestable-cart">
                                <div class="card-title">
                                    <h4>GYEONGNAM</h4>
                                    <div class="card-title-right-icon">
                                        <ul>  
                                        </ul>
                                    </div>
                                </div>
                                <div class="Vector-map-js">
                                   <!-- 여기서부터  -->
                                   <div class="card-body">
                                   
									<div class="Vector-map-js">
									
								<div class="allMap">
									<span class="allMap-view"><img src="/population/resources/assets/images/map/gyeongnam.png" alt="gyeongnam" usemap="#all-map"></span>
									<map name="all-map" id="all-map" class="allMap-point">
										<area shape="poly" coords="90,151,84,157,80,177,89,188,89,203,100,203,100,199,107,196,120,202,123,200,125,190,120,189,117,192,113,192,114,186,119,182,122,184,127,184,130,179,138,173,133,167,133,161,125,166,116,161,103,161,105,156" href="#" alt="경상남도" data-code="38" data-area-name="gyeongnam" data-detail="gsn_bg">
									</map>
								</div>
								<div class="mapDetail gsn_bg" style="display: block;" data-parent-code="38" data-image="gyeongnam_00.png" data-usemap="#gsn-map"><!-- djlee 수정 2019-07-15 -->
									<span class="mapDetail-view"><img src="/population/resources/assets/images/map/gyeongnam_17.png" usemap="#gsn-map" alt="gyeongnam_17"></span><!-- djlee 수정 2019-07-15 -->
									<map name="gsn-map" id="gsn-map" class="mapDetail-point">
										<area shape="poly" coords="251,36,251,48,247,50,247,56,244,60,245,66,241,69,242,75,239,78,241,84,249,92,246,97,250,102,252,102,252,108,245,112,242,118,250,126,258,128,264,122,267,109,271,101,273,95,278,90,277,84,284,76,280,71,287,64,286,55,281,57,276,51,267,42,262,44,258,40,258,37" href="#" data-code="38380" alt="함양군" data-area-num="gyeongnam_01">
										<area shape="poly" coords="254,36,259,39,260,43,263,45,267,42,272,49,277,53,280,58,285,57,286,55,287,60,286,66,280,74,284,76,286,75,287,84,292,83,296,87,300,87,299,81,304,73,304,67,308,67,307,62,316,56,316,53,320,52,315,39,316,36,313,32,322,23,319,21,315,23,312,22,307,23,303,20,296,18,293,13,290,12,287,8,284,9,283,14,277,16,270,20,264,23,261,30" href="#" data-code="38390" alt="거창군" data-area-num="gyeongnam_02">
										<area shape="poly" coords="285,74,277,85,278,90,274,96,272,100,269,108,264,113,263,123,258,129,254,129,256,136,264,142,267,146,276,147,281,145,286,139,292,142,297,139,300,143,304,139,305,133,314,128,316,124,324,123,324,116,320,114,316,105,308,104,302,91,299,86,294,86,290,81,286,83" href="#" data-code="38370" alt="산청군" data-area-num="gyeongnam_03">
										<area shape="poly" coords="322,23,318,27,313,30,316,34,314,38,320,52,306,62,307,67,304,68,305,72,299,81,302,93,304,102,312,106,316,107,321,115,325,116,326,113,332,113,339,109,339,105,343,98,341,93,350,89,355,87,366,89,371,87,366,80,367,82,367,67,365,62,357,59,350,60,347,57,345,62,340,60,337,57,334,57,334,54,340,52,339,41,333,35,333,33,328,30,327,24" href="#" data-code="38400" alt="합천군" data-area-num="gyeongnam_04">
										<area shape="poly" coords="370,89,367,90,359,87,350,89,350,91,341,95,341,102,338,108,339,111,326,116,324,116,327,126,335,125,337,130,338,138,345,139,351,140,359,133,356,126,359,124,360,117,364,119,367,122,374,124,371,118,379,118,378,114,381,112,378,107,371,102,370,97,378,93,374,87" href="#" data-code="38310" alt="의령군" data-area-num="gyeongnam_05">
										<area shape="poly" coords="366,67,367,72,366,83,376,90,378,94,374,98,370,101,373,106,377,107,380,112,388,113,393,111,398,115,404,115,409,111,413,115,418,114,417,105,405,98,402,91,405,87,404,83,405,71,396,62,394,57,391,55,391,62,380,62,378,65" href="#" data-code="38330" alt="창녕군" data-area-num="gyeongnam_06">
										<area shape="poly" coords="405,75,405,89,403,93,404,98,412,101,416,105,417,115,424,115,434,121,437,121,443,114,455,110,463,104,459,100,462,98,468,96,469,91,467,88,470,87,474,83,472,77,477,72,476,63,471,66,460,62,451,65,448,71,443,71,438,75,430,75,426,73,421,72,419,70,410,72" href="#" data-code="38080" alt="밀양시" data-area-num="gyeongnam_07">
										<area shape="poly" coords="473,83,490,89,492,94,501,102,508,101,510,107,507,111,506,117,504,120,499,117,495,119,493,129,485,130,483,135,478,135,468,127,469,124,460,116,455,115,451,109,461,102,459,99,468,95,467,90,467,86,471,84,471,85" href="#" data-code="38100" alt="양산시" data-area-num="gyeongnam_08">
										<area shape="poly" coords="452,110,441,114,439,120,434,121,430,126,425,131,427,142,428,148,433,149,431,154,432,157,440,158,446,159,451,157,454,157,453,147,465,143,474,143,477,134,469,125,469,122,458,115,454,113" href="#" data-code="38070" alt="김해시" data-area-num="gyeongnam_09">
										<area shape="poly" coords="413,114,405,110,402,114,403,116,401,120,401,128,406,134,399,135,390,134,388,141,386,146,389,149,386,152,382,154,381,158,375,155,373,150,367,153,367,159,366,169,374,172,379,177,386,176,382,170,392,171,398,168,404,173,404,179,412,178,410,172,407,166,406,160,403,153,405,148,407,152,410,163,416,161,420,166,422,162,425,166,424,170,434,173,437,178,438,170,441,171,444,174,447,169,440,158,434,155,431,153,433,148,428,144,429,141,425,129,431,124,435,120,421,112,413,114" href="#" data-code="38111,38112,38113,38114,38115" alt="창원시" data-area-num="gyeongnam_10" data-inside-name="in_changwon">
										<area shape="poly" coords="373,123,367,122,362,118,360,118,360,125,356,129,358,134,353,140,357,142,359,147,368,151,375,149,375,154,380,159,386,153,390,149,387,142,391,135,399,136,406,135,405,127,402,120,403,116,399,112,391,110,388,113,380,111,378,117,370,119" href="#" data-code="38320" alt="함안군" data-area-num="gyeongnam_11">
										<area shape="poly" coords="318,124,337,124,339,136,345,138,353,140,357,140,360,145,369,151,368,160,366,166,351,165,345,168,339,172,340,181,337,182,333,175,335,173,334,169,329,167,325,170,318,165,314,166,305,169,306,161,298,160,294,154,289,146,296,140,301,141,309,131" href="#" data-code="38030" alt="진주시" data-area-num="gyeongnam_12">
										<area shape="poly" coords="243,125,239,129,241,138,244,145,249,159,256,164,259,172,269,182,272,191,269,198,275,206,291,201,295,191,293,182,296,179,290,172,292,168,289,162,288,159,296,160,297,157,289,149,292,142,285,139,281,143,274,145,265,140,256,134,254,129" href="#" data-code="38360" alt="하동군" data-area-num="gyeongnam_13">
										<area shape="poly" coords="287,160,306,159,309,169,316,167,318,164,326,170,330,168,337,173,334,177,338,181,335,186,336,195,332,195,327,207,316,206,312,201,317,195,314,191,316,188,314,181,312,185,310,186,305,184,310,191,311,195,306,197,300,193,298,197,295,193,294,185,296,180,290,174,292,167" href="#" data-code="38060" alt="사천시" data-area-num="gyeongnam_14">
										<area shape="poly" coords="326,208,333,193,336,195,336,185,341,176,340,172,347,167,364,166,375,172,380,178,368,185,370,189,374,186,380,183,387,178,392,189,387,194,379,192,383,196,371,202,364,205,361,202,360,207,353,212,352,206,348,203,341,205,341,213,332,213,323,211" href="#" data-code="38340" alt="고성군" data-area-num="gyeongnam_15">
										<area shape="poly" coords="366,204,381,197,381,207,388,214,378,240,368,232,367,227,365,229,364,225,371,223,371,223,368,217,362,217,358,211,367,210" href="#" data-code="38050" alt="통영시" data-area-num="gyeongnam_16">
										<area shape="poly" coords="399,231,408,226,408,234,404,239,411,240,410,249,415,254,418,250,419,241,423,234,430,233,435,236,431,225,435,216,427,218,433,206,425,197,430,187,424,187,418,200,411,202,408,207,414,213,407,213,399,210,389,220" href="#" data-code="38090" alt="거제시" data-area-num="gyeongnam_17">
										<area shape="poly" coords="280,214,289,204,296,207,295,216,291,220,301,233,307,228,303,218,309,213,313,210,320,218,323,227,319,236,317,246,317,251,314,255,302,252,298,243,298,242,294,242,291,248,284,247,281,243,277,222" href="#" data-code="38350" alt="남해군" data-area-num="gyeongnam_18">
									</map>
								</div>
										
									</div>
								   </div>
                                  <!-- 여기까지  -->
                                </div>
                            </div>
                            <!-- /# card -->
                        </div>
                        <!-- /# column -->
                    </div>
                   
                    <!-- /# row -->

					<div class="row">
                        <div class="col-lg-6">
                            <div class="card nestable-cart">
                                <div class="card-title">
                                    <h4>JEONBUK</h4>
                                    <div class="card-title-right-icon">
                                        <ul>
                                           
                                        </ul>
                                    </div>
                                </div>
                                <div class="Vector-map-js">
                                    <!-- 여기서부터  -->
                                   <div class="card-body">
                                   
									<div class="Vector-map-js">
									
									<div class="allMap">
										<span class="allMap-view"><img src="/population/resources/assets/images/map/jeonbuk.png" alt="jeonbuk" usemap="#all-map"></span>
										<map name="all-map" id="all-map" class="allMap-point">
											<area shape="poly" coords="47,146,48,152,44,159,40,169,46,175,51,172,52,170,55,168,63,172,83,177,83,159,92,151,92,145,83,144,80,146,75,145,74,140,69,139,64,142,59,137,56,139,55,144" href="#" alt="전라북도" data-code="35" data-area-name="jeonbuk" data-detail="jlb_bg">
										</map>
									</div>
									<div class="mapDetail jlb_bg" style="display: block;" data-parent-code="35" data-image="jeonbuk_00.png" data-usemap="#jlb-map"><!-- djlee 수정 2019-07-15 -->
										<span class="mapDetail-view"><img src="/population/resources/assets/images/map/jeonbuk_05.png" usemap="#jlb-map" alt="jeonbuk_05"></span><!-- djlee 수정 2019-07-15 -->
										<map name="jlb-map" id="jlb-map" class="mapDetail-point">
											<area shape="poly" coords="221,61,247,59,254,58,259,59,263,54,268,54,272,46,284,44,288,39,299,38,300,44,305,50,310,53,310,58,307,62,306,66,302,70,302,74,291,80,282,88,274,89,256,90,252,87,244,86,235,76,231,76,229,71,222,72" href="#" data-code="35020" alt="군산시" data-area-num="jeonbuk_01">
											<area shape="poly" coords="306,14,301,20,300,36,299,43,306,50,310,52,308,59,307,65,303,69,302,73,297,78,298,81,305,78,320,80,329,82,344,80,345,77,351,71,354,55,355,43,360,38,353,33,349,33,343,27,343,18,336,15,331,13,326,12,321,10,314,14" href="#" data-code="35030" alt="익산시" data-area-num="jeonbuk_02">
											<area shape="poly" coords="358,36,361,30,378,26,383,26,386,22,391,24,395,21,397,18,404,17,409,23,406,26,413,46,410,51,411,55,405,61,407,78,403,80,404,90,400,92,404,96,399,100,398,105,389,117,383,124,386,140,384,141,376,133,369,127,361,131,360,136,356,140,360,153,353,161,346,159,348,150,344,144,345,130,349,128,352,121,354,123,361,120,366,114,372,116,377,109,380,104,375,101,375,97,372,95,367,95,359,81,349,84,342,81,343,76,351,69,357,42,360,38" href="#" data-code="35310" alt="완주군" data-area-num="jeonbuk_03">
											<area shape="poly" coords="409,55,406,59,407,77,404,80,404,88,400,91,402,96,398,99,400,104,396,106,389,119,394,129,394,142,397,142,405,148,414,147,422,153,426,155,427,158,429,160,435,159,434,154,435,149,433,141,437,137,437,131,448,121,444,110,448,105,457,111,466,105,470,101,470,96,464,89,460,88,460,82,455,74,451,71,454,69,447,60,437,59,427,50,425,46,419,52,408,47" href="#" data-code="35320" alt="진안군" data-area-num="jeonbuk_04">
											<area shape="poly" coords="447,59,451,56,452,44,463,47,466,52,468,48,470,36,473,35,479,40,485,37,488,47,496,46,501,51,513,46,520,43,524,47,528,56,531,63,534,71,529,74,525,81,522,86,520,93,512,94,497,103,491,112,486,115,483,108,478,104,475,108,467,100,470,96,463,87,461,89,462,80,455,75,452,72,453,67" href="#" data-code="35330" alt="무주군" data-area-num="jeonbuk_05">
											<area shape="poly" coords="413,162,416,160,422,161,428,158,435,159,435,154,436,149,432,144,434,139,438,134,438,129,447,121,445,112,450,104,459,112,470,103,478,107,480,105,488,112,478,121,477,134,474,139,472,147,469,153,470,158,466,163,467,169,463,174,462,179,458,189,458,188,460,193,455,201,448,202,443,195,445,190,436,183,429,181,419,179,414,181,408,174" href="#" data-code="35340" alt="장수군" data-area-num="jeonbuk_06">
											<area shape="poly" coords="370,238,371,234,374,231,378,222,385,216,387,214,393,215,396,207,399,202,398,197,404,196,410,192,405,178,409,177,415,180,429,180,440,184,445,193,448,201,454,202,460,191,458,185,460,179,471,189,476,197,472,202,480,208,476,219,469,227,466,234,470,239,462,247,451,240,442,231,430,229,424,233,416,247,405,242,400,246,393,245,385,246,379,237" href="#" data-code="35050" alt="남원시" data-area-num="jeonbuk_07">
											<area shape="poly" coords="360,131,365,130,370,127,377,132,377,134,381,135,384,139,389,139,386,130,384,121,388,118,395,130,395,140,400,143,405,147,410,147,417,150,425,154,428,159,424,162,414,162,412,171,411,177,405,179,408,188,409,193,398,197,396,201,385,200,377,198,373,195,369,201,367,206,362,203,358,195,351,189,353,180,349,172,352,165,349,159,353,158,359,152,355,139" href="#" data-code="35350" alt="임실군" data-area-num="jeonbuk_08">
											<area shape="poly" coords="297,201,298,199,301,198,307,199,315,195,312,189,314,185,318,184,318,180,324,178,328,182,334,183,339,188,348,191,354,191,359,195,361,203,369,205,369,201,375,197,382,200,390,199,398,200,395,211,395,213,387,214,385,220,378,222,375,232,367,234,371,239,361,246,351,250,340,241,342,236,342,229,342,224,338,226,335,221,338,218,340,212,338,210,335,201,328,203,324,214,323,220,315,222" href="#" data-code="35360" alt="순창군" data-area-num="jeonbuk_09">
											<area shape="poly" coords="265,154,269,150,269,145,279,144,283,141,293,140,290,133,295,129,298,129,302,122,310,125,313,131,320,131,327,138,328,142,331,144,337,145,345,145,350,152,350,161,353,166,351,175,354,184,352,188,353,192,336,186,333,180,327,182,322,174,316,186,312,191,315,197,311,201,300,197,296,203,278,200,273,185,275,174,265,172" href="#" data-code="35040" alt="정읍시" data-area-num="jeonbuk_10">
											<area shape="poly" coords="262,106,275,110,281,123,287,133,292,131,301,129,303,124,309,125,313,131,320,131,327,137,328,143,332,146,345,145,344,134,349,128,342,121,345,117,343,112,331,109,328,102,328,102,332,94,329,84,319,79,301,78,297,79,293,77,280,87,271,89,258,90" href="#" data-code="35060" alt="김제시" data-area-num="jeonbuk_11">
											<area shape="poly" coords="329,82,336,94,343,96,342,107,343,113,344,116,341,121,343,124,347,129,352,123,360,121,365,116,372,117,377,111,380,105,376,100,372,95,369,94,362,82,345,81" href="#" data-code="35011,35012" alt="전주시" data-area-num="jeonbuk_12" data-inside-name="in-jeonju">
											<area shape="poly" coords="207,163,219,170,225,169,231,170,238,169,245,170,256,173,264,172,266,153,269,150,271,147,280,144,283,141,293,141,292,135,287,131,284,126,281,121,276,110,263,106,262,110,254,110,245,109,244,112,244,119,242,124,237,132,223,139,215,146,207,154" href="#" data-code="35380" alt="부안군" data-area-num="jeonbuk_13">
											<area shape="poly" coords="198,210,208,196,213,187,222,182,229,182,231,180,238,180,243,173,252,172,258,174,269,172,274,174,276,181,274,195,277,202,271,206,272,216,267,222,266,225,258,234,252,234,251,242,241,241,234,239,233,244,223,246,219,239,219,230,212,225,213,215" href="#" data-code="35370" alt="고창군" data-area-num="jeonbuk_14">
										</map>
									</div>
										
									</div>
								   </div>
                                  <!-- 여기까지  -->
                                </div>
                            </div>
                            <!-- /# card -->
                        </div>
                        <!-- /# column -->
					
                        <div class="col-lg-6">
                            <div class="card nestable-cart">
                                <div class="card-title">
                                    <h4>JEONNAM</h4>
                                    <div class="card-title-right-icon">
                                        <ul>  
                                        </ul>
                                    </div>
                                </div>
                                <div class="Vector-map-js">
                                   <!-- 여기서부터  -->
                                   <div class="card-body">
                                   
									<div class="Vector-map-js">
									
								<div class="allMap">
									<span class="allMap-view"><img src="/population/resources/assets/images/map/jeonnam.png" alt="jeonnam" usemap="#all-map"></span>
									<map name="all-map" id="all-map" class="allMap-point">
										<area shape="poly" coords="24,181,37,180,40,171,47,175,52,172,52,169,56,167,60,171,62,175,82,175,90,187,89,203,87,208,80,207,82,212,78,215,76,213,66,217,66,220,43,221,39,216,36,217,31,218,31,221,21,227,18,220,26,207,23,207,22,197,26,189,28,190,28,187" href="#" alt="전라남도" data-code="36" data-area-name="jeonnam" data-detail="jln_bg">
									</map>
								</div>
								<div class="mapDetail jln_bg" style="display: block;" data-parent-code="36" data-image="jeonnam_00.png" data-usemap="#jln-map"><!-- djlee 수정 2019-07-15 -->
									<span class="mapDetail-view"><img src="/population/resources/assets/images/map/jeonnam_05.png" usemap="#jln-map" alt="jeonnam_05"></span><!-- djlee 수정 2019-07-15 -->
									<map name="jln-map" id="jln-map" class="mapDetail-point">
										<area shape="poly" coords="280,70,281,63,284,61,283,58,287,56,292,53,292,46,295,41,295,32,300,27,312,33,309,36,313,41,315,47,315,51,318,53,324,50,327,47,332,50,335,51,331,58,330,62,327,62,327,68,327,73,320,78,308,79,308,76,301,80,297,78,290,81,287,76,289,73,284,74,281,71" href="#" data-code="36440" alt="영광군" data-area-num="jeonnam_01">
										<area shape="poly" coords="327,65,328,60,331,58,331,55,335,51,336,48,339,44,343,44,349,38,348,35,353,31,350,25,355,21,371,22,376,29,380,35,374,42,373,46,374,49,368,50,370,55,372,64,361,70,353,66,349,62,347,67,346,72,342,72,335,77" href="#" data-code="36450" alt="장성군" data-area-num="jeonnam_02">
										<area shape="poly" coords="379,35,376,40,372,45,374,49,370,50,369,58,373,64,378,63,382,68,385,74,386,80,393,78,395,80,393,84,393,89,396,88,404,91,406,88,401,77,406,78,409,74,406,64,408,60,406,54,400,50,397,49,402,47,402,42,399,38,396,35,400,32,398,28,396,22,390,23,388,29,387,34" href="#" data-code="36310" alt="담양군" data-area-num="jeonnam_03">
										<area shape="poly" coords="408,55,408,62,406,66,408,74,414,77,422,72,425,77,423,81,425,89,434,95,434,99,441,97,444,101,448,96,453,94,454,88,459,84,457,76,452,74,453,70,457,65,454,54,447,51,442,54,438,52,433,53,426,47,417,49" href="#" data-code="36320" alt="곡성군" data-area-num="jeonnam_04">
										<area shape="poly" coords="453,53,458,48,461,42,468,41,474,44,478,49,483,51,491,63,491,78,489,84,488,89,479,93,473,88,460,77,452,74,455,65,457,64" href="#" data-code="36330" alt="구례군" data-area-num="jeonnam_05">
										<area shape="poly" coords="479,92,489,89,492,78,500,85,504,91,504,95,513,103,517,108,518,114,513,121,516,128,518,134,510,133,503,130,494,136,487,128,482,122,482,112,483,107,477,99" href="#" data-code="36060" alt="광양시" data-area-num="jeonnam_06">
										<area shape="poly" coords="424,89,421,119,427,123,431,130,428,134,434,137,442,135,448,141,455,144,461,148,474,145,481,144,480,139,482,137,488,137,488,131,485,125,481,120,483,114,483,108,477,100,479,92,474,89,472,86,457,77,458,83,455,89,450,96,445,99,435,96" href="#" data-code="36030" alt="순천시" data-area-num="jeonnam_07">
										<area shape="poly" coords="480,136,480,142,476,151,481,154,485,162,482,168,481,176,482,182,490,183,497,187,495,169,498,163,505,167,511,164,514,172,514,180,509,185,510,190,519,195,522,191,522,178,518,175,520,170,512,164,513,157,516,148,516,140,503,139,500,144,496,143,494,145,488,136" href="#" data-code="36020" alt="여수시" data-area-num="jeonnam_08">
										<area shape="poly" coords="431,160,436,155,440,151,444,151,446,148,455,152,455,157,456,162,452,165,467,182,472,187,472,195,467,198,458,197,460,204,459,209,454,214,449,216,445,220,446,224,441,222,434,216,433,208,423,207,417,206,410,205,409,199,416,194,420,185,427,181,431,172,436,167" href="#" data-code="36350" alt="고흥군" data-area-num="jeonnam_09">
										<area shape="poly" coords="399,183,392,175,386,170,395,163,393,159,396,156,398,144,408,136,405,128,413,118,422,118,431,127,430,134,436,136,441,134,452,141,458,147,457,153,451,151,448,147,438,150,430,161,424,166,422,174,411,171" href="#" data-code="36360" alt="보성군" data-area-num="jeonnam_10">
										<area shape="poly" coords="394,88,389,95,384,100,379,100,375,98,373,105,370,114,374,119,370,134,366,140,374,141,377,145,393,146,405,138,406,125,420,118,423,91,422,73,410,75,402,79,405,88,403,92" href="#" data-code="36370" alt="화순군" data-area-num="jeonnam_11">
										<area shape="poly" coords="320,117,323,119,327,113,327,96,333,93,342,93,352,94,355,98,353,102,363,103,366,101,375,98,373,106,371,112,376,117,371,122,372,134,366,138,358,139,354,133,346,134,341,125,336,128,340,132,336,135,329,130,325,127,322,133,320,140,314,133,317,123" href="#" data-code="36040" alt="나주시" data-area-num="jeonnam_12">
										<area shape="poly" coords="293,80,297,78,301,80,308,76,314,78,327,74,327,68,337,76,336,94,328,95,326,113,322,118,316,118,310,117,309,112,311,109,307,109,305,105,307,100,303,97,304,93,297,91,292,83" href="#" data-code="36430" alt="함평군" data-area-num="jeonnam_13">
										<area shape="poly" coords="287,129,278,124,277,116,282,115,286,112,292,107,286,102,286,95,296,96,297,105,303,100,307,98,308,108,314,113,318,119,320,141,312,158,296,143" href="#" data-code="36420" alt="무안군" data-area-num="jeonnam_14">
										<area shape="poly" coords="296,143,289,149,283,151,300,155,305,152,302,146" href="#" data-code="36010" alt="목포시" data-area-num="jeonnam_15">
										<area shape="poly" coords="290,161,295,157,303,153,310,158,314,153,321,139,322,130,329,126,334,132,343,133,338,126,340,122,347,128,348,132,355,133,363,138,369,137,369,143,362,148,358,157,350,161,336,165,337,172,321,178,318,180,303,167,306,163,296,163,291,166" href="#" data-code="36410" alt="영암군" data-area-num="jeonnam_16">
										<area shape="poly" coords="369,138,374,138,379,143,388,144,398,145,397,158,389,170,392,174,400,185,390,190,386,217,380,222,371,226,366,220,367,207,374,197,368,189,371,186,368,170,361,157,358,154,361,146" href="#" data-code="36380" alt="장흥군" data-area-num="jeonnam_17">
										<area shape="poly" coords="336,165,339,174,342,179,340,189,339,194,342,199,338,205,340,218,348,219,355,193,358,218,369,221,370,206,371,196,367,188,372,185,362,157,351,158" href="#" data-code="36390" alt="강진군" data-area-num="jeonnam_18">
										<area shape="poly" coords="275,160,271,175,273,186,276,194,281,197,291,201,291,206,297,202,303,207,305,224,313,225,312,230,306,235,308,238,313,240,313,246,312,248,313,252,323,246,326,249,329,237,331,230,350,219,340,217,338,204,341,199,338,192,342,180,339,174,321,175,318,180,302,169,291,167,286,172,283,164" href="#" data-code="36400" alt="해남군" data-area-num="jeonnam_19">
										<area shape="poly" coords="333,234,333,242,338,250,346,252,351,252,355,253,355,246,348,241,347,237,342,229" href="#" data-code="36460" alt="완도군" data-area-num="jeonnam_20">
										<area shape="poly" coords="243,227,246,221,254,214,264,204,269,195,269,192,278,196,282,203,286,201,289,209,291,214,289,216,287,223,283,231,279,227,278,234,277,237,274,232,270,234,258,240,250,238" href="#" data-code="36470" alt="진도군" data-area-num="jeonnam_21">
										<area shape="poly" coords="237,92,251,83,259,90,269,92,272,97,274,103,273,109,248,123,251,112,246,111" href="#" data-code="36480" alt="신안군" data-area-num="jeonnam_22">
										<area shape="poly" coords="287,151,288,145,283,139,275,138,280,133,281,130,274,127,271,138,262,140,254,138,245,132,238,124,231,129,224,137,206,161,215,175,224,180,229,195,236,205,244,190,254,186,257,179,255,168,255,160,255,154,251,145" href="#" data-code="36480" alt="신안군" data-area-num="jeonnam_22">
									</map>
								</div>
										
									</div>
								   </div>
                                  <!-- 여기까지  -->
                                </div>
                            </div>
                            <!-- /# card -->
                        </div>
                        <!-- /# column -->
                    </div>
                   
                    <!-- /# row -->

					<div class="row">
                        <div class="col-lg-6">
                            <div class="card nestable-cart">
                                <div class="card-title">
                                    <h4>KWANGJU</h4>
                                    <div class="card-title-right-icon">
                                        <ul>
                                           
                                        </ul>
                                    </div>
                                </div>
                                <div class="Vector-map-js">
                                    <!-- 여기서부터  -->
                                   <div class="card-body">
                                   
									<div class="Vector-map-js">
									
									<div class="allMap">
										<span class="allMap-view"><img src="/population/resources/assets/images/map/kj.png" alt="kj" usemap="#all-map"></span>
										<map name="all-map" id="all-map" class="allMap-point">
											<area shape="poly" coords="48,180,48,183,52,185,57,187,61,184,61,181,58,178,50,177" href="#" alt="광주" data-code="24" data-area-name="kj" data-detail="kj_bg">
										</map>
									</div>
									<div class="mapDetail kj_bg" style="display: block;" data-parent-code="24" data-image="kj_00.png" data-usemap="#kj-map"><!-- djlee 수정 2019-07-15 -->
										<span class="mapDetail-view"><img src="/population/resources/assets/images/map/kj_05.png" usemap="#kj-map" alt="kj_05"></span><!-- djlee 수정 2019-07-15 -->
										<map name="kj-map" id="kj-map" class="mapDetail-point">
											<area shape="poly" coords="221,98,220,183,232,185,243,183,258,184,263,181,279,184,286,183,297,188,307,200,313,219,324,217,343,193,345,178,352,174,357,165,355,158,362,149,358,125,369,120,372,112,387,106,382,79,385,74,370,68,366,64,343,73,326,67,314,60,304,59,303,52,289,40,273,63,271,77,262,83,248,76,235,95" href="#" data-code="24050" alt="광산구" data-area-num="kj_01">
											<area shape="poly" coords="368,63,386,53,389,49,403,43,409,47,422,36,429,36,441,43,443,53,459,71,457,75,463,87,464,99,473,112,496,104,516,121,514,125,505,130,504,159,507,166,502,172,490,168,483,153,472,155,457,146,462,138,445,130,441,134,430,126,422,141,417,131,409,131,404,122,391,121,372,114,372,110,386,105,381,78,384,74,368,69" href="#" data-code="24040" alt="북구" data-area-num="kj_02">
											<area shape="poly" coords="371,113,369,122,361,126,362,152,355,159,356,164,352,173,345,179,343,190,355,198,377,184,389,178,398,170,406,174,408,172,407,153,404,151,406,145,424,140,415,132,407,129,404,123,385,118" href="#" data-code="24020" alt="서구" data-area-num="kj_03">
											<area shape="poly" coords="314,218,324,216,342,191,353,199,375,184,393,177,398,171,403,173,408,172,407,156,404,151,406,145,424,140,440,164,436,166,433,172,427,176,434,192,434,198,411,211,405,206,382,219,358,226,350,237,315,236,305,230,301,223,303,219" href="#" data-code="24030" alt="남구" data-area-num="kj_04">
											<area shape="poly" coords="422,139,440,164,436,168,434,172,427,176,433,193,433,200,443,214,459,217,472,199,490,195,486,181,491,179,495,176,499,170,493,167,483,154,471,153,460,147,461,141,445,129,442,130,430,127,427,134" href="#" data-code="24010" alt="동구" data-area-num="kj_05">
										</map>
									</div>
										
									</div>
								   </div>
                                  <!-- 여기까지  -->
                                </div>
                            </div>
                            <!-- /# card -->
                        </div>
                        <!-- /# column -->

                        <div class="col-lg-6">
                            <div class="card nestable-cart">
                                <div class="card-title">
                                    <h4>JEJU</h4>
                                    <div class="card-title-right-icon">
                                        <ul>  
                                        </ul>
                                    </div>
                                </div>
                                <div class="Vector-map-js">
                                   <!-- 여기서부터  -->
                                   <div class="card-body">
                                   
									<div class="Vector-map-js">
									
								<div class="allMap">
									<span class="allMap-view"><img src="/population/resources/assets/images/map/jeju.png" alt="jeju" usemap="#all-map"></span>
									<map name="all-map" id="all-map" class="allMap-point">
										<area shape="poly" coords="31,237,36,238,40,233,54,231,59,235,60,240,49,246,38,247,35,249,29,243" href="#" alt="제주" data-code="39" data-area-name="jeju" data-detail="jj_bg">
									</map>
								</div>
								<div class="mapDetail jj_bg" style="display: block;" data-parent-code="39" data-image="jeju_00.png" data-usemap="#jj-map"><!-- djlee 수정 2019-07-15 -->
									<span class="mapDetail-view"><img src="/population/resources/assets/images/map/jeju_02.png" usemap="#jj-map" alt="jeju_02"></span><!-- djlee 수정 2019-07-15 -->
									<map name="jj-map" id="jj-map" class="mapDetail-point">
										<area shape="poly" coords="236,171,238,185,242,186,243,182,246,182,251,180,254,180,267,192,267,184,273,178,279,172,286,164,291,163,293,162,293,158,298,156,300,157,302,153,306,154,309,149,312,153,317,153,319,157,328,156,327,150,329,144,333,143,339,144,353,144,364,138,372,137,381,130,388,128,390,123,398,123,400,121,408,122,410,119,412,110,422,110,424,106,427,109,439,101,441,97,449,95,456,88,461,85,469,80,472,74,479,71,477,68,478,64,474,61,473,57,468,54,465,54,462,57,454,55,449,50,447,44,445,42,440,46,434,44,429,43,422,46,411,48,404,48,403,51,400,52,395,56,391,54,388,52,385,55,383,59,378,60,373,62,369,66,363,68,356,74,350,73,344,74,340,74,334,76,325,86,318,87,302,93,290,102,283,105,279,113,271,116,267,123,265,133" href="#" data-code="39010" alt="제주시" data-area-num="jeju_01">
										<area shape="poly" coords="242,185,243,187,241,192,259,212,265,214,272,222,278,226,278,232,283,227,286,230,287,225,288,223,286,219,299,208,308,213,323,205,332,207,340,203,344,210,355,208,360,200,367,202,374,201,378,197,388,197,401,183,419,179,434,174,444,159,459,158,468,142,481,115,485,98,486,82,473,75,459,86,448,95,429,109,421,108,412,112,407,120,389,125,380,131,373,137,362,139,331,145,323,156,308,152,293,158,267,183,264,190,251,180" href="#" data-code="39020" alt="서귀포시" data-area-num="jeju_02">
									</map>
								</div>
										
									</div>
								   </div>
                                  <!-- 여기까지  -->
                                </div>
                            </div>
                            <!-- /# card -->
                        </div>
                        <!-- /# column -->
                    </div>
                    <!-- /# row -->

			<div class="col-lg-12">
							<div class="card nestable-cart">
								<div class="card-title">
									<h4>ULSAN</h4>
									<div class="card-title-right-icon">
										<ul>
										</ul>
									</div>
								</div>
								<!-- 이 아래로 복사  -->
								
								<div class="card-body">

									<div class="Vector-map-js">
									
										<div class="allMap">
											<span class="allMap-view"><img src="/population/resources/assets/images/map/ws.png" alt="ws" usemap="#all-map"></span>
											<map name="all-map" id="all-map" class="allMap-point">
												<area shape="poly" coords="133,161,133,168,142,176,148,161,138,157" href="#" alt="울산" data-code="26" data-area-name="ws" data-detail="us_bg">
											</map>
										</div>
										<div class="mapDetail us_bg" style="display: block;" data-parent-code="26" data-image="ws_00.png" data-usemap="#us-map"><!-- djlee 수정 2019-07-15 -->
											<span class="mapDetail-view"><img src="/population/resources/assets/images/map/ws_03.png" usemap="#us-map" alt="ws_03"></span><!-- djlee 수정 2019-07-15 -->
											<map name="us-map" id="us-map" class="mapDetail-point">
												<area shape="poly" coords="388,32,391,39,389,57,394,62,399,61,409,63,409,75,408,80,409,84,407,95,401,102,393,102,388,101,389,104,391,114,393,117,387,126,388,132,404,141,411,153,423,157,429,161,429,166,434,171,435,179,440,181,446,189,442,194,443,206,439,210,439,214,435,215,434,222,441,231,440,236,435,237,421,247,418,252,412,252,412,249,399,243,402,230,390,219,372,223,363,218,370,206,359,188,345,193,323,174,315,161,316,154,307,154,291,146,270,139,268,136,262,136,262,127,258,122,261,110,272,102,275,94,272,77,281,74,287,64,296,58,295,45,306,34,322,27,342,23,365,25" href="#" data-code="26310" alt="울주군" data-area-num="ws_01">
												<area shape="poly" coords="408,63,410,75,407,80,410,83,406,96,423,91,425,95,431,93,436,113,434,117,434,121,445,128,452,134,460,132,461,120,464,114,475,109,482,109,483,102,487,98,487,89,478,72,477,65,480,60,470,56,454,50,446,48,436,44,430,47,420,57" href="#" data-code="26040" alt="북구" data-area-num="ws_02">
												<area shape="poly" coords="422,90,426,94,431,93,435,112,433,116,435,120,413,120,410,124,406,124,401,120,395,118,392,115,390,104,387,99,393,100,398,101,406,96" href="#" data-code="26010" alt="중구" data-area-num="ws_03">
												<area shape="poly" coords="393,119,386,125,387,132,406,142,407,148,410,154,424,158,428,162,429,166,435,171,435,178,442,178,451,165,448,159,457,150,455,139,446,127,441,126,433,121,413,120,410,122,405,124,400,120" href="#" data-code="26020" alt="남구" data-area-num="ws_04">
												<area shape="poly" coords="453,131,458,131,461,124,464,117,467,112,476,109,481,107,486,111,484,127,482,134,479,153,475,159,468,161,463,167,460,149,455,148,456,141,452,133" href="#" data-code="26030" alt="동구" data-area-num="ws_05">
											</map>
										</div>

										</div>
									</div>
								</div>
							<!-- /# card -->
							
							<!--이 위로 복사   -->
						</div>
						<!--# column  -->
					</div>
					<!-- /# row -->
               

                </section>
			</div>
		
		  <!--  /# main  -->
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