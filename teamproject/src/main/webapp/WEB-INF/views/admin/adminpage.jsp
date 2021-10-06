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
                                <h1>관리자 페이지</h1>
                            </div>
                        </div>
                    </div>
                    <!-- /# column -->
                    <div name="admin" class="col-lg-4 p-l-0 title-margin-left">
                        <div class="page-header">
                            <div class="page-title">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="/population/admin/adminedit">회원 관리</a></li>
                                    <li class="breadcrumb-item active">회원정보를 수정합니다</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <!-- /# column -->
                </div>
                <!-- /# row -->
                <section id="main-content" align="center">
                   	<div class="col-lg-12">
                   		<div class="card">
                        	<div class = "card-body">
                        		<div class="table-responsive">
                        			<table class="table table-striped">
                        				<thead>
                        					<tr align="center">
			                        			<th><b>아이디</b></th>
			                        			<th><b>이메일</b></th>
			                        			<th><b>사용자구분</b></th>
			                        			<th><b>등록일자</b></th>
                        					</tr>
                        				</thead>
                        				<tbody>
			                        		<c:forEach var="member" items="${members}" >
			                        			<tr align="center">
				                        		<td>
				                        			<a href="/population/admin/adminedit?memberId=${member.memberId}">${member.memberId}</a>
				                        		</td>
				                        		<td>${member.email}</td>
				                        		<td>${member.userType}</td>
				                        		<td>${member.regDate}</td>
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
</div>
      <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    
    <jsp:include page="/WEB-INF/views/modules/common-js1.jsp" />

    <!-- Page level plugins -->


    <!-- Page level custom scripts -->

    
    <!-- jquery vendor -->

    <!-- nano scroller -->

    <!-- sidebar -->
    
    <!-- bootstrap -->

    <!-- scripit init-->

</body>

</html>