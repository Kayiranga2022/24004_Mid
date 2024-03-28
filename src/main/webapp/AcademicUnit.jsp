<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert Academic Unit</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        h2 {
            text-align: center;
            margin-top: 50px;
            color: #333;
        }
        form {
            width: 50%;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        input[type="text"], select {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4caf50;
            color: #fff;
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
    <h2>Insert Academic Unit</h2>
    <form action="insertAcademicUnit" method="post">
        <label for="academicUnitCode">Academic Unit Code:</label>
        <input type="text" id="academicUnitCode" name="academicUnitCode" required><br>
        <label for="academicUnitName">Academic Unit Name:</label>
        <input type="text" id="academicUnitName" name="academicUnitName" required><br>
        <label for="academicUnitType">Academic Unit Type:</label>
        <select id="academicUnitType" name="academicUnitType">
            <option value="PROGRAM">Program</option>
            <option value="FACULTY">Faculty</option>
            <option value="DEPARTMENT">Department</option>
        </select><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
