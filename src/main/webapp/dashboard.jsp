<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f1f5f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .box {
            background: #fff;
            padding: 30px 40px;
            border-radius: 8px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            text-align: center;
        }
        h2 {
            color: #1e3a8a;
        }
    </style>
</head>
<body>

<div class="box">
      <h2>Welcome to Dashboard Mr ${name}</h2>
        <h2> Your email is: ${email}</h2>
        <h2> Your gender is: ${gender}</h2>
        <h2> Your address is: ${address}</h2>
        <h2> Your password is: ${password}</h2>
    <p>Login successful 🎉</p>
</div>

</body>
</html>
