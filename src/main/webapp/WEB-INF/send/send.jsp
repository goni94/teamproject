<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>송금</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Dancing+Script:wght@400..700&family=East+Sea+Dokdo&family=Jua&family=Gaegu&family=Gamja+Flower&family=Pacifico&family=Single+Day&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <style>
        body * {
            font-family: 'Jua';
        }
        .mb-3 {
            position: relative;
            left: 350px;
            width: 50%;
            top: 60px;
        }
        .mb-6 {
            position: relative;
            left: 350px;
            width: 50%;
            top: 100px;
        }
        .btn {
            position: relative;
            left: 350px;
            top: 110px;
        }
        .button-container1 {
            position: relative;
            left: 160px;
            top: -50px;
            margin-right: 20px;
        }
        .button-container2 {
            position: relative;
            left: 160px;
            top: -60px;
        }
        .button-container1 button {
            margin-right: 20px;
        }
        .button-container2 button {
            margin-right: 20px;
            
        }
        
        .btn-primary {
        	position: relative;
        	top: 50px;
        }
        
   
    </style>
</head>
<body>
   <!--  <div class="container">
        <h1 class="text-center mb-4">송금</h1>
        <div class="button-container1">
            <button type="button" class="btn btn-success" data-bank="BIT은행">BIT은행</button>
            <button type="button" class="btn btn-info" data-bank="신한은행">신한은행</button>
            <button type="button" class="btn btn-danger" data-bank="기업은행">기업은행</button>
        </div>
        <br>
        <div class="button-container2">
            <button type="button" class="btn btn-warning" data-bank="국민은행">국민은행</button>
            <button type="button" class="btn btn-primary" data-bank="우리은행">우리은행</button>
            <button type="button" class="btn btn-kakao" data-bank="카카오뱅크">카카오뱅크</button>
        </div>
<!--  -->
        <form action="./send1" method="post">
            <div class="mb-3">
                <label for="amount" class="form-label">송금할금액</label>
                <input type="number" class="form-control" id="amount" name="amount" placeholder="금액을 입력하세요" required>
                <br>
                <label for="amount" class="form-label">송금할계좌</label>
                <input type="number" class="form-control" id="account" name="account" placeholder="계좌를 입력하세요" required>
            </div>
            <button type="submit" class="btn btn-primary">송금 확인</button>
        </form>
    </div>

<!--     <script>
        $(document).ready(function() {
            $('.btn').on('click', function() {
                const bankName = $(this).data('bank');
                console.log("bankName=" + bankName);
                sendBankNameToController(bankName);
            });
        });

        function sendBankNameToController(bankName) {
            $.ajax({
                type: "POST",
                url: "./send/saveBank",
                data: { bankName: bankName },
                success: function(data) {
                    let s = JSON.parse(data);
                    alert('Bank name saved: ' + s.bank);
                },
                error: function(error) {
                    console.error('Error:', error);
                }
            });
        }
    </script> -->
</body>
</html>
