<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert Teacher</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        form {
            width: 50%;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        input[type="text"],
        select {
            width: calc(100% - 20px);
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h2>Insert Teacher</h2>
    <form action="insertteacher" method="post">
        First Name: <input type="text" name="firstName" required><br>
        Last Name: <input type="text" name="lastName" required><br>
        Course ID: <input type="text" name="courseId" required><br>
        Qualification: 
        <select name="qualification">
            <option value="MASTER">Master</option>
            <option value="PHD">PhD</option>
            <option value="PROFESSOR">Professor</option>
        </select><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
