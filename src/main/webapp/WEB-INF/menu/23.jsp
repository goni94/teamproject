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
        <button type="button" class="btn btn-primary" onclick="location.href='<c:url value="/deposit" />'">�Ա�</button>
        <button type="button" class="btn btn-primary" onclick="location.href='<c:url value="/transaction" />'">������ȸ</button>
    </div>
    <div class="button-container">
        <button type="button" class="btn btn-primary" onclick="location.href='<c:url value="/withdraw" />'">���</button>
        <button type="button" class="btn btn-primary" onclick="location.href='<c:url value="/send" />'">���¼۱�</button>
    </div>
    <div class="button-container">
        <button type="button" class="btn btn-danger" onclick="location.href='<c:url value="/login" />'">���</button>
    </div>
</div>

</body>
</html>