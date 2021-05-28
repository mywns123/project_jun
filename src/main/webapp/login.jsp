<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
<link rel="stylesheet" href="project_jun/css/login.css">
<link rel="stylesheet" href="project_jun/css/header.css">
</head>
<body>
	<div class="container">
		<header>		   
			<jsp:include page="/WEB-INF/view/include/header.jsp"/> 
		</header>
		<section id="loginFormArea">
			<h1>로그인</h1>
			<form action="login" method="post">
			<fieldset id="loginBtn">
				<table>
					<tr>
						<td class="td_left"><label for="id">아이디:</label></td>
						<td class="td_right"><input type="text" name="id" id="id"></td>
					</tr>
					<tr>
						<td class="td_left"><label for="passwd">비밀번호:</label></td>
						<td class="td_right"><input type="password" name="passwd" id="passwd"></td>
					</tr>						
				</table>				
				<input type="submit" value="로그인" id="login"/>
			</fieldset>
			<fieldset id="aBtn">
				<p>아직 계정이 없으신가요??<a href="project_jun/login/signUp">회원가입하기</a></p>
				<p><a href="#">아이디/비밀번호를 잊으셨나요??</a>
			</fieldset>	
			</form>	
		</section>		
	</div>
</body>
</html>