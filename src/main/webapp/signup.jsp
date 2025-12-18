<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup | Fake News Detection</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', system-ui, -apple-system, sans-serif;
        }

        body {
            min-height: 100vh;
            background: linear-gradient(135deg, #1e3a8a, #2563eb);
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .signup-container {
            background: #ffffff;
            width: 420px;
            padding: 35px 30px;
            border-radius: 14px;
            box-shadow: 0 20px 40px rgba(0,0,0,0.25);
            animation: fadeUp 0.6s ease;
        }

        @keyframes fadeUp {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .signup-container h2 {
            text-align: center;
            margin-bottom: 6px;
            color: #1e3a8a;
            font-size: 26px;
        }

        .signup-container p {
            text-align: center;
            font-size: 14px;
            color: #64748b;
            margin-bottom: 28px;
        }

        .input-group {
            margin-bottom: 16px;
        }

        .input-group label {
            display: block;
            font-size: 13px;
            font-weight: 600;
            margin-bottom: 6px;
            color: #334155;
        }

        .input-group input,
        .input-group textarea {
            width: 100%;
            padding: 11px 12px;
            border-radius: 8px;
            border: 1px solid #cbd5e1;
            font-size: 14px;
            transition: 0.2s ease;
        }

        .input-group textarea {
            resize: none;
            height: 70px;
        }

        .input-group input:focus,
        .input-group textarea:focus {
            outline: none;
            border-color: #2563eb;
            box-shadow: 0 0 0 3px rgba(37,99,235,0.15);
        }

        .file-input {
            padding: 8px;
            background: #f8fafc;
            border: 1px dashed #cbd5e1;
            border-radius: 8px;
        }

        .signup-btn {
            width: 100%;
            padding: 12px;
            margin-top: 10px;
            background: linear-gradient(135deg, #2563eb, #1e40af);
            border: none;
            border-radius: 10px;
            color: #ffffff;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: transform 0.15s ease, box-shadow 0.15s ease;
        }

        .signup-btn:hover {
            transform: translateY(-1px);
            box-shadow: 0 10px 20px rgba(37,99,235,0.35);
        }

        .links {
            margin-top: 22px;
            text-align: center;
            font-size: 14px;
            color: #475569;
        }

        .links a {
            color: #2563eb;
            font-weight: 600;
            text-decoration: none;
        }

        .links a:hover {
            text-decoration: underline;
        }

        @media (max-width: 480px) {
            .signup-container {
                width: 92%;
                padding: 28px 22px;
            }
        }
    </style>
</head>
<body>

<div class="signup-container">
    <h2>Create Account</h2>
    <p>Join the Fake News Detection System</p>

    <form action="user" method="POST">
        <div class="input-group">
            <label>Full Name</label>
            <input type="text" name="name" placeholder="Enter your full name">
        </div>

        <div class="input-group">
            <label>Gender</label>
            <input type="text" name="gender" placeholder="Male / Female / Other">
        </div>

        <div class="input-group">
            <label>Address</label>
            <textarea name="address" placeholder="Enter your address"></textarea>
        </div>

        <div class="input-group">
            <label>Email</label>
            <input type="email" name="email" placeholder="example@email.com">
        </div>

        <div class="input-group">
            <label>Password</label>
            <input type="password" name="password" placeholder="Create a password">
        </div>

        <div class="input-group">
        <label>Upload Your profile</label>
        <input type="file" name="file">
       </div>

        <button class="signup-btn" type="submit">Create Account</button>
    </form>

    <div class="links">
        Already have an account? <a href="login.jsp">Login</a>
    </div>
</div>

</body>
</html>