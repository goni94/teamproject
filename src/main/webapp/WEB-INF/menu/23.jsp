<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class="container mt-5">
    <div class="button-container">
        <button type="button" class="btn btn-primary" onclick="location.href='<c:url value="/deposit" />'">입금</button>
        <button type="button" class="btn btn-primary" onclick="location.href='<c:url value="/transaction" />'">계좌조회</button>
    </div>
    <div class="button-container">
        <button type="button" class="btn btn-primary" onclick="location.href='<c:url value="/withdraw" />'">출금</button>
        <button type="button" class="btn btn-primary" onclick="location.href='<c:url value="/send" />'">계좌송금</button>
    </div>
    <div class="button-container">
        <button type="button" class="btn btn-danger" onclick="location.href='<c:url value="/login" />'">취소</button>
    </div>
</div>

</body>
</html>