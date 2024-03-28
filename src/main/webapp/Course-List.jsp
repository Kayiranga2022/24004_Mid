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
    <h1>Course List</h1>
    <h2>
        <a href="newcourse">Add New Course</a>
        &nbsp;&nbsp;&nbsp;
        <a href="listcourses">List All Semester</a>
    </h2>
    <table border="0">  <thead>
            <tr>
                <th>Course ID</th>
                <th>Course Code</th>
                <th>Course Name</th>
                
                <th>Semester</th>
                 <th class="actions">ACTIONS</th>  </tr>
            <c:forEach var="course" items="${listCourse}">
                <tr>
           
                    <td><c:out value="${course.courseId}" /></td>
                    <td><c:out value="${course.courseCode}" /></td>
                    <td><c:out value="${course.courseName}" /></td>
                    
                    <td><c:out value="${course.semesterId}" /></td>
                    
                     <td class="actions">
                        <a href="edit?courseId=${course.courseId}">Edit</a>
                        &nbsp;|&nbsp;
                        <a href="delete?courseId=${course.courseId}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
