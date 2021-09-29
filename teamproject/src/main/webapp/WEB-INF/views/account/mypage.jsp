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
                                <h1>마이페이지</h1>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /# row -->
                <section id="main-content">
                    
                   <div class="card">
                         <div class="card-header py-3">
                             <span class="m-0 font-weight-bold text-primary">내 정보</span>
                         </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-bordered">
                                            <thead>
                                                <td>아이디(ID)</td>
                                                <td>이메일</td>
                                                <td>회원 등급</td>
                                                <td>회원 등록일</td>
                                            </thead>
                                            <tbody>
                                    			<div>
                                    			<tr>
		                                            <td>${ member.memberId }</td>
		                                            <td>${ member.email }</td>
		                                            <td>${ member.userType }</td>
		                                            <td>${ member.regDate }</td>
		                                        </tr>
		                                        </div>
		                                        
												<div style="text-align:right">
													<a id="edit-button" type="button" class="btn btn-success" style="color:white;" >수정</a>
													&nbsp
													<a id="delete-button" type="button" class="btn btn-success" style="color:white;" >회원탈퇴</a>
												</div>
                                            
                                                 <%-- loginuser 정보를 활용하여 마이페이지 정보 보여주기 --> 
		                                            <!-- <tr>
		                                            	<td>아이디(ID)</td>
		                                            	<td>${ loginuser.memberId }</td>
		                                            </tr>
		                                            <tr>
		                                            	<td>이메일</td>
		                                            	<td>${ loginuser.email }</td>
		                                            </tr>
		                                            <tr>
		                                            	<td>회원 등급</td>
		                                            	<td>${ loginuser.userType }</td>
		                                            </tr>
		                                            <tr>
		                                            	<td>회원 등록일</td>
		                                            	<td>${ loginuser.regDate }</td>
		                                            </tr>--%>
		                                        
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
    
    <jsp:include page="/WEB-INF/views/modules/common-js1.jsp" />

	<script type="text/javascript">
	/* $(function() {
		$(".form-group input").attr('readonly', true);
		
		$('#edit-button').on('click', function(event){
			location.href = "edit?memberId=${ member.memberId }";
		});
		
		$('#delete-button').on('click', function(event){
			var yes = confirm('${ member.memberId }님 회원을 탈퇴하시겠습니까?');
			if (yes) {
			location.href = "delete?memberId=${ member.memberId }";
			}
		});
		
	}); */
	</script>

    <!-- Page level plugins -->
    <script src="/population/resources/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="/population/resources/js/demo/chart-area-demo.js"></script>
    <script src="/population/resources/js/demo/chart-pie-demo.js"></script>
    
    <!-- jquery vendor -->
    <script src="/population/resources/assets/js/lib/jquery.min.js"></script>
    <script src="/population/resources/assets/js/lib/jquery.nanoscroller.min.js"></script>
    <!-- nano scroller -->
    <script src="/population/resources/assets/js/lib/menubar/sidebar.js"></script>
    <script src="/population/resources/assets/js/lib/preloader/pace.min.js"></script>
    <!-- sidebar -->
    
    <!-- bootstrap -->
    <script src="/population/resources/assets/js/lib/bootstrap.min.js"></script><script src="/population/resources/assets/js/scripts.js"></script>
    <!-- scripit init-->

</body>

</html>