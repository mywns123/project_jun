<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/signUp.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/header.css">
</head>
<body>
	<div class="container">
		<header>		   
			<jsp:include page="/WEB-INF/view/include/header.jsp"/> 
		</header>
		<section id="signUpForm">
			<h2>회원 가입</h2>		
			<form:form action="signUp2" modelAttribute="registerRequest">			
			<fieldset id="signForm">
				<p>
					<label> 회원계정 :
					<form:input path="userId" /> 
					<form:errors path="userId" />
					</label>
				</p>
				<p>
					<label> 비밀번호 :
					<form:password path="userPw" /> 
					<form:errors path="userPw" />
					</label>
				</p>
				<p>
					<label> 비밀번호확인 :
					<form:password path="confirmUserPw" /> 
					<form:errors path="confirmUserPw" />
					</label>
				</p>
				<p>
					<label> 회원성명 :
					<form:input path="userName" /> 
					<form:errors path="userName" />
					</label>
				</p>
				<p>
					<label> 주소 :
					<form:input path="address" /> 
					<form:errors path="address" />
					</label>
				</p>
				<p>
					<label> 상세주소 :
					<form:input path="detailAddress" /> 
					<form:errors path="detailAddress" />
					</label>
				</p>
				<p>
					<label> 회원H.P :
					<form:input path="userPhone" /> 
					<form:errors path="userPhone" />
					</label>
				</p>
				<p>
					<label> 이메일 :
					<form:input path="email" /> 
					<form:errors path="email" />
					</label>
				</p>
				<p>
					<label> 계좌번호 :
					<form:input path="bankAccount" /> 									
					<form:errors path="bankAccount" />
					</label>
				</p>
				<p>
					<label> 은행명 :
					<form:input path="bankName" /> 
					<form:errors path="bankName" />
					</label>
				</p>				
				<P><a href="#" id="Terms">이용약관보기</a></P>
				<label><input type="checkbox" name="agree" value="true">동의하기</label>			
				<input type="submit" value="가입하기" id="submit">			
			</fieldset>			
			</form:form>
		</section>		
	</div>
</body>
</html>