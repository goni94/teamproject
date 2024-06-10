<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %> 
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

        
        .container {
            width: 80%;
            height: 400px;
            margin: 50px auto;
            background-color: #4287f5;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            position: relative;
            top: 90px;
            left: 30px;
        }

        .button-container1, .button-container2 {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .button-container1 button, .button-container2 button {
            width: 300px;
            height: 100px;
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        .balance-container {
            margin-top: 20px;
            padding: 10px;
            background-color: #f5f5f5;
            border-radius: 5px;
            text-align: center;
        }

        .danger-container button {
            width: 200px;
            height: 60px;
            position: relative;
            left: 430px;
            top: 30px;
        }

        /* 각 버튼에 배경 이미지 적용 */
        .btn-bit {
            background-image: url('../image/bitb.png');
        }

        .btn-shinhan {
            background-image: url('../image/sinhan.jpg');
        }

        .btn-kb {
            background-image: url('../image/kb.jpg');
        }

        .btn-ibk {
            background-image: url('../image/ibk.jpg');
        }

        .btn-woori {
            background-image: url('../image/woori.jpg');
        }

        .btn-kakao {
            background-image: url('../image/kakao.jpg');
        }
        
    </style>
</head>
    <body>
        <div class="container">
            <div class="button-container1">
                <button type="button" class="btn btn-bit" onclick="location.href='../send/send'"></button>
                <button type="button" class="btn btn-shinhan" onclick="location.href='../send/send'"></button>
                <button type="button" class="btn btn-kb" onclick="location.href='../send/send'"></button>
            </div>
            <div class="button-container2">
                <button type="button" class="btn btn-ibk" onclick="location.href='../send/send'"></button>
                <button type="button" class="btn btn-woori" onclick="location.href='../send/send'"></button>
                <button type="button" class="btn btn-kakao" onclick="location.href='../send/send'"></button>
            </div>
            <div class="danger-container">
                <button type="button" class="btn btn-danger" onclick="location.href='../menu/menu'">취소</button>
            </div>
        </div>   
    </body>
</html>
