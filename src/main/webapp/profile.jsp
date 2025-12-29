<%@ page language="java" contentType="text/html charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
    <link rel="stylesheet" href="profile.css">

    <style>

    </style>
</head>
<body>
<%
 HttpSession session1 = request.getSession(false);
 String sessionEmail = (String)session1.getAttribute("sessionEmail");
 %>
    <div class="profileColH">
        <div class="profilePicH">
        </div>
        <div class="profileCateH">
            <h1>Student</h1>
        </div>
    </div>
    <p>Hello <%= sessionEmail %> </p>
    <div class="profileInfoH">
        <div class="profileInfoLeftH">
            <p>Image: </p>
            <img src=${imagePathJ} alt="profile pic"  width="200" height="200"/>
            <p>Name: ${nameJ}</p>
            <p>Gmail:  ${emailJ}</p>
            <p>Address: ${addressJ}</p>
            <p>Gender: ${genderJ} </p>
        </div>

    </div>
</body>
</html>