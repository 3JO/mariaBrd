<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<title>Insert title here</title>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>IBITU | Introduce</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.min.css">

    <link rel="stylesheet" href="/resources/bootstrap/css/weather lamp.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="/resources/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="/resources/dist/css/skins/_all-skins.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="/resources/plugins/iCheck/flat/blue.css">
    <!-- Morris chart -->
    <link rel="stylesheet" href="/resources/plugins/morris/morris.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <!-- Date Picker -->
    <link rel="stylesheet" href="/resources/plugins/datepicker/datepicker3.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="/resources/plugins/daterangepicker/daterangepicker-bs3.css">
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">

      <header class="main-header">
        <!-- Logo -->
        <a href="http://localhost:8080/" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>IBU</b></span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg">I.<b>BIT</b>.U</span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">

              <!-- Notifications: style can be found in dropdown.less -->
              <li class="dropdown notifications-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-bell-o"></i>
                  <span class="label label-warning">10</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">You have 10 notifications</li>
                  <li>
                    <!-- inner menu: contains the actual data -->
                    <ul class="menu">
                      <li>
                        <a href="#">
                          <i class="fa fa-users text-aqua"></i> 5 new members joined today
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-warning text-yellow"></i> Very long description here that may not fit into the page and may cause design problems
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-users text-red"></i> 5 new members joined
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-shopping-cart text-green"></i> 25 sales made
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-user text-red"></i> You changed your username
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li class="footer"><a href="#">View all</a></li>
                </ul>
              </li>

              <!-- User Account: style can be found in dropdown.less -->
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <img src="/resources/dist/img/user1-128x128.jpg" class="user-image" alt="User Image">
                  <span class="hidden-xs">Jongin Choi</span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
                    <img src="/resources/dist/img/user1-128x128.jpg" class="img-circle" alt="User Image">
                    <p>
                      Jongin Choi - MS-Office Master
                      <small>Member since Nov. 2012</small>
                    </p>
                  </li>
                  <!-- Menu Body -->
                  <li class="user-body">
                    <div class="col-xs-4 text-center">
                      <a href="#">Followers</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Sales</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Friends</a>
                    </div>
                  </li>
                  <!-- Menu Footer-->
                  <li class="user-footer">
                    <div class="pull-left">
                      <a href="#" class="btn btn-default btn-flat">Profile</a>
                    </div>
                    <div class="pull-right">
                      <a href="#" class="btn btn-default btn-flat">Sign out</a>
                    </div>
                  </li>
                </ul>
              </li>
            </ul>
          </div>
        </nav>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="/resources/dist/img/user1-128x128.jpg" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
              <p>Jongin Choi</p>
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>
          <!-- search form -->
          <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
              <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i></button>
              </span>
            </div>
          </form>
          <!-- /.search form -->
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">WELCOME</li>

            <li class="active treeview">
              <a href="http://localhost:8080/iboard/">
                <i class="fa fa-info-circle"></i> <span>Introduce</span>
              </a>
            </li>

            <li class="header">BOARDS</li>
            <li class="treeview">
              <a href="http://localhost:8080/snboard/list">
                <i class="fa fa-paper-plane"></i> <span>Notice</span>
              </a>
            </li>

            <li class="treeview">
              <a href="http://localhost:8080/qboard/list">
                <i class="fa fa-mortar-board"></i> <span>Q&A</span>
              </a>
            </li>

            <li class="header">REFERENCE</li>
            <li class="treeview">
              <a href="http://localhost:8080/dboard/list">
                <i class="fa fa-download"></i> <span>Downloads</span>
              </a>
            </li>

          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            INTRODUCE PAGE
            <small>Current version 1.0.0</small>
          </h1>

        </section>

        <!-- Main content -->
        <section class="content">
          <!-- Small board boxes (Stat box) -->

          <div>

            <span style=color=plum;filter:shadow;height:10px> <font size=5 face=굴림 color="#0099FF"><h1>
            "Special One"</h1></font></span>

            <h4>시간과 알람, 오늘의 날씨, 실시간 뉴스 등을 홀로그램으로 한 눈에!</h4>
            </br>
          </div>
          <!--<img src="weatherLIVE2.gif"  width="100%" height="700px">-->
        <!--  <img src="weather%20lamp.jpg"  width="100%" height="400">-->
          <video src = "/resources/weatherLIVE.mp4" controls autoplay loop="-3"></video>


          <div>&nbsp;</div>



          <div class="callout callout-info">
            <h4>Leap Motion 기능</h4>

            <p>모든 컨트롤을 Leal Motion 으로 제어 할 수 있어, 먼 곳에 있어도 보다 편리하게 제어 할 수 있습니다.</p>
          </div>

          <div class="callout callout-warning">
            <h4>Time / alram 기능</h4>
            <p>한밤중에도 현재 시간을 홀로그램으로 한 눈에 볼 수 있으며, 시계 기능 뿐 아니라 알람기능이 내장되어 있습니다.</p>
          </div>

          <div class="callout callout-info">
            <h4>Today Weather 기능</h4>
            <p>날씨를 확인 하지 않아도 그날의 오전 / 오후 날씨가 매일 업데이트 되어 홀로그램으로 확인 할 수 있습니다.</p>
          </div>

          <div class="callout callout-warning">
            <h4>Naver Real-time Search 기능</h4>
            <p>인터넷으로 찾아보지 않아도 포탈사이트 네이버의 실시간 인기 검색어를 홀로그램으로 한눈에 확인 할 수 있습니다.</p>
          </div>

          <h4><b>이렇듯 여러분의 실 생활에서 가장 가까이, 가장 많이 쓰이는 기능만을 탑재하여 여러분의 생활이 보다 편리 할 수 있도록 제품명은(는) 도울 것입니다.</b></h4>

          <!--<h3>Leap Motion 기능</h3>-->
              <!--<h4>모든 컨트롤을 Leal Motion 으로 제어 할 수 있어, 먼 곳에 있어도 보다 편리하게 제어 할 수 있습니다.</h4>-->
          <!--</br>-->

              <!--<h3>Time / alram 기능</h3>-->
              <!--<h4>한밤중에도 현재 시간을 홀로그램으로 한 눈에 볼 수 있으며, 시계 기능 뿐 아니라 알람기능이 내장되어 있습니다.</h4>-->
          <!--</br>-->

              <!--<h3>Today Weather 기능</h3>-->
              <!--<h4>날씨를 확인 하지 않아도 그날의 오전 / 오후 날씨가 매일 업데이트 되어 홀로그램으로 확인 할 수 있습니다.</h4>-->
          <!--</br>-->

              <!--<h3>Naver Real-time Search 기능</h3>-->
              <!--<h4>인터넷으로 찾아보지 않아도 포탈사이트 네이버의 실시간 인기 검색어를 홀로그램으로 한눈에 확인 할 수 있습니다.</h4>-->
          <!--</br>-->
          <!--</br>-->







        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
      <footer class="main-footer">
        <div class="pull-right hidden-xs">
          <b>Version</b> 1.0.0
        </div>
        <strong>Copyright &copy; 2015-2016 <a href="http://cafe.naver.com/bitjava75">IBITU</a>.</strong> All rights reserved.
      </footer>
    </div><!-- ./wrapper -->

    <!-- jQuery 2.1.4 -->
    <script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
      $.widget.bridge('uibutton', $.ui.button);
    </script>
    <!-- Bootstrap 3.3.5 -->
    <script src="/resources/bootstrap/js/bootstrap.min.js"></script>
    <!-- Morris.js charts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="/resources/plugins/morris/morris.min.js"></script>
    <!-- Sparkline -->
    <script src="/resources/plugins/sparkline/jquery.sparkline.min.js"></script>
    <!-- jvectormap -->
    <script src="/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="/resources/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <!-- jQuery Knob Chart -->
    <script src="/resources/plugins/knob/jquery.knob.js"></script>
    <!-- daterangepicker -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
    <script src="/resources/plugins/daterangepicker/daterangepicker.js"></script>
    <!-- datepicker -->
    <script src="/resources/plugins/datepicker/bootstrap-datepicker.js"></script>
    <!-- Bootstrap WYSIHTML5 -->
    <script src="/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
    <!-- Slimscroll -->
    <script src="/resources/plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="/resources/plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="/resources/dist/js/app.min.js"></script>
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="/resources/dist/js/pages/dashboard.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="/resources/dist/js/demo.js"></script>


  </body>
</html>