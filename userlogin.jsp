<!DOCTYPE html>
<html>
<head>
<title>Login</title>

<style>
body{
display:flex;
justify-content:center;
align-items:center;
height:100vh;
background:#ffccd5;
font-family:Arial;
}

.login{
background:white;
padding:40px;
width:350px;
border-radius:20px;
}

input{
width:100%;
padding:12px;
margin:10px 0;
}

button{
width:100%;
padding:12px;
background:#e63946;
color:white;
border:none;
}
</style>
</head>

<body>
<form action="login" method="post">
<div class="login">

<h2>User Login 🔐</h2>
  <input type="email" name="email" placeholder="Enter Email">

  <input type="password" name="password" placeholder="Enter Password">

  <button type="submit">Login</button>


</div>
</form>
</body>
</html>