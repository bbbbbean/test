<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>SIGNUP</title>
    <link rel="stylesheet" href="resources/css/signup.css">
</head>

<body>
    <section class="login-section">
        <img src="../../static/image/로고.png" alt="logo">
        <h2>임시 회원가입 페이지입니다.<br>사용하고 있는 비밀번호를 입력하지마세요.</h2>
        <form id="login-form" action="${pageContext.request.contextPath}/signup" method="post">
            <label>
            ${name}
                <input type="text" id="name" name="name" placeholder="이름">
            </label>
            <label>
            ${nickname}
                <input id="nickname" type="text" name="nickname" placeholder="사용자 닉네임">
            </label>
            <label>
            ${password}
                <input type="password" id="pwd" name="password" placeholder="비밀번호">
            </label>
            <label>
            ${email}
                <input id="email-input" type="email" name="email" placeholder="이메일">
            </label>
            <div class="email-auth-pack">
                <label>
                    <input id="email-auth-input" type="text" name="email-auth" placeholder="인증번호 입력">
                </label>
                <label>
                    <input id="email-auth-btn" type="button" value="인증번호전송">
                </label>
            </div>
            <input type="submit" value="회원가입" />
        </form>

    </section>
    <section class="no-account-section">
        <span>계정이 있으신가요?</span>
        <a href="./login">로그인</a>
    </section>
</body>

</html>