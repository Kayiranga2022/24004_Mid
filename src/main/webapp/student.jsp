<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        margin: 0;
        padding: 0;
    }
    h1, h2 {
        color: #333;
        text-align: center;
    }
    table {
        border-collapse: collapse;
        width: 50%;
        margin: auto;
    }
    th, td {
        padding: 10px;
        text-align: left;
    }
    th {
        background-color: #ddd;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    input[type="text"], input[type="submit"] {
        padding: 8px;
        border-radius: 5px;
        border: 1px solid #ccc;
    }
    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        border: none;
        cursor: pointer;
    }
</style>
</head>
<body>
<center>
    <h1>Students Registration</h1>
    <h2>
        <a href="newstudent">Add New Student</a>
        &nbsp;&nbsp;&nbsp;
        <a href="liststudent">List All Students</a>
    </h2>
</center>
<div align="center">
    <c:if test="${Student != null}">
        <form action="updatestudent" method="post">
            <input type="hidden" name="id" value="<c:out value='${Student.id}' />" />
    </c:if>
    <c:if test="${Student == null}">
        <form action="insertstudent" method="post">
    </c:if>
    <table border="1" cellpadding="5">
        <caption>
            <h2>
                <c:if test="${Student != null}">
                    Edit Student
                </c:if>
                <c:if test="${Student == null}">
                    Add New Student
                </c:if>
            </h2>
        </caption>
        <tr>
            <th>Student ID: </th> <td>
                <input type="text" name="studentId" size="45"
                    value="<c:out value='${Student.studentId}' />" />
            </td>
        </tr>
        <tr>
            <th>First Name: </th> <td>
                <input type="text" name="firstName" size="45"
                    value="<c:out value='${Student.firstName}' />" />
            </td>
        </tr>
        <tr>
            <th>Last Name: </th>
            <td>
                <input type="text" name="lastName" size="45"
                    value="<c:out value='${Student.lastName}' />" />
            </td>
        </tr>
        <tr>
            <th>Date of Birth: </th> <td>
                <input type="text" name="dob" size="45"
                    value="<c:out value='${Student.dob}' />" />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="Save" />
            </td>
        </tr>
    </table>
    </form>
</div>
</body>
</html>
