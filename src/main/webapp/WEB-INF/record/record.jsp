<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transaction History</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 1000px;
            height: auto;
        }
        h2 {
            text-align: center;
        }
        .button-container {
            text-align: center;
            margin-bottom: 20px;
        }
        .button-container button {
            margin: 5px;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Transaction History</h2>
        <div class="button-container">
            <form action="/users/logout" method="get" style="display: inline;">
                <button type="submit">로그아웃</button>
            </form>
            <form action="/menu/menu" method="get" style="display: inline;">
                <button type="submit">메뉴창</button>
            </form>
        </div>
        <table>
            <thead>
                <tr>
                    <th>Transaction Number</th>
                    <th>Account ID</th>
                    <th>Transaction Type</th>
                    <th>Receiving Account</th>
                    <th>Bank Type</th>
                    <th>Amount</th>
                    <th>Balance</th>
                    <th>Transaction Date</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="transaction" items="${transactions}">
                    <tr>
                        <td>${transaction.transaction_num}</td>
                        <td>${transaction.account_id}</td>
                        <td>${transaction.transaction_type}</td>
                        <td>${transaction.recieving_account}</td>
                        <td>${transaction.bank_type}</td>
                        <td>${transaction.amount}</td>
                        <td>${transaction.balance}</td>
                        <td><fmt:formatDate value="${transaction.transactionDate}" pattern="yyyy-MM-dd HH:mm"/></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
