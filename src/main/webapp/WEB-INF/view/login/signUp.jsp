<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="project_jun/css/signUp.css">
<link rel="stylesheet" href="project_jun/css/header.css">
</head>
<body>
	<div class="container">
		<header>		   
			<jsp:include page="/WEB-INF/view/include/header.jsp"/> 
		</header>
		<section id="signUpForm">
			<h2>회원 가입</h2>		
			<form action="signUp" method="post">
			<fieldset id="signUpBtn">
				<table>
					<tr>
						<td class="td_left"><label for="userId">회원계정</label></td>
						<td class="td_right"><input type="text" name="userId" id="userId" required /></td>
					</tr>
					<tr>
						<td class="td_left"><label for="userPw">비밀번호</label></td>
						<td class="td_right"><input type="password" name="userPw" id="userPw" required /></td>
					</tr>
					<tr>
						<td class="td_left"><label for="confirmUserPw">비밀번호확인</label></td>
						<td class="td_right"><input type="password" name="confirmUserPw" id="confirmUserPw" required /></td>
					</tr>
					<tr>
						<td class="td_left"><label for="userName">회원성명</label></td>
						<td class="td_right"><input type="text" name="userName" id="userName" required /></td>
					</tr>
					<tr>
						<td class="td_left"><label for="address">주소</label></td>
						<td class="td_right"><input type="text" name="address" id="address" required /></td>
					</tr>
					<tr>
						<td class="td_left"><label for="userPhone">회원H.P</label></td>
						<td class="td_right"><input type="text" name="userPhone" id="userPhone" required /></td>
					</tr>
					<tr>
						<td class="td_left"><label for="email">이메일</label></td>
						<td class="td_right"><input type="text" name="email" id="email" required /></td>
					</tr>				
				</table>			
				<input type="submit" value="가입하기" id="submit">			
				</fieldset>
			</form>
		</section>		
	</div>
</body>
</html>