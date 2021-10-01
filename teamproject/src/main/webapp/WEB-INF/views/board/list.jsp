<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Population Board</title>

    <!-- ================= Favicon ================== -->
    <!-- Standard -->
    <link rel="shortcut icon" href="http://placehold.it/64.png/000/fff">
    <!-- Retina iPad Touch Icon-->
    <link rel="apple-touch-icon" sizes="144x144" href="http://placehold.it/144.png/000/fff">
    <!-- Retina iPhone Touch Icon-->
    <link rel="apple-touch-icon" sizes="114x114" href="http://placehold.it/114.png/000/fff">
    <!-- Standard iPad Touch Icon-->
    <link rel="apple-touch-icon" sizes="72x72" href="http://placehold.it/72.png/000/fff">
    <!-- Standard iPhone Touch Icon-->
    <link rel="apple-touch-icon" sizes="57x57" href="http://placehold.it/57.png/000/fff">

    <!-- Styles -->
    <link href="/population/resources/assets/css/lib/font-awesome.min.css" rel="stylesheet">
    <link href="/population/resources/assets/css/lib/themify-icons.css" rel="stylesheet">
    <link href="/population/resources/assets/css/lib/menubar/sidebar.css" rel="stylesheet">
    <link href="/population/resources/assets/css/lib/bootstrap.min.css" rel="stylesheet">
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
                                <h1>게시판</h1>
                            </div>
                        </div>
                    </div>
                    <!-- /# column -->
                    <div name="board" class="col-lg-4 p-l-0 title-margin-left">
                        <div class="page-header">
                            <div class="page-title">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">공지사항</a></li>
                                    <li class="breadcrumb-item active">질의 및 응답</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <!-- /# column -->
                </div>
                <!-- /# row -->
                <section id="main-content">
                    
                   <div class="card">
                         <div class="card-header py-3">
                             <span class="m-0 font-weight-bold text-primary">글 목록</span>
                             <a href="write" class="btn btn-primary btn-sm" style="float:right">글 쓰기</a>
                             <%-- interceptor 미적용 구문
                             <c:choose>
			            <c:when test = "${ empty loginuser }">
			               <a href="/population/account/login.action" class="btn btn-primary btn-sm" style="float:right">글 쓰기</a>
			            </c:when>
			            <c:otherwise>
			                <a href="write" class="btn btn-primary btn-sm" style="float:right">글 쓰기</a>
			            </c:otherwise>
			            </c:choose> --%>
                             <div style="clear:both" />
                         </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>글번호</th>
                                                    <th>제목</th>
                                                    <th>작성자</th>
                                                    <th>작성일자</th>
                                                    <th>조회수</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="board" items="${ boards }">
		                                        <tr>
		                                            <td>${ board.boardNo }</td>
		                                            <td>
		                                            	<c:choose>
		                                            		<c:when test="${ not board.deleted }" >
		                                            		<a href="detail?boardNo=${ board.boardNo }">${ board.title }</a>
		                                            		</c:when>
		                                            		<c:otherwise>
		                                            		<span style="color:lightgray">${ board.title } [삭제된 글]</span>
		                                            		</c:otherwise>
		                                            	</c:choose>
		                                            	
		                                            </td>
		                                            <td>${ board.writer }</td>
		                                            <td>${ board.regDate }</td>
		                                            <td>${ board.readCount }</td>
		                                        </tr>
                                    			</c:forEach>
                                    </tbody>
                                </table>
                             </div>
                          </div>
                       </div>
                    </div>
                    <!-- /# row -->

                   <%@ include file="/WEB-INF/views/modules/footer.jsp" %>
                </section>
            </div>
        </div>

		<a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>
    
    <jsp:include page="/WEB-INF/views/modules/common-js1.jsp" />

    <!-- scripit init-->

</body>

</html>