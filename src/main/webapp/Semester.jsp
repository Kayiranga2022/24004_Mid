<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Semester Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        h1, h2 {
            text-align: center;
            color: #333;
        }
        table {
            width: 50%;
            margin: auto;
            border-collapse: collapse;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
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
        <h1>Semester Registration</h1>
        <h2>
            <a href="newsemester">Add New Semester</a>
            &nbsp;&nbsp;&nbsp;
            <a href="listsemester">List All Semesters</a>
        </h2>
    </center>
    <div align="center">
        <c:if test="${semester != null}">
            <form action="updatesemester" method="post">
                <input type="hidden" name="semesterId" value="${semester.semesterId}" />
        </c:if>
        <c:if test="${semester == null}">
            <form action="insertsemester" method="post">
        </c:if>
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    <c:if test="${semester != null}">
                        Edit Semester
                    </c:if>
                    <c:if test="${semester == null}">
                        Add New Semester
                    </c:if>
                </h2>
            </caption>
            <tr>
                <th>Semester Name: </th>
                <td>
                    <input type="text" name="semesterName" size="45" value="${semester.semesterName}" />
                </td>
            </tr>
            <tr>
                <th>Start Date: </th>
                <td>
                    <input type="text" name="startDate" size="45" value="${semester.startDate}" />
                </td>
            </tr>
            <tr>
                <th>End Date: </th>
                <td>
                    <input type="text" name="endDate" size="45" value="${semester.endDate}" />
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
