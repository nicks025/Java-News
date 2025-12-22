<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Signup | Fake News Detection</title>
    <style>
        body {
            min-height: 100vh;
            background: linear-gradient(135deg, #1e3a8a, #2563eb);
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Segoe UI', sans-serif;
        }
        .signup-container {
            background: #fff;
            width: 420px;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 20px 40px rgba(0,0,0,0.25);
        }
        h2 { text-align: center; color: #1e3a8a; }
        .input-group { margin-bottom: 15px; }
        label { font-size: 13px; font-weight: 600; }
        input, textarea {
            width: 100%;
            padding: 10px;
            border-radius: 8px;
            border: 1px solid #cbd5e1;
        }
        textarea { resize: none; height: 60px; }
        button {
            width: 100%;
            padding: 12px;
            background: #2563eb;
            border: none;
            border-radius: 8px;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }
    </style>
</head>
<body>

<div class="signup-container">
    <h2>Create Account</h2>

    <form action="user" method="post" enctype="multipart/form-data">

        <div class="input-group">
            <label>Full Name</label>
            <input type="text" name="name" required>
        </div>

        <div class="input-group">
            <label>Gender</label>
            <input type="text" name="gender" required>
        </div>

        <div class="input-group">
            <label>Address</label>
            <textarea name="address" required></textarea>
        </div>

        <div class="input-group">
            <label>Email</label>
            <input type="email" name="email" required>
        </div>

        <div class="input-group">
            <label>Password</label>
            <input type="password" name="password" required>
        </div>

        <div class="input-group">
            <label>Profile Image</label>
            <input type="file" name="profileImage" accept="image/*" required>
        </div>

        <button type="submit">Create Account</button>
    </form>
</div>

</body>
</html>
