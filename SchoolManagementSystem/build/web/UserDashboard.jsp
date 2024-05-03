<%-- 
    Document   : UserDashboard
    Created on : Apr 26, 2024, 6:37:49 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> Responsive Sidebar Menu </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&amp;display=swap"/>
        <link rel="stylesheet" href="js/user.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"/>
        
    </head>

    <body onload="UserDashLoad('dash')">
        <div class="sidebar">
            <div class="logo-details">
                <i class='bx bxs-institution icon'></i>
                <div class="logo_name">My School</div>
                <i class='bx bx-menu' id="btn"></i>
            </div>
            <ul class="nav-list">
                <li>
                    <i class='bx bx-search'></i>
                    <input type="text" placeholder="Search...">
                    <span class="tooltip">Search</span>
                </li>
                <li onclick="UserDashLoad('dash')">
                    <a href="#">
                        <i class='bx bx-home'></i>
                        <span class="links_name">Home</span>

                    </a>
                    <span class="tooltip">Home</span>

                </li>
                <li onclick="UserDashLoad('user')">
                    <a href="#">
                        <i class='bx bx-user'></i>
                        <span class="links_name">User</span>
                    </a>
                    <span class="tooltip">User</span>
                </li>
                <li onclick="UserDashLoad('contact')">
                    <a href="#">
                        <i class='bx bx-phone'></i>
                        <span class="links_name">Contact Us</span>
                    </a>
                    <span class="tooltip">Contact</span>
                </li>
                <li onclick="UserDashLoad('class')">
                    <a href="#">
                        <i class='bx bxs-school'></i>
                        <span class="links_name">My Class</span>
                    </a>
                    <span class="tooltip">Class</span>
                </li>
                <li onclick="UserDashLoad('lib')">
                    <a href="#">
                        <i class='bx bx-book'></i>
                        <span class="links_name">My Library </span>
                    </a>
                    <span class="tooltip">Library</span>
                </li>
                <li onclick="UserDashLoad('setting')">
                    <a href="#">
                        <i class='bx bx-cog'></i>
                        <span class="links_name">Setting</span>
                    </a>
                    <span class="tooltip">Setting</span>
                </li>
                <li class="profile" onclick="Logout()">
                    <div class="profile-details">
                        <i class='bx bx-export'></i>
                        <div class="name_job">
                            <div class="name">Logout</div>
                        </div>
                    </div>
                    <i class='bx bx-log-out' id="log_out"></i>
                </li>
            </ul>
        </div>
        <section class="home-section">

            <div id="dash"></div>
        </section>
        <script src="js/user.js"></script>
        <script src="js/script.js"></script>
    </body>
</html>
