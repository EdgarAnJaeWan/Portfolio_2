<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="utf-8" %>
    
<div class="sidebar sidebar-hide-to-small sidebar-shrink sidebar-gestures">
        <div class="nano">
            <div class="nano-content">
                <ul>
                    <div class="logo">
                            <!-- <img src="/population/resources/assets/images/logo.png" alt="" /> --><span>POPULATION</span></a></div>
                    <li class="label"></li>
                        <ul>
                            <li><a href="/population/"><i class="ti-bar-chart-alt"></i> 메인 페이지</a></li>
                        </ul>
                    </li>                    

                    <li class="label">차트</li>
                    
                    <li><a class="sidebar-sub-toggle"><i class="ti-home"></i> 행정구역별  <span
                                class="sidebar-collapse-icon ti-angle-down"></span></a>
                        <ul>
                            <li><a href="chart-flot.html"><i class="ti-layout-grid4-alt"></i> 통계표</a></li>
                            <li><a href="chart-morris.html"><i class="ti-panel"></i> 그래프</a></li>
                        </ul>
                    </li>            

                    <li><a class="sidebar-sub-toggle"><i class="ti-home"></i> 세대별  <span
                                class="sidebar-collapse-icon ti-angle-down"></span></a>
                                
                        <ul>
                            <li><a href="/population/household/chart"><i class="ti-layout-grid4-alt"></i>  통계표 </a></li>
                          <li><a href="/population/household/graph"><i class="ti-panel"></i> 그래프 </a></li>
                        </ul>
                    </li>
                    
                    <li><a class="sidebar-sub-toggle"><i class="ti-home"></i> 남여별 인구  <span
                                class="sidebar-collapse-icon ti-angle-down"></span></a>
                        <ul>
                            <li><a href="/population/gender.action"><i class="ti-layout-grid4-alt"></i> 통계표</a></li>
                    <li><a href="app-profile.html"><i class="ti-panel"></i> 그래프</a></li>
                        </ul>
                    </li>
                    
 					<li class="label">커뮤니티</li>
                    <li><a href="/population/board/list"><i class="ti-view-list-alt"></i> 게시판 </a></li>                                       
                    
                    <li class="label">메뉴얼</li>

	
					<c:choose>
						<c:when test="${ empty loginuser }">
							<li><a href="/population/account/login.action"><i class="ti-user"></i>로그인</a></li>
							<li><a href="/population/account/register"><i
									class="ti-user"></i>회원가입</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="/population/account/logout.action"><i class="ti-user"></i>로그아웃</a></li>
						</c:otherwise>
					</c:choose>
	
				  <li><a href="../documentation/index.html"><i class="ti-file"></i> 관리자 페이지</a></li>
                  <!-- <li><a href="/population/account/logout.action">로그아웃</a></li> -->
                </ul>
            </div>
        </div>
    </div>
    <!-- /# sidebar -->

