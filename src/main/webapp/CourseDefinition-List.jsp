<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Course List</title>
    <style>
        body {
            font-family: sans-serif;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        table {
            width: 100%; /* Set table to full width */
            border-collapse: collapse; /* Remove default table borders */
        }

        th, td {
            text-align: left; /* Align content left */
            padding: 10px;
            border: 1px solid #ddd; /* Add table borders */
        }

        th {
            background-color: #f2f2f2; /* Light gray background for headers */
            font-weight: bold; /* Bold headers */
        }
    </style>
</head>
<body>
    <h1>CourseDefinition List</h1>
    <table border="0">  <thead>
            <tr>
                <th>CourseDefinition ID</th>
                <th>CourseDefinition Code</th>
                <th>CourseDefinition Name</th>
                
                <th>CourseID</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="coursedefinition" items="${listCourseDefinitions}">
                <tr>
                    <td><c:out value="${coursedefinition.courseDefinitionId}" /></td>
                    <td><c:out value="${coursedefinition.courseDefinitionCode}" /></td>
                    <td><c:out value="${coursedefinition.courseDefinitionDescription}" /></td>
                    
                    <td><c:out value="${coursedefinition.course}" /></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
