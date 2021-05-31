<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<form action="signUp" method="post">
			<fieldset>
				<h1>가입이 완료되었습니다.</h1>				
			</fieldset>			
			<a href="project_jun/login/signUp"><button>로그인화면으로</button></a>
			<a href="project_jun/login/signUp"><button>메인으로</button></a>					
		</form>				
		</section>		
	</div>
</body>
</html>