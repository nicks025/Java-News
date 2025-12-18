<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login | Fake News Detection</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', sans-serif;
        }

        body {
            height: 100vh;
            background: linear-gradient(135deg, #1e3a8a, #2563eb);
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-container {
            background: #ffffff;
            width: 360px;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
            text-align: center;
        }

        .login-container h2 {
            margin-bottom: 20px;
            color: #1e3a8a;
        }

        .login-container p {
            font-size: 14px;
            color: #64748b;
            margin-bottom: 25px;
        }

        .input-group {
            text-align: left;
            margin-bottom: 18px;
        }

        .input-group label {
            font-size: 14px;
            color: #334155;
        }

        .input-group input {
            width: 100%;
            padding: 10px;
            margin-top: 6px;
            border-radius: 6px;
            border: 1px solid #cbd5e1;
            font-size: 14px;
        }

        .input-group input:focus {
            outline: none;
            border-color: #2563eb;
        }

        .login-btn {
            width: 100%;
            padding: 11px;
            background: #2563eb;
            border: none;
            border-radius: 6px;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            margin-top: 10px;
        }

        .login-btn:hover {
            background: #1e40af;
        }

        .links {
            margin-top: 18px;
            font-size: 14px;
        }

        .links a {
            color: #2563eb;
            text-decoration: none;
        }

        .links a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="login-container">
    <h2>Login</h2>
    <p>Access Fake News Detection System</p>

    <form action ="user" method="POST">
        <div class="input-group">
            <label>Email</label>
            <input type="email" placeholder="Enter your email" name= "email">
        </div>

        <div class="input-group">
            <label>Password</label>
            <input type="password" placeholder="Enter your password" name= "password">
        </div>

        <button class="login-btn" type="submit">Login</button>
    </form>

    <div class="links">
        <p>Don't have an account? <a href="signup.jsp">Register</a></p>
        <p><a href="#">Forgot Password?</a></p>
    </div>
</div>

</body>
</html>
