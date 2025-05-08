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
		${userDTO.email}
	</p>
	<p>
		NAME :
		${userDTO.name}
	</p>
	<p>
		NICKNAME :
		${userDTO.nickname}
	</p>
	<p>
		PASSWORD :
		${userDTO.password}
	</p>
	<p>
		ROLE :
		${userDTO.role}
	</p>
	<a href="${pageContext.request.contextPath}/update">정보수정</a>
	<a href="${pageContext.request.contextPath}/remove?email=<sec:authentication property="principal.userDto.email" />">회원탈퇴</a>
	<a href="${pageContext.request.contextPath}/logout">로그아웃</a>
</body>
</html>