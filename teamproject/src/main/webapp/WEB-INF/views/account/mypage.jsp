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
                                <h1>???????????????</h1>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /# row -->
                <section id="main-content">
                    
                   <div class="card">
                         <div class="card-header py-3">
                             <span class="m-0 font-weight-bold text-primary">??? ??????</span>
                         </div>
                         <div class="card-body">
                             <div class="table-responsive">
                                 	<div class="edit-form" role="form">
			                            <h4>??????????????????</h4>
			                            <form id="edit-form" action="update" method="post">
			                                <div class="form-group1">
			                                    <label>????????? (ID)</label>
			                                    <input type="text" id="memberId" name="memberId" class="form-control" value="${ member.memberId }">
			                                </div>
			                                <div class="form-group2">
			                                    <label>?????????</label>
			                                    <input type="text" id="email" name="email" class="form-control" value="${ member.email }">
			                                </div>
			                                <div class="form-group1">
			                                    <label>?????? ??????</label>
			                                    <input type="text" id="userType" name="userType" class="form-control" value="${ member.userType }">
			                                </div>
			                                <div class="form-group1">
			                                    <label>?????? ?????????</label>
			                                    <input type="text" id="regDate" name="regDate" class="form-control"value="${ member.regDate }">
			                                </div>
			                         
			                                <button id="edit-button" class="btn btn-primary btn-flat m-b-30 m-t-30">??????</button>
			                                <button id="delete-button" class="btn btn-primary btn-flat m-b-30 m-t-30">?????? ??????</button>
			                            </form>
			                        </div>
                                   
                                     
                                          <%-- loginuser ????????? ???????????? ??????????????? ?????? ???????????? --> 
                                       <!-- <tr>
                                       	<td>?????????(ID)</td>
                                       	<td>${ loginuser.memberId }</td>
                                       </tr>
                                       <tr>
                                       	<td>?????????</td>
                                       	<td>${ loginuser.email }</td>
                                       </tr>
                                       <tr>
                                       	<td>?????? ??????</td>
                                       	<td>${ loginuser.userType }</td>
                                       </tr>
                                       <tr>
                                       	<td>?????? ?????????</td>
                                       	<td>${ loginuser.regDate }</td>
                                       </tr>--%>
                                    
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
		$(".form-group1 input").attr('readonly', true);
	
		$('#edit-button').on('click', function(event) {
			var yes = confirm('?????????????????????????');
    		if (yes) {
			$('#edit-form').submit();
			location.href = "mypage?memberId=${ member.memberId }";
			}
		});
		
		$('#delete-button').on('click', function(event) {
			
			//???????????? ?????? ??????
			event.preventDefault();
			event.stopPropagation();
			
			var yes = confirm('${ member.memberId }??? ????????? ?????????????????????????');
			if (yes) {
				location.href = "delete?memberId=${ member.memberId }";
			}
		});
	
	</script>
	
    <!-- Page level plugins -->
  
    <!-- scripit init-->

</body>

</html>