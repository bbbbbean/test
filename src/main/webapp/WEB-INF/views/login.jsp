<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="resources/css/login.css">

</head>

<body>
    <form action="${pageContext.request.contextPath}/login" method="post">
        <div class="login-continer">
            <div class="login-tit">
                <span>회원 로그인</span>
                ${message}
            </div>
            <div class="login-id">
                <input type="text" id="userid" name="email" placeholder="아이디" >
            </div>
            <div class="login-pw">
                <input type="password" id="pwd" name="password" placeholder="비밀번호">
            </div>
            <div class="login-check">
                <input type="checkbox" id="remember-check"> <span>아이디 저장하기</span>
            </div>
            <div class="login-btn">
                <input type="submit" style="width: 100%; height: 100%; background-color: #6ec3ff; border: none">
            </div>
            <div class="login-menu">
                <a href="./signup">
                    <span>회원가입</span>
                </a>
                <span>|</span>
                <a href="javascript:void(0)">
                    <span>아이디찾기</span>
                </a>
                <span>|</span>
                <a href="javascript:void(0)">
                    <span>비밀번호찾기</span>
                </a>
            </div>
        </div>
    </form>
</body>

</html>