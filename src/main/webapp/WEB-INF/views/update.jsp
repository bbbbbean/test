<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<title>UPDATE</title>
<link rel="stylesheet" href="resources/css/signup.css">
</head>

<body>
	<section class="login-section">
		<img src="../../static/image/로고.png" alt="logo">
		<h2>
			회원정보 수정<br>
			<form id="login-form"action="${pageContext.request.contextPath}/update" method="post">
				<label>EMail</label>
				<input id="email-input" type="email" name="email" readonly placeholder="이메일" value="<sec:authentication property="principal.userDto.email" />"/>
				<label>NAME</label>
				<input type="text" id="name" name="name"placeholder="이름" value="<sec:authentication property="principal.userDto.name" />" />
				<label>NickName</label>
				<input id="nickname" type="text" name="nickname" placeholder="사용자 닉네임" value="<sec:authentication property="principal.userDto.nickname" />" />
				<input type="submit" value="수정완료" />
			</form>
	</section>
</body>

</html>