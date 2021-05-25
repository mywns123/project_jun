<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>100펀딩 - 크리에이터를 위한 크라우드펀딩</title>

<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script>
	$(document).ready(function() {
		$('.slider').bxSlider();
	});
</script>
</head>
<body>
	<!-- 페이지마다 .container해서 main.css에 있는 css비율대로 마진이랑 맞추기 -->
	<div class="container">
		<header>		   
			<jsp:include page="/WEB-INF/view/include/header.jsp"/>
		</header>
		<section>
			<jsp:include page="/WEB-INF/view/include/main_section.jsp"/>		
		</section>
		<footer>
			<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
		</footer>
	</div>
</body>
</html>