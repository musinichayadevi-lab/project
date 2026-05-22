<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>BloodConnect - Emergency Request</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{
    background:#f5f7fb;
    display:flex;
    min-height:100vh;
    color:#222;
}

/* SIDEBAR */

.sidebar{
    width:320px;
    background:#111433;
    color:white;
    padding:25px 20px;
    display:flex;
    flex-direction:column;
    justify-content:space-between;
}

.logo{
    display:flex;
    align-items:center;
    gap:15px;
    margin-bottom:40px;
}

.logo-icon{
    width:55px;
    height:55px;
    border-radius:15px;
    background:linear-gradient(135deg,#ff4d6d,#d7263d);
    display:flex;
    align-items:center;
    justify-content:center;
    font-size:24px;
}

.logo h2{
    font-size:20px;
}

.logo p{
    font-size:14px;
    color:#c8c8c8;
}

.menu-title{
    font-size:14px;
    color:#b7b7b7;
    margin:30px 0 15px;
    letter-spacing:1px;
}

.menu{
    list-style:none;
}

.menu li{
    margin-bottom:12px;
}

.menu a{
    text-decoration:none;
    color:white;
    display:flex;
    align-items:center;
    gap:15px;
    padding:16px;
    border-radius:14px;
    transition:0.3s;
    font-size:18px;
}

.menu a:hover{
    background:#1e2250;
}

.menu .active{
    background:#d63c2f;
}

.badge{
    margin-left:auto;
    background:#d63c2f;
    width:25px;
    height:25px;
    border-radius:50%;
    display:flex;
    align-items:center;
    justify-content:center;
    font-size:13px;
}

.profile-box{
    background:#1c2047;
    border-radius:18px;
    padding:18px;
    display:flex;
    align-items:center;
    gap:15px;
}

.profile-img{
    width:55px;
    height:55px;
    border-radius:50%;
    background:#d63c2f;
    display:flex;
    align-items:center;
    justify-content:center;
    font-weight:bold;
    font-size:22px;
}

/* MAIN CONTENT */

.main{
    flex:1;
    padding:30px 35px;
}

.topbar{
    display:flex;
    justify-content:space-between;
    align-items:center;
    margin-bottom:40px;
}

.topbar h1{
    font-size:48px;
}

.top-right{
    display:flex;
    align-items:center;
    gap:20px;
}

.bell{
    width:55px;
    height:55px;
    border-radius:15px;
    background:white;
    display:flex;
    align-items:center;
    justify-content:center;
    position:relative;
    box-shadow:0 2px 10px rgba(0,0,0,0.08);
    font-size:22px;
}

.notification-count{
    position:absolute;
    top:-5px;
    right:-5px;
    background:#d63c2f;
    color:white;
    width:24px;
    height:24px;
    border-radius:50%;
    display:flex;
    align-items:center;
    justify-content:center;
    font-size:12px;
}

.user-circle{
    width:60px;
    height:60px;
    border-radius:50%;
    background:#d63c2f;
    color:white;
    display:flex;
    align-items:center;
    justify-content:center;
    font-weight:bold;
    font-size:22px;
}

/* PAGE */

.page-title{
    margin-bottom:10px;
    font-size:52px;
    font-weight:700;
}

.page-subtitle{
    color:#777;
    font-size:22px;
    margin-bottom:40px;
}

.content{
    display:grid;
    grid-template-columns:2fr 1.1fr;
    gap:30px;
}

/* CARD */

.card{
    background:white;
    border-radius:25px;
    padding:35px;
    box-shadow:0 5px 20px rgba(0,0,0,0.06);
}

.card-title{
    font-size:38px;
    margin-bottom:30px;
}

/* FORM */

.form-grid{
    display:grid;
    grid-template-columns:1fr 1fr;
    gap:25px;
}

.form-group{
    display:flex;
    flex-direction:column;
}

.form-group.full{
    grid-column:1/3;
}

label{
    margin-bottom:10px;
    font-size:22px;
    font-weight:500;
}

input,
select,
textarea{
    padding:18px;
    border:1px solid #ddd;
    border-radius:15px;
    font-size:20px;
    outline:none;
    background:#fafafa;
}

textarea{
    resize:none;
    height:120px;
}

.btn{
    margin-top:30px;
    background:#d63c2f;
    color:white;
    border:none;
    padding:18px 30px;
    border-radius:15px;
    font-size:22px;
    cursor:pointer;
    transition:0.3s;
}

.btn:hover{
    background:#bf2f24;
}

/* ACTIVE REQUESTS */

.request-item{
    display:flex;
    gap:18px;
    padding:20px 0;
    border-bottom:1px solid #eee;
}

.blood-box{
    width:60px;
    height:60px;
    border-radius:16px;
    background:#ffecec;
    color:#d63c2f;
    display:flex;
    align-items:center;
    justify-content:center;
    font-size:24px;
    font-weight:bold;
}

.request-info h3{
    font-size:24px;
    margin-bottom:5px;
}

.request-info p{
    color:#777;
    font-size:18px;
    margin-bottom:10px;
}

.tag{
    display:inline-block;
    padding:8px 15px;
    border-radius:30px;
    font-size:16px;
    font-weight:600;
}

.high{
    background:#fff3cd;
    color:#d39e00;
}

.medium{
    background:#d1ecf1;
    color:#0c5460;
}

.critical{
    background:#f8d7da;
    color:#c82333;
}

/* RESPONSIVE */

@media(max-width:1200px){

    .content{
        grid-template-columns:1fr;
    }

    .sidebar{
        width:280px;
    }
}

@media(max-width:768px){

    body{
        flex-direction:column;
    }

    .sidebar{
        width:100%;
    }

    .form-grid{
        grid-template-columns:1fr;
    }

    .form-group.full{
        grid-column:auto;
    }

    .page-title{
        font-size:38px;
    }

    .card-title{
        font-size:28px;
    }
}
</style>
</head>

<body>

<!-- SIDEBAR -->

<div class="sidebar">

    <div>

        <div class="logo">
            <div class="logo-icon">
                ❤️
            </div>

            <div>
                <h2>BloodConnect</h2>
                <p>Save Lives Together</p>
            </div>
        </div>

        <div class="menu-title">MAIN</div>

        <ul class="menu">
            <li>
                <a href="#">
                    <i class="fa-solid fa-house"></i>
                    Dashboard
                </a>
            </li>

            <li>
                <a href="#">
                    <i class="fa-solid fa-magnifying-glass"></i>
                    Find Donors
                </a>
            </li>

            <li>
                <a href="#" class="active">
                    <i class="fa-solid fa-triangle-exclamation"></i>
                    Emergency Request
                </a>
            </li>
        </ul>

        <div class="menu-title">MY ACCOUNT</div>

        <ul class="menu">

            <li>
                <a href="#">
                    <i class="fa-solid fa-list"></i>
                    Request History
                </a>
            </li>

            <li>
                <a href="#">
                    <i class="fa-regular fa-bell"></i>
                    Notifications

                    <span class="badge">2</span>
                </a>
            </li>

            <li>
                <a href="#">
                    <i class="fa-regular fa-user"></i>
                    My Profile
                </a>
            </li>
        </ul>

        <div class="menu-title">SUPPORT</div>

        <ul class="menu">
            <li>
                <a href="#">
                    <i class="fa-regular fa-envelope"></i>
                    Contact Us
                </a>
            </li>
        </ul>

    </div>

    <!-- PROFILE -->

    <div class="profile-box">

        <div class="profile-img">
            RS
        </div>

        <div>
            <h3>Rahul</h3>
            <p>O+ Donor</p>
        </div>

    </div>

</div>

<!-- MAIN CONTENT -->

<div class="main">

    <!-- TOPBAR -->

    <div class="topbar">

        <h1>Emergency Request</h1>

        <div class="top-right">

            <div class="bell">
                <i class="fa-regular fa-bell"></i>

                <div class="notification-count">
                    2
                </div>
            </div>

            <div class="user-circle">
                RS
            </div>

        </div>

    </div>

    <h2 class="page-title">
        Emergency Blood Request
    </h2>

    <p class="page-subtitle">
        Post an urgent request — matching donors will be notified immediately
    </p>

    <div class="content">

        <!-- LEFT CARD -->

        <div class="card">

            <h2 class="card-title">
                Request Details
            </h2>

            <form>

                <div class="form-grid">

                    <div class="form-group">
                        <label>Patient Name *</label>

                        <input type="text" placeholder="Full name">
                    </div>

                    <div class="form-group">
                        <label>Blood Group Required *</label>

                        <select>
                            <option>O+</option>
                            <option>O-</option>
                            <option>A+</option>
                            <option>A-</option>
                            <option>B+</option>
                            <option>B-</option>
                            <option>AB+</option>
                            <option>AB-</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label>Hospital Name *</label>

                        <input type="text" placeholder="Hospital">
                    </div>

                    <div class="form-group">
                        <label>City</label>

                        <input type="text" value="Hyderabad">
                    </div>

                    <div class="form-group">
                        <label>Urgency Level</label>

                        <select>
                            <option>High</option>
                            <option>Medium</option>
                            <option>Critical</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label>Units Required</label>

                        <input type="number" value="1">
                    </div>

                    <div class="form-group full">
                        <label>Contact Number</label>

                        <input type="text" placeholder="10-digit number">
                    </div>

                    <div class="form-group full">
                        <label>Additional Notes</label>

                        <textarea placeholder="Write additional details..."></textarea>
                    </div>

                </div>

                <button class="btn">
                    Submit Emergency Request
                </button>

            </form>

        </div>

        <!-- RIGHT CARD -->

        <div class="card">

            <h2 class="card-title">
                Active Requests
            </h2>

            <!-- ITEM -->

            <div class="request-item">

                <div class="blood-box">
                    O+
                </div>

                <div class="request-info">
                    <h3>Ramesh K</h3>
                    <p>Apollo Hospital, Hyderabad</p>

                    <span class="tag high">
                        High
                    </span>
                </div>

            </div>

            <!-- ITEM -->

            <div class="request-item">

                <div class="blood-box">
                    A+
                </div>

                <div class="request-info">
                    <h3>Sita Devi</h3>
                    <p>NIMS, Hyderabad</p>

                    <span class="tag medium">
                        Medium
                    </span>
                </div>

            </div>

            <!-- ITEM -->

            <div class="request-item">

                <div class="blood-box">
                    B+
                </div>

                <div class="request-info">
                    <h3>James Paul</h3>
                    <p>Yashoda, Hyderabad</p>

                    <span class="tag critical">
                        Critical
                    </span>
                </div>

            </div>

        </div>

    </div>

</div>

</body>
</html>
