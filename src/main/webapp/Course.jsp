<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Course Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        center {
            margin-top: 50px;
        }
        h1 {
            color: #333;
        }
        h2 {
            color: #555;
            margin-bottom: 20px;
        }
        form {
            width: 50%;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        table {
            width: 100%;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        input[type="text"] {
            width: 100%;
            padding: 8px;
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
    <center>
        <h1>Course Registration</h1>
        <h2><a href="listcourse">List All Courses</a></h2>

        <form action="${Course != null ? 'updatecourse' : 'insertcourse'}" method="post">
            <c:if test="${Course != null}">
                <input type="hidden" name="courseId" value="<c:out value='${Course.courseId}' />" />
            </c:if>
            <table >
                <caption>
                    <h2>
                        <c:if test="${Course != null}">Edit Course</c:if>
                        <c:if test="${Course == null}">Add New Course</c:if>
                    </h2>
                </caption>
                <tr>
                    <th>Course Code: </th>
                    <td><input type="text" name="courseCode" size="45" value="<c:out value='${Course.courseCode}' />" /></td>
                </tr>
                <tr>
                    <th>Course Name: </th>
                    <td><input type="text" name="courseName" size="45" value="<c:out value='${Course.courseName}' />" /></td>
                </tr>
                <tr>
                    <th>Semester ID: </th>
                    <td><input type="text" name="semesterId" size="45" value="<c:out value='${Course.semesterId}' />" /></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Save" /></td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>
