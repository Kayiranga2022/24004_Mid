<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert Student Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }
        h2 {
            text-align: center;
        }
        form {
            width: 50%;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        input[type="text"],
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
    <script>
        function validateForm() {
            var registrationCode = document.forms["registrationForm"]["registrationCode"].value;
            var studentUUID = document.forms["registrationForm"]["studentUUID"].value;
            var semesterUUID = document.forms["registrationForm"]["semesterUUID"].value;
            var departmentId = document.forms["registrationForm"]["departmentId"].value;

            // Check if each field has a value before checking length
            if (!registrationCode || !studentUUID || !semesterUUID || !departmentId) {
                alert("All fields must be filled out");
                return false;
            }

            // Now it's safe to check length
            if (registrationCode.length == 0 || studentUUID.length == 0 || semesterUUID.length == 0) {
                alert("All fields must be filled out");
                return false;
            }
        }
    </script>
</head>
<body>
    <h2>Insert Student Registration</h2>
    <form name="registrationForm" action="insertStudentRegistration" method="post" onsubmit="return validateForm()">
        Registration Code: <input type="text" name="registrationCode"><br>
        Student UUID: <input type="text" name="studentUUID"><br>
        Semester UUID: <input type="text" name="semesterUUID"><br>
        Department ID:
        <select name="departmentId">
            <option value="dept1">Department 1</option>
            <option value="dept2">Department 2</option>
            <!-- Add more department options as needed -->
        </select><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
