
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %> 
<%@page import="data.dto.*"%>

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

        body {
            background-color: white;
        }

        .container {
            width: 100%;
            height: 800px;
            margin: 50px auto;
            margin-top: 100px;
            background-color: white; /* 배경색을 흰색으로 설정 */
            padding: 20px;
            border-radius: 10px;
        }

        h1 {
            text-align: center;
            color: #333;
        }
        .button-container {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }
        .button-container button {
            font-size: 40px;
            width: 300px;
            height: 200px;
            position: relative;
            border-radius: 20px;
            background-color: transparent;
        }

        .button-container button#record-button::before {
            content: '';
            position: absolute;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            background: url('../image/atm2.avif') no-repeat;
            background-size: contain; /* 이미지를 버튼 안에 맞게 조절 */
            background-position: center; /* 이미지를 가운데 정렬 */
        }

        .button-container button#record-button2::before {
            content: '';
            position: absolute;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            background: url('../image/sen1.jpg') no-repeat;
            background-size: contain; /* 이미지를 버튼 안에 맞게 조절 */
            background-position: center; /* 이미지를 가운데 정렬 */
            opacity: 0.5;
        }

        .button-container button#record-button3::before {
            content: '';
            position: absolute;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            background: url('../image/deposit.jpg') no-repeat;
            background-size: contain; /* 이미지를 버튼 안에 맞게 조절 */
            background-position: center; /* 이미지를 가운데 정렬 */
            opacity: 0.5;
        }

        .button-container button#record-button4::before {
            content: '';
            position: absolute;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            background: url('../image/withdraw.jpg') no-repeat;
            background-size: contain; /* 이미지를 버튼 안에 맞게 조절 */
            background-position: center; /* 이미지를 가운데 정렬 */
            opacity: 0.5;
        }

        .button-container button#record-button span {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 1; /* 텍스트를 이미지 위에 표시 */
        }

        .button-container button#record-button2 span {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 1; /* 텍스트를 이미지 위에 표시 */
        }

        .button-container button#record-button3 span {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 1; /* 텍스트를 이미지 위에 표시 */
        }

        .button-container button#record-button4 span {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 1; /* 텍스트를 이미지 위에 표시 */
        }

        .balance-container {
            font-size: 30px;
            position: relative;
            left: 340px;
            top: -620px;
            height: 420px;
            width: 500px;
            text-align: center; /* 텍스트를 가운데 정렬 */
            border: 4px solid #333; /* 테두리 굵기를 조절합니다. */
            padding: 50px; /* 테두리 내부 여백 추가 */
            border-radius: 10px; /* 테두리 모서리를 둥글게 만듭니다. */
        }

        .button-container1 button {
            font-size: 40px;
            width: 300px;
            height: 200px;
            position: relative;
            bottom: -20px;
            border-radius: 20px;
        }
    </style>
</head>
<body>
<div>
    <div class="container">
        <div class="button-container">
            <button id="record-button3" type="button" onclick="location.href='../deposit/sleep'"><span>입금</span></button>
            <button id="record-button2" type="button"  onclick="location.href='../send/sleep'"><span>송금</span></button>
        </div>
        <div class="button-container">
            <button id="record-button4" type="button"  onclick="location.href='../withdraw/sleep'">출금</button>
            <button id="record-button" type="button" onclick="location.href='../record/sleep'"><span>계좌조회</span></button>
        </div>
        <div class="button-container1">
            <button type="button" class="btn btn-danger" onclick="location.href='../users/logout'">취소</button>
        </div>
        <div class="balance-container">
            <br>
          <h4>Name: <c:out value="${userDto.full_Name.toUpperCase()}" /></h4>
            <p>Email: <c:out value="${userDto.email}" /></p>
            <p>Balance: $ <c:out value="${accountBalance}" /></p>
            <p>Address: <c:out value="${userDto.address}" /></p>
        </div>
        </div>
    </div>
</div>
</body>
</html>