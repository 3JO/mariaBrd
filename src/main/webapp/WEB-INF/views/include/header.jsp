<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IBITU | HoloVision</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<!-- Bootstrap 3.3.4 -->
<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<!-- Font Awesome Icons -->
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<!-- Ionicons -->
<link
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"
	rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="/resources/dist/css/AdminLTE.min.css" rel="stylesheet"
	type="text/css" />
<link href="/resources/plugins/iCheck/square/blue.css" rel="stylesheet"
	type="text/css" />
<!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
<link href="/resources/dist/css/skins/_all-skins.min.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="/resources/bootstrap/css/weather lamp.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<!-- jQuery 2.1.4 -->
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<script type="text/javascript" src="/resources/js/upload.js"></script>
<!-- Bootstrap 3.3.2 JS -->
<script src="/resources/bootstrap/js/bootstrap.min.js"
	type="text/javascript"></script>
<!-- iCheck -->
<script src="/resources/plugins/iCheck/icheck.min.js"
	type="text/javascript"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.5/handlebars.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body class="skin-blue sidebar-mini">
	<div class="wrapper">
	<c:if test="${empty login}">
			<header class="main-header">
				<!-- Logo -->
				<a href="http://localhost:8080/" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
					<span class="logo-mini"><b>IBU</b></span> <!-- logo for regular state and mobile devices -->
					<span class="logo-lg"><b>I.BIT.U</b> PROJECT</span>
				</a>
				<!-- Header Navbar: style can be found in header.less -->
				<nav class="navbar navbar-static-top" role="navigation">
					<!-- Sidebar toggle button-->
					<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
						role="button"> <span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
					</a>
				</nav>
			</header>
		</c:if>
	
		<c:if test="${not empty login}">
			<header class="main-header">
				<!-- Logo -->
				<a href="http://localhost:8080/" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
					<span class="logo-mini"><b>IBU</b></span> <!-- logo for regular state and mobile devices -->
					<span class="logo-lg"><b>I.BIT.U</b> PROJECT</span>
				</a>
				<!-- Header Navbar: style can be found in header.less -->
				<nav class="navbar navbar-static-top" role="navigation">
					<!-- Sidebar toggle button-->
					<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
						role="button"> <span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
					</a>
					<div class="navbar-custom-menu">
						<ul class="nav navbar-nav">

							<!-- User Account: style can be found in dropdown.less -->
							<li class="dropdown user user-menu"><a href="#"
								class="dropdown-toggle" data-toggle="dropdown"> <img
									src="/resources/dist/img/user2-160x160.jpg" class="user-image"
									alt="User Image" /> <span class="hidden-xs">${login.uname }&nbsp;<i
										class="glyphicon glyphicon-heart"></i></span>
							</a>
					</div>
				</nav>
			</header>
		</c:if>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">

				<c:if test="${empty login}">
					<div class="sidebar-menu">
						<form action="/user/loginPost" method="post"
							style="height: 140px;">
							<div class="form-group has-feedback"
								style="border-right-width: -; margin-right: 10px; margin-left: 10px; margin-top: 15px;">
								<input type="text" name="uid" class="form-control"
									placeholder="USER ID" /> <span
									class="glyphicon glyphicon-envelope form-control-feedback"></span>
							</div>
							<div class="form-group has-feedback"
								style="border-right-width: -; margin-right: 10px; margin-left: 10px; margin-top: 15px; margin-bottom: 0px;">
								<input type="password" name="upw" class="form-control"
									placeholder="Password" /> <span
									class="glyphicon glyphicon-lock form-control-feedback"></span>
							</div>
							<div class="form-group has-feedback"
								style="border-right-width: -; margin-right: 10px; margin-left: 10px; margin-top: 15px; margin-bottom: 15px; height: 34px;">
								<div class="col-xs-6"
									style="margin-left: 0px; color: white; padding-left: 0px;">
									<div class="checkbox icheck">
										<label> <input type="checkbox" name="useCookie">
											Remember
										</label>
									</div>
								</div>
								<!-- /.col -->
								<div class="col-xs-6 pull-right"
									style="padding-left: 0px; padding-right: 0px; margin-right: 0px; height: 40px;">
									<button type="submit"
										class="btn btn-primary btn-block btn-flat">
										<i class="glyphicon glyphicon-log-in"></i>&nbsp; Sign In
									</button>
								</div>
								<!-- /.col -->
							</div>

						</form>

						<hr width="90%" style="margin-bottom: 5px; margin-top: 15px;">

						<ul class="sidebar-menu">
							<li class="treeview"><a href="#"
								style="padding-bottom: 10px; padding-top: 10px;"> <i
									class="glyphicon glyphicon-search"></i> <span>I forgot
										my password</span>
							</a></li>
							<li class="treeview"><a
								href="http://localhost:8080/account/createAccount"
								style="padding-bottom: 10px; padding-top: 10px;"> <i
									class="glyphicon glyphicon-heart"></i> <span>Register a
										new membership</span>
							</a></li>
						</ul>

						<hr width="90%" style="margin-bottom: 15px; margin-top: 5px;">
					</div>
				</c:if>

				<c:if test="${not empty login}">
					<div class="user-panel"
						style="padding-left: 5px; padding-right: 5px;">
						<h4 style="color: white; margin-top: 0px; margin-bottom: 0px;">
							<i class="glyphicon glyphicon-flash"></i>&nbsp;Welcome to
							HoloVision&nbsp;<i class="glyphicon glyphicon-flash"></i>
						</h4>
						<br>
						<div class="pull-left image">
							<img src="/resources/dist/img/user2-160x160.jpg"
								class="img-circle" alt="User Image" />
						</div>

						<div class="pull-right info" style="font-size: 14pt">

							${login.uname }&nbsp;<i class="glyphicon glyphicon-heart"></i><br>
							<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
						</div>
					</div>


					<div class="form-group has-feedback"
						style="border-right-width: -; margin-right: 10px; margin-left: 10px; margin-top: 15px; margin-bottom: 15px; height: 34px;">

						<!-- /.col -->
						<div class="col-xs-6 pull-left"
							style="padding-left: 0px; padding-right: 0px; margin-right: 0px; height: 40px;">
							<form action=#>
								<button type="submit" class="btn btn-warning btn-block btn-flat">
									<i class="glyphicon glyphicon-cog"></i>&nbsp; My Info
								</button>
							</form>
						</div>

						<div class="col-xs-6 pull-right"
							style="padding-left: 0px; padding-right: 0px; margin-right: 0px; height: 40px;">
							<form action="/user/logout" method="post">
								<button type="submit" class="btn btn-danger btn-block btn-flat">
									<i class="glyphicon glyphicon-log-out"></i>&nbsp; Sign out
								</button>
							</form>

						</div>
						<!-- /.col -->
					</div>

				</c:if>


				<!-- Sidebar user panel -->
				<!-- 	<div class="user-panel">
					<div class="pull-left image">
						<img src="/resources/dist/img/user2-160x160.jpg"
							class="img-circle" alt="User Image" />
					</div>
					<div class="pull-left info">
						<p>Alexander Pierce</p>

						<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
					</div>
				</div> -->


				<!-- 			
			
		 새로 만든 부분 id 패스워드
          <form style = "margin-top: 30px;" action="#" method="get" class="sidebar-form">
            <div>
              <input type="text" name="q" class="form-control" placeholder="ID">
            </div>
          </form>

          <form action="#" method="get" class="sidebar-form">
            <div>
              <input type="text" name="q" class="form-control" placeholder="Pass Word">
            </div>
          </form>



          <div style="left: 10px" class="sidebar-form-box-footer clearfix">
           <div style="margin-left: 10px; margin-bottom: 30px;">

            <a href="http://localhost:8080/account/createAccount"><button style="width: 104px" class="btn btn-default"> 회원가입</button></a>
            <button style="width: 104px" type="submit" class="btn btn-primary">  로그인  </button>

          </div>

            -->









				<!-- sidebar menu: : style can be found in sidebar.less -->
				<ul class="sidebar-menu">
					<li class="header">WELCOME</li>
					<li class="active treeview"><a
						href="http://localhost:8080/iboard/"> <i
							class="fa fa-info-circle"></i> <span>Introduce</span>
					</a></li>

					<li class="header">BOARDS</li>
					<li class="treeview"><a
						href="http://localhost:8080/snboard/list"> <i
							class="fa fa-paper-plane"></i> <span>Notice</span>
					</a></li>

					<li class="treeview"><a
						href="http://localhost:8080/qboard/list"> <i
							class="fa fa-mortar-board"></i> <span>Q&A</span>
					</a></li>

					<li class="header">REFERENCE</li>
					<li class="treeview"><a
						href="http://localhost:8080/dboard/list"> <i
							class="fa fa-download"></i> <span>Downloads</span>
					</a></li>
				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>

		<script>
			$(function() {
				$('input').iCheck({
					checkboxClass : 'icheckbox_square-blue',
					radioClass : 'iradio_square-blue',
					increaseArea : '20%' // optional
				});
			});
		</script>