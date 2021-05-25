<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
<link rel="stylesheet" href="/web_funding_prj/css/servicecenter_view.css">
<link rel="stylesheet" href="/web_funding_prj/css/header.css">
<link rel="stylesheet" href="/web_funding_prj/css/footer.css">
</head>
<body>
	<div class="container">
		<header>		   
			<jsp:include page="/WEB-INF/view/include/header.jsp"/>
		</header>
	<h2>고객센터</h2>
	<nav>
		<ul>
			<li><a href="#">자주 묻는 질문</a></li>
			<li><a href="#">내 질문</a></li>
		</ul>
	</nav>
	<!-- 여기서부터 자주묻는 질문/내 질문을 인클루드 하는 것도 생각 중 -->
	<h4>자주 묻는 질문</h4>
	<p>고객님께서 자주 문의하시는 질문과 답변을 모았습니다.</p>
	<input type="text" id="qnaserch" placeholder="궁금하신 점이 있다면 여기서 먼저 찾아보세요."><button>search</button>
	<table class="table">
	<tr>
			<td id="qnaNo">번호</td>
			<td id="qnaTitle">제목</td>
			<td id="qnaContent">내용</td>
	</tr>
	</table>
	<!-- 여기까지 제목은 한줄로 표현할 수 있는 단순한 질문. 내용은 css 사용해서 클릭시 바로 답변 확인 가능하도록. -->
	<!-- 여기서부터는 내 질문 페이지 -->
	<h4>내가 한 질문</h4>
	<p>고객님이 하신 1:1 질문내역 페이지입니다.</p>
		<table class="table">
		<tr>
		
			<td id="qnaNo">번호</td>
			<td id="qnaTitle">제목</td>
			<td id="qnaContent">내용</td>
			</tr>
	</table>
	<!-- 페이지 구성 자체는 동일하게 만들면 될 듯. 클릭시 내 질문 내역과 답변 내역 한 눈에 볼 수 있게. -->
	<p>궁금함을 해결하지 못하셨나요?</p>
	<p><a href="/web_funding_prj/board_servicecenter/servicecenter_write">
	<button>1:1 문의하기</button></a>
	</p>
		<footer>
			<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
		</footer>
		</div>
</body>
</html>

<!-- 참고사이트 : https://www.cjlogistics.com/ko/support/faq -->