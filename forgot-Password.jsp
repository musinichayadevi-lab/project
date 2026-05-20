<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.mus.entity.UserEntity"%>
<!DOCTYPE html>
<html>
<head>
<title>Forgot password</title>

<style>
body{
background:#f1faee;
font-family:Arial;
padding:30px;
}

.note{
background:white;
padding:20px;
margin:20px 0;
border-left:5px solid red;
}
</style>
</head>
<body>

<div class="container" style="max-width:500px;padding-top:100px">

<div class="card">

<h1 class="page-title">Forgot Password</h1>

<p class="page-sub">
Enter your email and reset password.
</p>

<form>

<label>Email</label>
<input type="email" class="input">

<label>OTP</label>
<input type="text" class="input">

<label>New Password</label>
<input type="password" class="input">

<button class="btn btn-primary" style="width:100%">
Reset Password
</button>

</form>

</div>

</div>

</body>
</html>
