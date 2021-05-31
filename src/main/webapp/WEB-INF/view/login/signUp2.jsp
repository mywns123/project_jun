<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
		<header>		   
			<jsp:include page="/WEB-INF/view/include/header.jsp"/> 
		</header>
		<section id="signUpForm">		
			<fieldset>
				<h1> 가입이 완료되었습니다.</h1>				
			</fieldset>			
			<a href="<c:url value='/login/login'/>"><button>로그인화면으로</button></a>
			<a href="<c:url value='/main'/>"><button>메인으로</button></a>			
		</section>		
	</div>
</body>
</html>