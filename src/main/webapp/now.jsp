<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Now Page</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background: #f1f5f9;
            padding: 40px;
        }

        h2 {
            margin-bottom: 20px;
            color: #1e293b;
        }

        .table-container {
            background: white;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        thead {
            background: #1e293b;
            color: white;
        }

        th, td {
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid #e5e7eb;
        }

        tr:hover {
            background: #f8fafc;
        }

        img {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            object-fit: cover;
        }

        .btn {
            padding: 6px 12px;
            border-radius: 6px;
            border: none;
            cursor: pointer;
            color: white;
        }

        .btn-edit {
            background: #0ea5e9;
        }

        .btn-delete {
            background: #ef4444;
        }
    </style>
</head>

<body>

<h2>Now Page - User Table</h2>

<div class="table-container">
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Profile</th>
                <th>Name</th>
                <th>Email</th>
                <th>Gender</th>
                <th>Address</th>
                <th>Action</th>
            </tr>
        </thead>

        <tbody>
            <!-- Example static row -->
            <tr>
                <td>1</td>
                <td><img src="images/user.png"></td>
                <td>Nikhil</td>
                <td>nikhil@gmail.com</td>
                <td>Male</td>
                <td>Kathmandu</td>
                <td>
                    <button class="btn btn-edit">Edit</button>
                    <button class="btn btn-delete">Delete</button>
                </td>
            </tr>

            <!-- Dynamic rows example -->
            <%--
            <c:forEach var="u" items="${userList}">
                <tr>
                    <td>${u.id}</td>
                    <td><img src="${u.imagePath}"></td>
                    <td>${u.name}</td>
                    <td>${u.email}</td>
                    <td>${u.gender}</td>
                    <td>${u.address}</td>
                    <td>
                        <button class="btn btn-edit">Edit</button>
                        <button class="btn btn-delete">Delete</button>
                    </td>
                </tr>
            </c:forEach>
            --%>

        </tbody>
    </table>
</div>

</body>
</html>
