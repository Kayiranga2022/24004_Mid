<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Semesters</title>
    <style>
        body {
            font-family: sans-serif;
            text-align: center; /* Center content by default */
        }

        h1, h2 {
            margin-bottom: 20px;
        }

        table {
            width: 100%; /* Set table to full width */
            border-collapse: collapse; /* Remove default table borders */
            margin: 0 auto; /* Center the table horizontally */
        }

        th, td {
            padding: 10px;
            border: 1px solid #ddd; /* Add table borders */
            text-align: left; /* Align content left */
        }

        th {
            background-color: #f2f2f2; /* Light gray background for headers */
            font-weight: bold; /* Bold headers */
        }

        .actions {
            text-align: center; /* Center actions column */
        }

        .actions a {
            margin: 0 5px; /* Add spacing between action links */
            text-decoration: none; /* Remove underline from links */
            color: #000; /* Black color for links */
        }

        .actions a:hover {
            color: #333; /* Darker gray on hover */
        }
    </style>
</head>
<body>
    <h1>Semesters</h1>
    <h2>
        <a href="newsemester">Add New Semester</a>
        &nbsp;&nbsp;&nbsp;
        <a href="listsemester">List All Semester</a>
    </h2>

    <div align="center">
        <table border="0">  <caption>
                <h2>List of Semesters</h2>
            </caption>
            <tr>
                <th>SemesterID</th>
                <th>SemesterName</th>
                <th>startDate</th>
                <th>endDate</th>
                <th class="actions">ACTIONS</th>  </tr>
            <c:forEach var="semester" items="${listSemester}">
                <tr>
                    <td>${semester.semesterId}</td>
                    <td>${semester.semesterName}</td>
                    <td>${semester.startDate}</td> <td>${semester.endDate}</td>
                    <td class="actions">
                        <a href="edit?semesterId=${semester.semesterId}">Edit</a>
                        &nbsp;|&nbsp;
                        <a href="delete?semesterId=${semester.semesterId}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
