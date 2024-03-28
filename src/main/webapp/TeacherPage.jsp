<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Management System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        .navbar {
            background-color: #333;
            overflow: hidden;
        }
        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
        }
        .dropdown {
            float: left;
            overflow: hidden;
        }
        .dropdown .dropbtn {
            font-size: 16px;  
            border: none;
            outline: none;
            color: white;
            padding: 14px 20px;
            background-color: inherit;
            font-family: inherit;
            margin: 0;
        }
        .navbar a:hover, .dropdown:hover .dropbtn {
            background-color: #ddd;
            color: black;
        }
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }
        .dropdown-content a {
            float: none;
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            text-align: left;
        }
        .dropdown-content a:hover {
            background-color: #ddd;
        }
        .dropdown:hover .dropdown-content {
            display: block;
        }
        .content {
            padding: 20px;
        }
    </style>
</head>
<body>

<div class="navbar">
    <a href="#home">Home</a>
    <div class="dropdown">
        <button class="dropbtn">Student 
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="newstudent">Register New Student</a>
            <a href="liststudent">All Students</a>
        </div>
    </div>
     <div class="dropdown">
        <button class="dropbtn">Teacher 
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="insertteacher">Register New Teacher</a>
            <a href="listeachers">All Students</a>
        </div>
    </div>
   
    
     <div class="dropdown">
        <button class="dropbtn">Academic Unit 
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="insertAcademicUnit">Register New Academic Unit</a>
            <a href="#">All Academic Units</a>
        </div>
    </div>
    
     <div class="dropdown">
        <button class="dropbtn">Courses 
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="newcourse">Register New Course</a>
            <a href="listcourses">All Courses</a>
        </div>
    </div>
   
   
    </div> 
    
</div>

<div class="content">
    <h2>Welcome to Student Management System</h2>
    <!-- Your content here -->
</div>

</body>
</html>
