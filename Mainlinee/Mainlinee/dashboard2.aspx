﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard2.aspx.cs" Inherits="Mainlinee.dashboard2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>MAINLINE</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">


      <!-- <link rel="stylesheet" href="css/style.red.css"> -->
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" src="css/dropSelect.scss">
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="css/fontastic.css">
    <!-- Google fonts - Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700">
    <!-- jQuery Circle-->
    <link rel="stylesheet" href="css/grasp_mobile_progress_circle-1.0.0.min.css">
    <!-- Custom Scrollbar-->
    <link rel="stylesheet" href="vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.blue.css">
    <link rel="stylesheet" href="css/custom.css">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.ico">

    <script src="js/jquery.min.js"></script>
    <script src="js/pages/home.js"></script>

    
</head>
<body>
    
        <!-- Side Navbar -->
        <nav class="side-navbar">
          <div class="side-navbar-wrapper">
            <!-- Sidebar Header    -->
            <div class="sidenav-header d-flex align-items-center justify-content-center">
              <!-- User Info-->
              <div class="sidenav-header-inner text-center">
                  <% String nome = Session["nomeUser"].ToString(); %>
                  <h2 id="nomeUser" class="h5"><%=nome %></h2><span>Web Developer</span>
              </div>
              <!-- Small Brand information, appears on minimized sidebar-->
              <div class="sidenav-header-logo"><a href="index.html" class="brand-small text-center"> <strong>B</strong><strong class="text-primary">D</strong></a></div>
            </div>
            <!-- Sidebar Navigation Menus-->
            <div class="main-menu">
              <h5 class="sidenav-heading">Menu</h5>
              <ul id="side-main-menu" class="side-menu list-unstyled">
                <li id="home"><a > <i class="icon-home"></i>Home</a></li>
                <li id="linhas"><a > <i class="fas fa-subway"></i>Linhas</a></li>
                <li id="graficos"><a > <i class="fas fa-chart-pie"></i>Analytcs</a></li>
                <li id="suporte"><a > <i class="fas fa-headset"></i>Suporte</a></li>
              </ul>
            </div>
          </div>
        </nav>
        <div class="page">
          <!-- navbar-->
          <header class="header">
            <nav class="navbar">
              <div class="container-fluid">
                <div class="navbar-holder d-flex align-items-center justify-content-between">
                  <div class="navbar-header"><a id="toggle-btn" href="#" class="menu-btn"><i class="icon-bars"> </i></a><a href="index.html" class="navbar-brand">
                      <div class="brand-text d-none d-md-inline-block"><span>MainLine </span><strong class="text-primary">Dashboard</strong></div></a></div>
                  <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">

                    <!-- Log out-->
                    <li class="nav-item"><a href="login.html" class="nav-link logout"> <span class="d-none d-sm-inline-block">Logout</span><i class="fa fa-sign-out"></i></a></li>
                  </ul>
                </div>
              </div>
            </nav>
          </header>
          <!-- Header Section-->
          <section class="dashboard-header section-padding">
            <div class="container">
                <div id="Home">
                  <div class="jumbotron">
                    <h1>Home</h1>
                  </div>
                </div>

                <div id="Linhas">
                    <div class="dropdown">
                      <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Dropdown button
                      </button>
                      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <input class="dropdown-item" href="#" value="vai se fuder namoral" data-id="1">
                        <input class="dropdown-item" href="#" value="Esmeralda" data-id="2">
                        <input class="dropdown-item" href="#" value="Diamante" data-id="3">
                      </div>
                    </div>
                            <% 
                                Mainlinee.oshiDAO oshi = new Mainlinee.oshiDAO();
                                int cont = 0;
                                while (oshi.selectAtivo(Int32.Parse(Session["Usuario"].ToString())).Count > cont)
                                {

                                    String id = oshi.selectAtivo(Int32.Parse(Session["Usuario"].ToString()))[cont].id;
                                    Session["idAtivo"] = oshi.selectAtivo(Int32.Parse(Session["Usuario"].ToString()))[cont].id;
                            %>
                    <figure class="figure">
                        <a href="charts.aspx?id=<%=id %>">
                        <img src="img/computador.jpg"   class="figure-img img-fluid rounded" alt="A generic square placeholder image with rounded corners in a figure.">
                        </a> 
                        <figcaption class="figure-caption"><%=id%></figcaption>
                    </figure>

                            <%
                                cont++;
                            }
                            %>
                </div>

                <div id="Suporte">
                  <div class="jumbotron">
                    <h1>Suporte</h1>
                  </div>
                </div>

                <div id="Analytcs">
                  <div class="jumbotron">
                    <h1>graficos</h1>
                  </div>
                </div>
            </div>
          </section>

          <footer class="main-footer">
            <div class="container-fluid">
              <div class="row">
                <div class="col-sm-6">
                  <p>MAINLINE &copy;</p>
                </div>
              </div>
            </div>
          </footer>
        </div>
    

    <!-- JavaScript files-->
    <script src="js/bootstrap-dropselect.min.js"></script>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper.js/umd/popper.min.js"> </script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="js/grasp_mobile_progress_circle-1.0.0.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <!-- <script src="vendor/chart.js/Chart.min.js"></script> -->
    <script src="vendor/jquery-validation/jquery.validate.min.js"></script>
    <script src="vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- Main File-->
    <script src="js/front.js"></script>

    <!-- DATA TABLE -->
    <script src="js/dataTable.min.js"></script>
    <link rel="stylesheet" href="css/dataTable.min.css">
    <script src="js/dataTables.select.min.js"></script>
    <!-- <script src="js/dataTables.buttons.min.js"></script> -->

    <!-- JavaScript files-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper.js/umd/popper.min.js"> </script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="js/grasp_mobile_progress_circle-1.0.0.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/jquery-validation/jquery.validate.min.js"></script>
    <script src="vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/charts-custom.js"></script>
</body>
</html>
