<!DOCTYPE html>
<html lang="ko">

<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Focus Admin: Widget</title>

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
    <link href="/population/resources/assets/css/lib/bootstrap.min.css" rel="stylesheet">
    <link href="/population/resources/assets/css/lib/helper.css" rel="stylesheet">
    <link href="/population/resources/assets/css/style.css" rel="stylesheet">
</head>

<body class="bg-primary">

    <div class="unix-login">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <div class="login-content">
                        <div class="login-logo">
                            <a><span>회원가입</span></a>
                        </div>
                        <div class="login-form">
                            <h4>회원기본정보</h4>
                            <form id="registerform"
                            	  action="register.action" method="post">
                                <div class="form-group">
                                    <label>아이디 (ID)</label>
                                    <input type="text" id="memberId" name="memberId" class="form-control" placeholder="아이디 (ID) 입력">
                                </div>
                                <div class="form-group">
                                    <label>비밀번호</label>
                                    <input type="password" id="passwd" name="passwd" class="form-control" placeholder="비밀번호">
                                </div>
                                <div class="form-group">
                                    <label>비밀번호 확인</label>
                                    <input type="password" id="confirm" name="confirm" class="form-control" placeholder="비밀번호 확인">
                                </div>
                                <div class="form-group">
                                    <label>이메일</label>
                                    <input type="text" id="email" name="email" class="form-control" placeholder="이메일">
                                </div>
                         
                                <button input id="register" type="button" value="등록" class="btn btn-primary btn-flat m-b-30 m-t-30">등록</button>
                              
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script type="text/javascript">
	$(function() {
		
		$('#register').on('click', function(event) {
			
			/* 정규표현식 사용하면 더 편함, or 자바스크립트 정규표현식
			var memberId = $('#memberId').val();
			if (memberId.length < 6 || memberId.length > 12) {
				alert('아이디 형식 오류 (6 ~ 12개의 영문자 또는 숫자)')
				return;
			}*/
			
			// 문자열의 형식을 분석, 검증하는 도구 -> 정규 표현식 (regular expression)
			var re = /^[A-Za-z0-9]{6,12}$/;
			var memberId = $('#memberId').val();
			if ( !re.test(memberId) ) {
				alert( '아이디 형식 오류 (6 ~ 12개의 영문자 또는 숫자)' )
				return;
			}
			
			re = /[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]$/i;
			var email = $('#email').val();
			if ( !re.test(email) ) {
				alert( '이메일 형식 오류' )
				return;
			}
			
			$('#registerform').submit(); // form을 서버로 전송
			
		});
	});
	</script>

</body>

</html>