<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>HOME</h1>
	<p>
		EMAIL :
		<sec:authentication property="principal.userDto.email" />
	</p>
	<p>
		NAME :
		<sec:authentication property="principal.userDto.name" />
	</p>
	<p>
		NICKNAME :
		<sec:authentication property="principal.userDto.nickname" />
	</p>
	<p>
		PASSWORD :
		<sec:authentication property="principal.userDto.password" />
	</p>
	<p>
		ROLE :
		<sec:authentication property="principal.userDto.role" />
	</p>
	<a href="${pageContext.request.contextPath}/update">정보수정</a>
	<a href="${pageContext.request.contextPath}/remove?email=<sec:authentication property="principal.userDto.email" />">회원탈퇴</a>
	<a href="${pageContext.request.contextPath}/logout">로그아웃</a>
</body>
</html>