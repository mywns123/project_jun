<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/login.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/header.css">
</head>
<body>
	<div class="container">
		<header>		   
			<jsp:include page="/WEB-INF/view/include/header.jsp"/> 
		</header>
		<section id="loginFormArea">
			<h1>로그인</h1>
			<form:form modelAttribute="loginCommand">
			<form:errors />
			<fieldset id="loginBtn">
					<p>
						<label>아이디:<br><form:input path="userId"/><form:errors path="userId" /></label>
					</p>					
					<p>
						<label>비밀번호:<br><form:password path="userPw"/><form:errors path="userPw" /></label>
					</p>		
					<p>
						<label>아이디 기억하기:<br><form:checkbox path="rememberUserId"/></label>
					</p>
				<input type="submit" value="로그인" id="login"/>
			</fieldset>
			<fieldset id="aBtn">
				<p>아직 계정이 없으신가요??<a href="<c:url value='/login/signUp1'/>">회원가입하기</a></p>
				<p><a href="#">아이디/비밀번호를 잊으셨나요??</a>
			</fieldset>	
			</form:form>	
		</section>		
	</div>
</body>
</html>