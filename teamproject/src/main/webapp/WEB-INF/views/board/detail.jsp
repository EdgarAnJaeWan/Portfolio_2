<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Dashboard</title>
    
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
					<h1 class="h3 mb-2 text-gray-800">게시판</h1>
					<br>

					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<span class="m-0 font-weight-bold text-primary">글 상세 보기</span>
						</div>
						<div class="card-body">

							<div class="form-group">
								<label>글번호</label> 
								<input class="form-control" id='boardNo' name='boardNo' value="${ board.boardNo }">
							</div>

							<div class="form-group">
								<label>제목</label> 
								<input class="form-control" id='title' name='title' value="${ board.title }">
							</div>

							<div class="form-group">
								<label>내용</label>
								<textarea class="form-control" rows="`3" 
									id='content' name='content'>${ board.content }</textarea>
							</div>

							<div class="form-group">
								<label>작성자</label> 
								<input class="form-control" id='writer'	name='writer' value="${ board.writer }">
							</div>

							<div class="form-group">
								<label>작성일자</label> 
								<fmt:formatDate var="formattedRegDate" value="${ board.regDate }" pattern="yyyy-MM-dd HH:mm:ss" />
								<input class="form-control" id='regDate' value="${ formattedRegDate }">
							</div>

							<div class="form-group">
								<label>조회수</label> 
								<input class="form-control" id='readCount' value="${ board.readCount }">
							</div>
							
							<c:choose>
								<c:when test="${ loginuser == board.writer }">
									<a id="edit-button" type="button" class="btn btn-success" style="color:white">수정</a>
									<a id="delete-button" type="button" class="btn btn-success" style="color:white">삭제</a>
									<button id="tolist-button" type="button" class="btn btn-success">목록</button>
								</c:when>
								<c:otherwise>
                         			<button id="tolist-button" type="button" class="btn btn-success">목록</button>
								</c:otherwise>
							</c:choose>	
							<!-- <a id="edit-button" type="button" class="btn btn-success" style="color:white">수정</a>
							<a id="delete-button" type="button" class="btn btn-success" style="color:white">삭제</a>
							<button id="tolist-button" type="button" class="btn btn-success">목록</button> -->

						</div>
					</div>

					<br>
					<br>
					<br>
					<br>
					<br>

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
		$(".form-group input, .form-group textarea").attr('readonly', true);
		
		$('#edit-button').on('click', function(event){
			location.href = "edit?boardNo=${ board.boardNo }";
		});
		
		$('#delete-button').on('click', function(event){
			var yes = confirm('${ board.boardNo }번 게시글을 삭제하겠습니까?');
			if (yes) {
			location.href = "delete?boardNo=${ board.boardNo }";
			}
		});
		
		$('#tolist-button').on('click', function(event){
			location.href = "list";
		});
		
		
	});
	</script>

</body>

</html>