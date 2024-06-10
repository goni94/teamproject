<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Dancing+Script:wght@400..700&family=East+Sea+Dokdo&family=Jua&family=Gaegu&family=Gamja+Flower&family=Pacifico&family=Single+Day&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <style>
        body *{
            font-family: 'Jua';
        }
    .mb-3 {
        position: relative;
        left: 300px;
        width: 50%;
        top: 60px;
    }

    .btn-primary {
        position: relative;
        left: 910px;
        top: 5px;
    }
    </style>
</head>
<body>
 <div class="container mt-5">
        <h1 class="text-center mb-4">출금</h1>
        <form action="./withdraw1" method="post">
            <div class="mb-3">
                <label for="amount" class="form-label">출금할 금액</label>
                <input type="number" class="form-control" id="amount" name="amount" placeholder="금액을 입력하세요" required>
            </div>
            <button type="submit" class="btn btn-primary">출금 확인</button>
        </form>
    </div>
</body>
</html>