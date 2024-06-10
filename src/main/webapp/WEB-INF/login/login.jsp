<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ATM Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Dancing+Script:wght@400..700&family=East+Sea+Dokdo&family=Jua&family=Gaegu&family=Gamja+Flower&family=Pacifico&family=Single+Day&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <style>
        body * {
            font-family: 'Jua';
        }
        
        .container {
            width: 60%;
            height: auto;
            margin: 50px auto;
            background-color: #3498db;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 0 5px rgba(0, 0, 0, 100);
        }
		.chip {
			position: relative;
			width: 100px;
			bottom: 300px;
			left: 280px;
			
			
		}
		.visa {
			position: relative;
			width: 150px;
			bottom: 250px;
			left: 260px;
			
		}
		.a {
			position: relative;
			width: 150px;
			bottom: 500px;
			left: 450px;
			opacity: 1; /* Adjust this value between 0 (fully transparent) and 1 (fully opaque) */
}
			
		}
        h1 {
            text-align: left;
            color: #333;
        }

        .login-form {
            margin: 20px 0;
            position: relative;
            left: 400px;
        }

        .button-container {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .button-container button {
            font-size: 50px;
            width: 300px;
            height: 200px;
        }

        .error-message {
            color: red;
            text-align: center;
            margin-top: 10px;
        }
        
    	.form-control {
    		width: 300px;
    	}
    </style>
</head>
<body>
    <div class="container">
        <h1>BIT Check</h1>
        <form action="/users/login" method="get" class="login-form">
            <div class="mb-3">
                <label for="username" class="form-label">Username</label>
                <input type="text" class="form-control" id="username" name="username" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="saveid" name="saveid" value="yes">
                <label class="form-check-label" for="saveid">Remember Me</label>
            </div>
            <button type="submit" class="btn btn-primary">Login</button>
            <c:if test="${not empty errorMessage}">
                <div class="error-message">
                    ${errorMessage}
                </div>
            </c:if>
        </form>
    </div>
    <div>
    <img class="chip" src="../image/chip.png">
    </div>
    <div>
    <img class="visa" src="../image/visa2.png">
    </div>
    <div>
    <img class="a" src="../image/logo2.png">
    </div>
</body>
</html>
