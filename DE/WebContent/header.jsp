<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html dir="ltr" lang="en">
<head>
<!-- Meta Tags -->
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<meta name="description" content="MedikalPro | Health & Medical Responsive HTML5 Template" />
<meta name="keywords" content="care, clinic, corporate, dental, dentist, doctor" />
<meta name="author" content="ThemeMascot" />

<!-- Page Title -->
<title>Aadhar Enable Medical Services</title>

<!-- Favicon and Touch Icons -->
<link href="images/favicon.png" rel="shortcut icon" type="image/png">
<link href="images/apple-touch-icon.png" rel="apple-touch-icon">
<link href="images/apple-touch-icon-72x72.png" rel="apple-touch-icon" sizes="72x72">
<link href="images/apple-touch-icon-114x114.png" rel="apple-touch-icon" sizes="114x114">
<link href="images/apple-touch-icon-144x144.png" rel="apple-touch-icon" sizes="144x144">

<!-- Stylesheet -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/home.css" rel="stylesheet" type="text/css">
<link href="css/jquery-ui.min.css" rel="stylesheet" type="text/css">
<link href="css/animate.css" rel="stylesheet" type="text/css">
<link href="css/css-plugin-collections.css" rel="stylesheet"/>
<!-- CSS | menuzord megamenu skins -->
<link href="css/menuzord-megamenu.css" rel="stylesheet"/>
<link id="menuzord-menu-skins" href="css/menuzord-skins/menuzord-boxed.css" rel="stylesheet"/>
<!-- CSS | Main style file -->
<link href="css/style-main.css" rel="stylesheet" type="text/css">
<!-- CSS | Preloader Styles -->
<link href="css/preloader.css" rel="stylesheet" type="text/css">
<!-- CSS | Custom Margin Padding Collection -->
<link href="css/custom-bootstrap-margin-padding.css" rel="stylesheet" type="text/css">
<!-- CSS | Responsive media queries -->
<link href="css/responsive.css" rel="stylesheet" type="text/css">
<!-- CSS | Style css. This is the file where you can place your own custom css code. Just uncomment it and use it. -->
<!-- <link href="css/style.css" rel="stylesheet" type="text/css"> -->

<!-- Revolution Slider 5.x CSS settings -->
<link  href="js/revolution-slider/css/settings.css" rel="stylesheet" type="text/css"/>
<link  href="js/revolution-slider/css/layers.css" rel="stylesheet" type="text/css"/>
<link  href="js/revolution-slider/css/navigation.css" rel="stylesheet" type="text/css"/>

<!-- CSS | Theme Color -->
<link href="css/colors/theme-skin-color-set2.css" rel="stylesheet" type="text/css">

<!-- external javascripts -->
<script src="js/jquery-2.2.4.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- JS | jquery plugin collection for this theme -->
<script src="js/jquery-plugin-collection.js"></script>

<!-- Revolution Slider 5.x SCRIPTS -->
<script src="js/revolution-slider/js/jquery.themepunch.tools.min.js"></script>
<script src="js/revolution-slider/js/jquery.themepunch.revolution.min.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
	
</head>

<!-- Body -->

<body class="">
<div id="wrapper">
  <!-- preloader -->
  <div id="preloader">
    <div id="spinner">
      <div class="preloader-dot-loading">
        <div class="cssload-loading"><i></i><i></i><i></i><i></i></div>
      </div>
    </div>
    <div id="disable-preloader" class="btn btn-default btn-sm">Disable Preloader</div>
  </div>
  
	<!-- Header -->
	<header id="header" class="header">
	  <div class="header-middle p-0 bg-lighter xs-text-center">
	      <div class="container pt-20 pb-20">
	        <div class="row">
		      <div class="col-xs-4 col-sm-4 col-md-4">
			        <div class="widget no-border sm-text-center mt-10 mb-10 m-0">
			          <i class="fa fa-envelope text-theme-colored2 font-32 mt-5 mr-sm-0 sm-display-block pull-left flip sm-pull-none"></i>
			          <a href="#" class="font-12 text-gray text-uppercase">Mail Us Today</a>
			          <h5 class="font-13 text-black m-0"> AEMS@gmail.com</h5>
			        </div>
	          </div>
		      <div class="col-xs-4 col-sm-4 col-md-4">
			        <div class="widget no-border sm-text-center mt-10 mb-10 m-0">
			          <i class="fa fa-phone-square text-theme-colored2 font-32 mt-5 mr-sm-0 sm-display-block pull-left flip sm-pull-none"></i>
			          <a href="#" class="font-12 text-gray text-uppercase">Call us for more details</a>
			          <h5 class="font-13 text-black m-0">9979994318</h5>
			        </div>
		      </div>
		      <div class="col-xs-4 col-sm-4 col-md-4">
			        <div class="widget no-border sm-text-center mt-10 mb-10 m-0">
			          <i class="fa fa-building-o text-theme-colored2 font-32 mt-5 mr-sm-0 sm-display-block pull-left flip sm-pull-none"></i>
			          <a href="#" class="font-12 text-gray text-uppercase">Location</a>
			          <h5 class="font-13 text-black m-0">L.D.Collage of Engineering</h5>
			        </div>
		      </div>
		    </div>
		</div>
		</div>
	  <div class="header-nav">
	      <div class="header-nav-wrapper navbar-scrolltofixed bg-white">
	        <div class="container">
	          <nav id="menuzord" class="menuzord green">
              <ul class="menuzord-menu">
                <li><a href="#">Home</a>
                </li>
                
                <li><a href="<%
	              		if((session.getAttribute("aadhar")) != null){
	              			out.print("appoitment.jsp");
	              		}
	              		else{
	              			out.print("checkupList.jsp");
	              		}
	             %>">
                <%
	              		if((session.getAttribute("aadhar")) != null){
	              			out.print("Appoitment");
	              		}
	              		else{
	              			out.print("Checkup List");
	              		}
	             %>
                </a>
                </li>
                <%
	              		if((session.getAttribute("aadhar")) != null){
	              			out.print("<li><a href="+"'history.jsp'" +">History</a></li>");
	              		}
	             %>
                
                <li><a href="#">Other Services</a>
                </li>
                
                <li><a href="blog.jsp">Blog</a>
                </li>
                
                <li><a href="contact-us.jsp">Contact Us</a>
                </li>
                <li>
                	<div class="ml-lg-200 mb-sm-10 mt-sm-10 sm-pull-center col-sm-3">
	              <a class="btn btn-colored btn-flat btn-theme-colored " href="<%
	              		if((session.getAttribute("did")) != null || session.getAttribute("aadhar") != null){
	              			out.print("logout.jsp");
	              		}
	              		else{
	              			out.print("index.jsp");
	              		}
	              	%>">
	              	<%
	              		if((session.getAttribute("did")) != null || session.getAttribute("aadhar") != null){
	              			out.print("Logout");
	              		}
	              		else{
	              			out.print("Login");
	              		}
	              	%>
	              </a>
	  		 </div>
                </li>
              </ul>
	          </nav>
	        </div>
	      </div>
	  </div>
	</header>
</head>
