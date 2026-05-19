<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.mus.entity.UserEntity"%>
<!DOCTYPE html>
<html>
<head>
<title>User Dashboard</title>

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: Arial;
}

body {
	background: #fff0f3;
}

.navbar {
	background: #e63946;
	padding: 20px;
	color: white;
	text-align: center;
	font-size: 28px;
	font-weight: bold;
}

.container {
	width: 90%;
	margin: 30px auto;
	display: grid;
	grid-template-columns: 300px 1fr;
	gap: 25px;
}

.profile-card {
	background: white;
	padding: 30px;
	border-radius: 20px;
	text-align: center;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
}

.profile-card img {
	width: 130px;
	height: 130px;
	border-radius: 50%;
	border: 5px solid #e63946;
	margin-bottom: 20px;
}

.profile-card h2 {
	color: #e63946;
	margin-bottom: 10px;
}

.profile-card p {
	margin: 10px 0;
	font-size: 18px;
	color: #555;
}

.dashboard-content {
	display: grid;
	grid-template-columns: repeat(2, 1fr);
	gap: 20px;
}

.card {
	background: white;
	padding: 25px;
	border-radius: 20px;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
}

.card h3 {
	color: #e63946;
	margin-bottom: 15px;
}

.card p {
	font-size: 18px;
	color: #444;
	line-height: 1.6;
}

.button-group {
	margin-top: 20px;
	display: flex;
	flex-direction: column;
	gap: 15px;
}

.button-group a {
	text-decoration: none;
}

.button-group button {
	width: 100%;
	padding: 12px;
	border: none;
	border-radius: 10px;
	background: #e63946;
	color: white;
	font-size: 16px;
	cursor: pointer;
	transition: 0.3s;
}

.button-group button:hover {
	background: #c1121f;
}

.request-list {
	margin-top: 10px;
}

.request-item {
	background: #ffe5ec;
	padding: 12px;
	border-radius: 10px;
	margin-bottom: 10px;
}

@media ( max-width :900px) {
	.container {
		grid-template-columns: 1fr;
	}
	.dashboard-content {
		grid-template-columns: 1fr;
	}
}
</style>
</head>

<body>
	<%
	UserEntity user = (UserEntity) session.getAttribute("loggedInUser");
	if (null != user) {
	%>
	<div class="navbar">❤️ Blood Donation Dashboard</div>
	<div class="container">
		<!-- Profile Section -->
		<div class="profile-card">
			<img src="https://cdn-icons-png.flaticon.com/512/3135/3135715.png"
				alt="Profile">
			<h2><% out.write(user.getName()); %></h2>
			<p>
				<strong>Blood Group:</strong> O+
			</p>
			<p>
				<strong>Last Donation:</strong> 10-May-2026
			</p>
			<p>
				<strong>Total Donations:</strong> 8
			</p>
			<div class="button-group">
				<a href="#">
					<button>✏️ Edit Profile</button>
				</a> <a href="#">
					<button>🚨 Create New Request</button>
				</a> <a href="#">
					<button>📄 My Request History</button>
				</a>
			</div>
		</div>
		<!-- Dashboard Content -->
		<div class="dashboard-content">
			<div class="card">
				<h3>🔔 Recent Blood Requests</h3>
				<div class="request-list">
					<div class="request-item">Need O+ Blood in Hyderabad</div>
					<div class="request-item">Emergency O+ Donor Required in
						Vizag</div>
					<div class="request-item">Urgent Blood Needed for Surgery</div>
				</div>
			</div>
			<div class="card">
				<h3>📊 Donation Summary</h3>
				<p>You have successfully donated blood 8 times. Your
					contribution has helped many patients. Thank you for saving lives
					❤️</p>
			</div>

			<div class="card">
				<h3>❤️ Eligibility Status</h3>
				<p>
					You are eligible for your next donation after: <strong>20
						Days</strong>
				</p>
			</div>

			<div class="card">
				<h3>📍 Nearby Donation Camps</h3>
				<p>
					• Red Cross Camp - Hyderabad<br> <br> • City Hospital
					Blood Bank<br> <br> • Community Donation Drive
				</p>
			</div>
		</div>
	</div>


	<%
	} else {
	RequestDispatcher rd = request.getRequestDispatcher("/user_login.jsp");
	rd.forward(request, response);
	}
	%>

</body>
</html>
