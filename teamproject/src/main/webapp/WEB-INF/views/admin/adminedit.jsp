<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>adminpage edit</title>
    
    <jsp:include page="/WEB-INF/views/modules/common-css.jsp" />

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

       <jsp:include page="/WEB-INF/views/modules/sidebar.jsp" />

        	<!-- Content Wrapper -->
        	<div id="content-wrapper" class="d-flex flex-column">

            	<!-- Main Content -->
            	<div id="content">

                	<jsp:include page="/WEB-INF/views/modules/topbar.jsp" />

                		<!-- Begin Page Content -->
                		<div class="container-fluid" style="width:86%; float:right">

			               <!-- Page Heading -->
			               <br>
			               <h1 class="h3 mb-2 text-gray-800">&nbsp;&nbsp;&nbsp;&nbsp;관리자 페이지</h1>
			               <br>

				           	<div class="card shadow mb-4">
				            	<div class="card-header py-3">
				                	<span class="m-0 font-weight-bold text-primary">회원정보 수정</span>
                  				</div>
                  				
				                  <div class="card-body">
				                  
				                  <div class="table-responsive">
				                  <div class="table table-striped">
				                  
				                      <form id="update-form" action="update" method="post">	
	                        
				                        <div class="form-group">
				                        <br>
				                           <label>&nbsp;&nbsp;&nbsp;아이디</label> 
				                           &nbsp;&nbsp;<input class="form-control" id='memberId' name='memberId' value='${ member.memberId }' readonly="readonly">
				                        </div>
				                        
				                        <div class="form-group">
				                           <label>&nbsp;&nbsp;&nbsp;비밀번호</label> 
				                           &nbsp;&nbsp;<input class="form-control" id='passwd' name='passwd' value='${ member.passwd }'>
				                        </div>
				                        
				                        <div class="form-group">
				                           <label>&nbsp;&nbsp;&nbsp;이메일</label> 
				                           &nbsp;&nbsp;<input class="form-control" id='email' name='email' value='${ member.email }'>
				                        </div>
				                        
				                        <div class="form-group">
				                           <label>&nbsp;&nbsp;&nbsp;사용자 구분</label> 
				                           &nbsp;&nbsp;<input class="form-control" id='userType' name='userType' value='${ member.userType }'>
				                        </div>
				                        
				                        <div class="form-group">
				                           <label>&nbsp;&nbsp;&nbsp;등록 일자</label> 
				                           &nbsp;&nbsp;<input class="form-control" id='regDate' name='regDate' value='${ member.regDate }' readonly="readonly">
				                        </div>
				                        
				                        <div class="form-group">
				                           <label>&nbsp;&nbsp;&nbsp;탈퇴 여부</label> 
				                           <br>
				                           &nbsp;&nbsp;<input type="checkbox" id='active' name='active' ${ member.active ? "checked" : "" }>활성 사용자 여부
				                           </div>
				
				                        &nbsp;&nbsp;&nbsp;<button id="update-button" type="button" class="btn btn-success">수정</button>
				                        &nbsp;<button id="tolist-button" type="button" class="btn btn-success">목록</button>
				                        &nbsp;<button id="delete-button" type="button" class="btn btn-success" style="color:white">삭제</button>
				                     </form>
				               </div>
				            </div>
						</div>
                	</div>
                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <%@ include file="/WEB-INF/views/modules/footer.jsp" %>

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <jsp:include page="/WEB-INF/views/modules/common-js.jsp" />

    <script type="text/javascript">
    $(function() {
       $('#update-button').on('click', function(event) {
          
          // 필요한 경우 입력 데이터 유효성 검사 수행
          
          // <form id="update-form" ...> ... </form> 요소를 서버로 전송
          $('#update-form').submit();
          
       });
      $('#tolist-button').on('click', function(event) {
         location.href = "adminpage";
      });
      
      $('#delete-button').on('click', function(event){
          var yes = confirm('${ member.memberId }번 회원을 삭제하겠습니까?');
          if (yes) {
          location.href = "delete?memberId=${ member.memberId }";
          }
       });
    });
    </script>

</body>

</html>