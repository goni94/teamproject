<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<link
	href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Dancing+Script:wght@400..700&family=East+Sea+Dokdo&family=Jua&family=Gaegu&family=Gamja+Flower&family=Pacifico&family=Single+Day&display=swap"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<style>
body * {
	font-family: 'Jua';
}

body {
	background: url('../image/finish.png') no-repeat;
	background-size: contain; /* 배경 이미지가 화면에 꽉 찰 수 있도록 확대/축소 */
	background-position: center; /* 이미지를 가운데 정렬 */
	background-color: #f0f0f0; /* 배경색 추가 */
	height: 100vh; /* 화면 높이를 전체 화면으로 설정 */
	margin: 0; /* 바디의 마진 제거 */
	padding: 0; /* 바디의 패딩 제거 */
	display: flex; /* 내용을 가운데 정렬하기 위해 flex 사용 */
	justify-content: center; /* 가로 중앙 정렬 */
	align-items: center; /* 세로 중앙 정렬 */
}

.center {
	text-align: center;
	position: absolute;
	top: 500px;
	left: 100px;
}

h1 {
	font-weight: bold;
	color: #3368FF;
	font-size: 100px;
	text-shadow: 
		-1px -1px 0 #000,  
		1px -1px 0 #000,
		-1px 1px 0 #000,
		1px 1px 0 #000,
		-2px 0 0 #000,
		2px 0 0 #000,
		0 -2px 0 #000,
		0 2px 0 #000; /* 텍스트에 검은색 테두리 추가 */
}

.btn-danger {
	position: relative;
	top: -140px;
	width: 200px;
	height: 80px;
	left: 100px;
	font-size: 30px;
}
</style>
</head>
<body>
	<div class="center">
		<h1>이용해주셔서 감사합니다!!</h1>
	</div>
	<script>
    window.onload = function() {
        setTimeout(function() {
            window.location.href = "../login/login";
        }, 2000); // 3000 milliseconds = 2 seconds
    };
    </script>
</body>
</html>
