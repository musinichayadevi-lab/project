<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Find Donors - BloodConnect</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{
    background:#f5f7fa;
    display:flex;
    min-height:100vh;
    overflow:hidden;
}

/* SIDEBAR */

.sidebar{
    width:320px;
    background:#171735;
    color:white;
    display:flex;
    flex-direction:column;
    justify-content:space-between;
}

.logo{
    display:flex;
    align-items:center;
    gap:15px;
    padding:30px;
    border-bottom:1px solid rgba(255,255,255,0.08);
}

.logo-icon{
    width:58px;
    height:58px;
    background:#d43f2f;
    border-radius:16px;
    display:flex;
    align-items:center;
    justify-content:center;
    font-size:24px;
}

.logo h2{
    font-size:20px;
}

.logo p{
    color:#c7c7c7;
    font-size:14px;
}

.menu{
    padding:20px;
}

.menu-title{
    color:#c7c7c7;
    margin:20px 10px;
    font-size:14px;
    text-transform:uppercase;
}

.menu a{
    display:flex;
    align-items:center;
    gap:15px;
    text-decoration:none;
    color:#d6d6d6;
    padding:16px 18px;
    border-radius:14px;
    margin-bottom:10px;
    transition:0.3s;
    font-size:17px;
}

.menu a:hover,
.menu a.active{
    background:#d43f2f;
    color:white;
}

.menu a i{
    width:20px;
}

.badge{
    margin-left:auto;
    background:#d43f2f;
    width:24px;
    height:24px;
    border-radius:50%;
    display:flex;
    align-items:center;
    justify-content:center;
    font-size:12px;
}

.profile{
    background:rgba(255,255,255,0.06);
    margin:20px;
    border-radius:18px;
    padding:18px;
    display:flex;
    align-items:center;
    gap:15px;
}

.profile-avatar{
    width:52px;
    height:52px;
    border-radius:50%;
    background:#d43f2f;
    display:flex;
    align-items:center;
    justify-content:center;
    font-weight:bold;
    font-size:20px;
}

.profile h3{
    font-size:22px;
}

.profile p{
    color:#d6d6d6;
}

/* MAIN CONTENT */

.main{
    flex:1;
    overflow-y:auto;
}

.topbar{
    height:90px;
    background:white;
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding:0 40px;
    border-bottom:1px solid #e4e4e4;
}

.topbar h1{
    font-size:24px;
    color:#1c1c34;
}

.top-icons{
    display:flex;
    align-items:center;
    gap:20px;
}

.notification{
    width:48px;
    height:48px;
    border-radius:14px;
    background:#f3f3f3;
    display:flex;
    align-items:center;
    justify-content:center;
    position:relative;
    cursor:pointer;
}

.notification span{
    position:absolute;
    top:-5px;
    right:-5px;
    background:#d43f2f;
    color:white;
    width:22px;
    height:22px;
    border-radius:50%;
    display:flex;
    align-items:center;
    justify-content:center;
    font-size:12px;
}

.user{
    width:48px;
    height:48px;
    border-radius:50%;
    background:#d43f2f;
    color:white;
    display:flex;
    align-items:center;
    justify-content:center;
    font-weight:bold;
}

/* PAGE CONTENT */

.content{
    padding:35px;
}

.section-title{
    font-size:48px;
    color:#1c1c34;
    margin-bottom:10px;
}

.section-subtitle{
    color:#6d6d6d;
    font-size:16px;
    margin-bottom:30px;
}

/* SEARCH BOX */

.search-box{
    background:white;
    padding:30px;
    border-radius:22px;
    display:grid;
    grid-template-columns:1fr 1fr 1fr 180px;
    gap:20px;
    box-shadow:0 2px 10px rgba(0,0,0,0.05);
    margin-bottom:35px;
}

.search-group label{
    display:block;
    margin-bottom:12px;
    color:#333;
    font-weight:600;
}

.search-group select,
.search-group input{
    width:100%;
    padding:16px;
    border:1px solid #ddd;
    border-radius:14px;
    font-size:16px;
    outline:none;
}

.search-btn{
    align-self:end;
}

.search-btn button{
    width:100%;
    padding:16px;
    background:#d43f2f;
    color:white;
    border:none;
    border-radius:14px;
    font-size:18px;
    cursor:pointer;
    transition:0.3s;
}

.search-btn button:hover{
    background:#bb3526;
}

/* DONOR CARDS */

.cards{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(350px,1fr));
    gap:25px;
}

.card{
    background:white;
    border-radius:22px;
    padding:28px;
    box-shadow:0 2px 10px rgba(0,0,0,0.05);
}

.card-top{
    display:flex;
    align-items:center;
    gap:18px;
}

.blood{
    width:66px;
    height:66px;
    border-radius:18px;
    background:#fdeaea;
    color:#d43f2f;
    font-weight:bold;
    font-size:30px;
    display:flex;
    align-items:center;
    justify-content:center;
}

.card h2{
    font-size:30px;
    color:#222;
}

.status{
    margin-top:8px;
    color:#777;
    font-size:16px;
}

.status .dot{
    width:12px;
    height:12px;
    background:#2dbb63;
    display:inline-block;
    border-radius:50%;
    margin-right:8px;
}

.line{
    height:1px;
    background:#eee;
    margin:24px 0;
}

.stats{
    display:flex;
    gap:35px;
    margin-bottom:25px;
}

.stats h3{
    font-size:35px;
    color:#1d1d35;
}

.stats p{
    color:#777;
    margin-top:5px;
}

.buttons{
    display:flex;
    gap:15px;
}

