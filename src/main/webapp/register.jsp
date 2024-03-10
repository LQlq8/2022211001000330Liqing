<%--
  Created by IntelliJ IDEA.
  User: 李清
  Date: 2024/3/10
  Time: 12:50
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<a href="index.jsp">百度</a>--%>
<%--<form method="post">--%>
<%--    Name:<input type="text" name="name"> <br/>--%>
<%--    ID:<input type="text" name="id"> <br/>--%>
<%--    <input type="submit" value="Send data to server"> <br/>--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register Page</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#registerForm').submit(function (event) {
                var username = $('#username').val();
                var password = $('#password').val();
                var email = $('#email').val();
                var birthdate = $('#birthdate').val();
                var valid = true;

                // Username validation
                if (username.trim() === '') {
                    valid = false;
                    $('#usernameError').text('Username is required.');
                } else {
                    $('#usernameError').text('');
                }

                // Password validation
                if (password.trim() === '' || password.length < 8) {
                    valid = false;
                    $('#passwordError').text('Password is required and must be at least 8 characters long.');
                } else {
                    $('#passwordError').text('');
                }

                // Email validation
                var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                if (email.trim() === '' || !emailPattern.test(email)) {
                    valid = false;
                    $('#emailError').text('Email is required and must be a valid email address.');
                } else {
                    $('#emailError').text('');
                }

                // Birthdate validation
                var birthdatePattern = /^\d{4}-\d{2}-\d{2}$/;
                if (birthdate.trim() === '' || !birthdatePattern.test(birthdate)) {
                    valid = false;
                    $('#birthdateError').text('Birthdate is required and must be in yyyy-dd-mm format.');
                } else {
                    $('#birthdateError').text('');
                }

                if (!valid) {
                    event.preventDefault(); // Prevent form submission if validation fails
                }
            });
        });
    </script>
</head>
<body>
<h2>New User Registration!</h2>
<form id="registerForm"  method="post">
    <div>
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" placeholder="Username">
        <span id="usernameError" style="color: red;"></span>
    </div>
    <div>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" placeholder="Password">
        <span id="passwordError" style="color: red;"></span>
    </div>
    <div>
        <label for="email">Email:</label>
        <input type="text" id="email" name="email" placeholder="Email">
        <span id="emailError" style="color: red;"></span>
    </div>
    <div>

        Gender:
            <input type="radio" id="male" name="gender" value="male">
            <label>Male</label>


            <input type="radio" id="female" name="gender" value="female">
            <label >Female</label>

    </div>
    <div>
        <label for="birthdate">Birthdate:</label>
        <input type="text" id="birthdate" name="birthdate" placeholder="YYYY-DD-MM">
        <span id="birthdateError" style="color: red;"></span>
    </div>
    <div>
        <input type="submit" value="Register">
    </div>
</form>
</body>
</html>
