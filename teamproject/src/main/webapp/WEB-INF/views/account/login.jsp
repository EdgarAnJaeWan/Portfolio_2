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
                            <a><span>로그인</span></a>
                        </div>
                        <div class="login-form">
                            <h4>로그인</h4>
                            <form action="login" method="post">
                                <div class="form-group">
                                    <label>아이디</label>
                                    <input type="text" name="memberId" class="form-control" placeholder="아이디(ID) 입력">
                                </div>
                                <div class="form-group">
                                    <label>비밀번호</label>
                                    <input type="password" name="passwd" class="form-control" placeholder="비밀번호 입력">
                                </div>
                                
                                <button type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30">로그인</button>
                                
                                <div class="register-link m-t-15 text-center">
                                    <p>아이디가 없으신가요 ? <a href="register"> 여기를 클릭</a></p>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>

</html>