.call-btn,
.profile-btn{
    flex:1;
    padding:15px;
    border-radius:12px;
    font-size:18px;
    cursor:pointer;
    border:none;
}

.call-btn{
    background:#d43f2f;
    color:white;
}

.profile-btn{
    background:white;
    border:1px solid #ddd;
}

@media(max-width:1200px){

.search-box{
    grid-template-columns:1fr;
}

.sidebar{
    width:260px;
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
                â¤ï¸
            </div>

            <div>
                <h2>BloodConnect</h2>
                <p>Save Lives Together</p>
            </div>
        </div>

        <div class="menu">

            <div class="menu-title">Main</div>

            <a href="#">
                <i class="fa-regular fa-square"></i>
                Dashboard
            </a>

            <a href="#" class="active">
                <i class="fa-solid fa-magnifying-glass"></i>
                Find Donors
            </a>

            <a href="#">
                <i class="fa-regular fa-circle-question"></i>
                Emergency Request
            </a>

            <div class="menu-title">My Account</div>

            <a href="#">
                <i class="fa-solid fa-bars"></i>
                Request History
            </a>

            <a href="#">
                <i class="fa-regular fa-bell"></i>
                Notifications
                <div class="badge">2</div>
            </a>

            <a href="#">
                <i class="fa-regular fa-user"></i>
                My Profile
            </a>

            <div class="menu-title">Support</div>

            <a href="#">
                <i class="fa-regular fa-envelope"></i>
                Contact Us
            </a>

        </div>

    </div>

    <div class="profile">
        <div class="profile-avatar">RS</div>

        <div>
            <h3>Rahul</h3>
            <p>O+ Donor</p>
        </div>
    </div>

</div>

<!-- MAIN -->

<div class="main">

    <!-- TOPBAR -->

    <div class="topbar">

        <h1>Find Donors</h1>

        <div class="top-icons">

            <div class="notification">
                <i class="fa-regular fa-bell"></i>
                <span>2</span>
            </div>

            <div class="user">
                RS
            </div>

        </div>

    </div>

    <!-- CONTENT -->

    <div class="content">

        <h1 class="section-title">Search Donors</h1>

        <p class="section-subtitle">
            Find blood donors by group, city, and availability
        </p>

        <!-- SEARCH -->

        <div class="search-box">

            <div class="search-group">
                <label>Blood Group</label>

                <select>
                    <option>All Groups</option>
                    <option>O+</option>
                    <option>A+</option>
                    <option>B+</option>
                    <option>AB+</option>
                </select>
            </div>

            <div class="search-group">
                <label>City</label>

                <input type="text" placeholder="Enter city...">
            </div>

            <div class="search-group">
                <label>Availability</label>

                <select>
                    <option>Any</option>
                    <option>Available</option>
                    <option>Unavailable</option>
                </select>
            </div>

            <div class="search-btn">
                <button>
                    <i class="fa-solid fa-magnifying-glass"></i>
                    Search
                </button>
            </div>

        </div>

        <!-- CARDS -->

        <div class="cards">

            <!-- CARD 1 -->

            <div class="card">

                <div class="card-top">

                    <div class="blood">O+</div>

                    <div>
                        <h2>Rahul Sharma</h2>

                        <div class="status">
                            <span class="dot"></span>
                            Available Â· Hyderabad
                        </div>
                    </div>

                </div>

                <div class="line"></div>

                <div class="stats">

                    <div>
                        <h3>8</h3>
                        <p>Donations</p>
                    </div>

                    <div>
                        <h3>28</h3>
                        <p>Age</p>
                    </div>

                    <div>
                        <h3>04-10</h3>
                        <p>Last</p>
                    </div>

                </div>

                <div class="buttons">

                    <button class="call-btn">
                        <i class="fa-solid fa-phone"></i>
                        Call
                    </button>

                    <button class="profile-btn">
                        View Profile
                    </button>

                </div>

            </div>

            <!-- CARD 2 -->

            <div class="card">

                <div class="card-top">

                    <div class="blood">A+</div>

                    <div>
                        <h2>Priya Reddy</h2>

                        <div class="status">
                            <span class="dot"></span>
                            Available Â· Hyderabad
                        </div>
                    </div>

                </div>

                <div class="line"></div>

                <div class="stats">

                    <div>
                        <h3>5</h3>
                        <p>Donations</p>
                    </div>

                    <div>
                        <h3>25</h3>
                        <p>Age</p>
                    </div>

                    <div>
                        <h3>02-15</h3>
                        <p>Last</p>
                    </div>

                </div>

                <div class="buttons">

                    <button class="call-btn">
                        <i class="fa-solid fa-phone"></i>
                        Call
                    </button>

                    <button class="profile-btn">
                        View Profile
                    </button>

                </div>

            </div>

            <!-- CARD 3 -->

            <div class="card">

                <div class="card-top">

                    <div class="blood">B+</div>

                    <div>
                        <h2>Arjun Mehta</h2>

                        <div class="status">
                            <span class="dot" style="background:#bdbdbd"></span>
                            Unavailable Â· Mumbai
                        </div>
                    </div>

                </div>

                <div class="line"></div>

                <div class="stats">

                    <div>
                        <h3>12</h3>
                        <p>Donations</p>
                    </div>

                    <div>
                        <h3>35</h3>
                        <p>Age</p>
                    </div>

                    <div>
                        <h3>03-01</h3>
                        <p>Last</p>
                    </div>

                </div>

                <div class="buttons">

                    <button class="call-btn">
                        <i class="fa-solid fa-phone"></i>
                        Call
                    </button>

                    <button class="profile-btn">
                        View Profile
                    </button>

                </div>

            </div>

        </div>

    </div>

</div>

</body>
</html>
