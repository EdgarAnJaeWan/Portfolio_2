<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="utf-8" %>

<div class="header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="float-left">
                        <div class="hamburger sidebar-toggle">
                            <span class="line"></span>
                            <span class="line"></span>
                            <span class="line"></span>
                        </div>
                    </div>
                    <div class="float-right">
                        <div class="dropdown dib">
                          
                        </div>
                        <div class="dropdown dib">

						<c:choose>
							<c:when test="${ empty loginuser }">
								<a href="/population/account/login.action">로그인</a>
								<a href="/population/account/register.action">회원가입</a>
							</c:when>
							<c:otherwise>
                         ${ loginuser.memberId }님 환영합니다.
                         <a href="/population/account/logout.action">로그아웃</a>
							</c:otherwise>
						</c:choose>


					</div>
                        <div class="dropdown dib">
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
