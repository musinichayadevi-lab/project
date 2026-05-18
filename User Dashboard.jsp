<!DOCTYPE html>
<html>
<head>
<title>Dashboard</title>

<style>
body{
margin:0;
font-family:Arial;
background:#f8f9fa;
}

.sidebar{
width:220px;
height:100vh;
background:#e63946;
position:fixed;
padding:20px;
color:white;
}

.sidebar a{
display:block;
color:white;
text-decoration:none;
margin:20px 0;
}

.main{
margin-left:240px;
padding:30px;
}

.card{
background:white;
padding:20px;
margin:20px;
border-radius:10px;
display:inline-block;
width:200px;
}
</style>
</head>

<body>

<div class="sidebar">

<h2>Dashboard</h2>

<a href="#">Home</a>
<a href="#">Search Donor</a>
<a href="#">Profile</a>
<a href="#">Logout</a>

</div>

<div class="main">

<h1>Welcome User 👋</h1>

<div class="card">
<h3>Total Donors</h3>
<p>120</p>
</div>

<div class="card">
<h3>Requests</h3>
<p>50</p>
</div>

</div>

</body>
</html>