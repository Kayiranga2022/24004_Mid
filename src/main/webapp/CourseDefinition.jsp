<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Course Definition Form</title>
    <style>
        body {
            font-family: sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh; /* Set minimum viewport height */
            background-color: #f5f5f5; /* Light gray background */
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-container {
            background-color: #fff; /* White background for the form */
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); /* Subtle shadow effect */
            width: 400px; /* Set form width */
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold; /* Bold labels for better readability */
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            font-size: 16px; /* Adjust font size for better input */
        }

        textarea {
            resize: vertical;
        }

        input[type="submit"] {
            background-color: #4CAF50; /* Green */
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.2s ease-in-out; /* Add hover effect */
        }

        input[type="submit"]:hover {
            background-color: #3e8e41; /* Darker green on hover */
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Course Definition Form</h2>
        <form action="insertcoursedefinition" method="post">
            <div class="form-group">
                <label for="courseCode">Course Code:</label><br>
                <input type="text" id="courseDefinitionCode" name="courseDefinitionCode">
            </div>
            <div class="form-group">
                <label for="courseDescription">Course Description:</label><br>
                <textarea id="courseDescription" name="courseDefinitionDescription" rows="4" cols="50"></textarea>
            </div>
            <div class="form-group">
                <label for="courseId">Course ID:</label><br>
                <input type="text" id="courseId" name="courseId">
            </div>
            <input type="submit" value="Submit">
        </form>
    </div>
    
</body>
</html>
