<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Dashboard</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background: #f1f5f9;
            display: flex;
        }

        /* Sidebar */
        .sidebar {
            width: 220px;
            height: 100vh;
            background: #1e293b;
            color: white;
            padding: 20px;
        }

        .sidebar h2 {
            text-align: center;
            margin-bottom: 30px;
        }

        .sidebar a {
            display: block;
            color: white;
            text-decoration: none;
            padding: 12px;
            margin: 10px 0;
            border-radius: 6px;
        }

        .sidebar a:hover {
            background: #334155;
        }

        /* Main Content */
        .main {
            flex: 1;
            padding: 30px;
        }

        .header {
            background: white;
            padding: 20px;
            border-radius: 10px;
            margin-bottom: 30px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }

        /* Profile Card */
        .profile-card {
            background: white;
            padding: 30px;
            border-radius: 12px;
            width: 350px;
            text-align: center;
            box-shadow: 0 10px 25px rgba(0,0,0,0.15);
        }

        .profile-card img {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 15px;
            border: 3px solid #1e293b;
        }

        .profile-card h2 {
            margin-bottom: 10px;
        }

        .profile-card p {
            margin: 6px 0;
            color: #334155;
        }

        /* Cards Section */
        .cards {
            display: flex;
            gap: 20px;
            margin-top: 30px;
        }

        .info-card {
            flex: 1;
            background: white;
            padding: 20px;
            border-radius: 12px;
            text-align: center;
            box-shadow: 0 8px 20px rgba(0,0,0,0.12);
        }

        .info-card h3 {
            margin-bottom: 10px;
            color: #1e293b;
        }
    </style>
</head>

<body>

<!-- Sidebar -->
<div class="sidebar">
    <h2>Dashboard</h2>
    <a href="now.jsp">Home</a>
    <a href="#">Profile</a>
    <a href="#">Settings</a>
    <a href="index.jsp">Logout</a>
</div>

<!-- Main Content -->
<div class="main">

    <div class="header">
        <h2>Welcome, ${name} </h2>
        <p>User Dashboard</p>
    </div>

    <div class="profile-card">
        <img src="${imagePath}" alt="Profile Image">
        <h2>${name}</h2>
        <p><b>Email:</b> ${email}</p>
        <p><b>Gender:</b> ${gender}</p>
        <p><b>Address:</b> ${address}</p>
    </div>

    <div class="cards">
        <div class="info-card">
            <h3>Status</h3>
            <p>Active User</p>
        </div>

        <div class="info-card">
            <h3>Role</h3>
            <p>Registered Member</p>
        </div>

        <div class="info-card">
            <h3>Last Login</h3>
            <p>Today</p>
        </div>
    </div>

</div>

</body>
</html>
