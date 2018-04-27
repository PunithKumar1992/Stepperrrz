<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>StepperzStudio::Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="admincss/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="admincss/style.css" rel='stylesheet' type='text/css' />
<link href="admincss/style-responsive.css" rel="stylesheet"/>
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="admincss/font.css" type="text/css"/>
<link href="admincss/font-awesome.css" rel="stylesheet"> 
<link rel="stylesheet" href="admincss/morris.css" type="text/css"/>
<!-- calendar -->
<link rel="stylesheet" href="admincss/monthly.css">
<!-- //calendar -->
<!-- //font-awesome icons -->
<script src="adminjs/jquery2.0.3.min.js"></script>
<script src="adminjs/raphael-min.js"></script>
<script src="adminjs/morris.js"></script>
<link rel="stylesheet" href="admincss/lightbox.css">
</head>
<body>
<section id="container">
<!--header start-->
<header class="header fixed-top clearfix">
<!--logo start-->
<div class="brand">
    <a href="bashboard.html" class="logo">
        <img src="images/logo.png" alt="stepper" style="width:90%;margin-top:-9%;">
    </a>
    <div class="sidebar-toggle-box">
        <div class="fa fa-bars"></div>
    </div>
</div>
<!--logo end-->

<div class="top-nav clearfix">
    <!--search & user info start-->
    <ul class="nav pull-right top-menu">
        
        <!-- user login dropdown start-->
        <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <img alt="" src="images/2.png">
                <span class="username">${sessionScope.activeuser}</span>
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu extended logout">
                <li><a href="adminprofile.html"><i class=" fa fa-suitcase"></i>Profile</a></li>
                <li><a href="adminadd.html"><i class="fa fa-cog"></i> Settings</a></li>
                <li><a href="login.html"><i class="fa fa-key"></i> Log Out</a></li>
            </ul>
        </li>
        <!-- user login dropdown end -->
       
    </ul>
    <!--search & user info end-->
</div>
</header>
<!--header end-->
<!--sidebar start-->
<aside style="overflow:hidden;">
			<div id="sidebar" class="nav-collapse" style="overflow-y: scroll;display: flex;">
				<!-- sidebar menu start-->
				<div class="leftside-navigation">
					<ul class="sidebar-menu" id="nav-accordion">
						<li><a class="active" href="bashboard.html"> <i
								class="fa fa-dashboard"></i> <span>Dashboard</span>
						</a></li>

						<li class="sub-menu"><a href="javascript:;"> <i
								class="fa fa-book"></i> <span>Time_Table</span>
						</a>
							<ul class="sub">
								<li class="sub-menu"><a href="sadashivtimetable.html">
										<i class="fa fa-bullhorn" aria-hidden="true"></i> <span>sadashiva
											Nagar</span>
								</a></li>
						<li class="sub-menu"><a href="kalyantimetable.html"> <i
								class="fa fa-bullhorn" aria-hidden="true"></i> <span>Kalyan
									Nagar</span>
						</a></li>
						<li class="sub-menu"><a href="mallesharamtimetable.html">
								<i class="fa fa-bullhorn" aria-hidden="true"></i> <span>Malleshwaram</span>
						</a></li>
						</ul>
						</li>
					<li><a href="adminbanner.html"> <i class="fa fa-glass"></i>
							<span>Banner</span>
					</a></li>
					<li><a href="adminads.html"> <i class="fa fa-adn"
							aria-hidden="true"></i> <span>Adds</span>
					</a></li>


					<li class="sub-menu"><a href="javascript:;"> <i
							class="fa fa-book"></i> <span>Gallery</span>
					</a>
						<ul class="sub">
							<li class="sub-menu"><a href="javascript:;"> <i
									class="fa fa-book"></i> <span>Images</span>
							</a>
								<ul class="sub">
									<li class="sub-menu"><a href="adminsadagallery.html">
											<i class="fa fa-bullhorn" aria-hidden="true"></i> <span>sadashiva
												Nagar</span>
									</a></li>
							<li class="sub-menu"><a href="adminkalagallery.html"> <i
									class="fa fa-bullhorn" aria-hidden="true"></i> <span>Kalyan
										Nagar</span>
							</a></li>
					<li class="sub-menu"><a href="adminmalleshgallery.html"> <i
							class="fa fa-bullhorn" aria-hidden="true"></i> <span>Malleshwaram</span>
					</a></li>
					</ul>
					</li>
					<li class="sub-menu"><a href="javascript:;"> <i
							class="fa fa-book"></i> <span>Videos</span>
					</a>
						<ul class="sub">
							<li class="sub-menu"><a href="adminsadavideo.html"> <i
									class="fa fa-bullhorn" aria-hidden="true"></i> <span>sadashiva
										Nagar</span>
							</a></li>
					<li class="sub-menu"><a href="adminkalavideo.html"> <i
							class="fa fa-bullhorn" aria-hidden="true"></i> <span>Kalyan
								Nagar</span>
					</a></li>
					<li class="sub-menu"><a href="adminmalleshvideo.html"> <i
							class="fa fa-bullhorn" aria-hidden="true"></i> <span>Malleshwaram</span>
					</a></li>
					</ul>
					</li>
					</ul>
					
					
					<li><a href="admintestimonials.html"> <i
							class="fa fa-comments-o" aria-hidden="true"></i> <span>testimonials</span>
					</a></li>
					<li><a href="admincareer.html"> <i
							class="fa fa-caret-square-o-right" aria-hidden="true"></i> <span>Career</span>
					</a></li>
					<li><a href="adminfeedback.html"> <i
							class="fa fa-commenting-o" aria-hidden="true"></i> <span>Feedback</span>
					</a></li>
					<li><a href="studentregbyadmin.html"> <i
							class="fa fa-registered" aria-hidden="true"></i> <span>Registration</span>
					</a></li>

					<!-- <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-envelope"></i>
                        <span>Mail </span>
                    </a>
                    <ul class="sub">
                        <li><a href="mail.html">Inbox</a></li>
                        <li><a href="mail_compose.html">Compose Mail</a></li>
                    </ul>
                </li> -->

					</ul>
				</div>
				<!-- sidebar menu end-->
			</div>
		</aside>

<!--sidebar end-->
<!--main content start-->
<section id="main-content">
<section class="wrapper">
            <div class="row">
            <div class="col-md-12">
                    <section class="panel">
                        <header class="panel-heading">
                          Sadashiv Nagar
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                              <form:form method="post" modelAttribute="adsadaim" action="saveadminsadimg.html" enctype="multipart/form-data">
                                
                               
                               	<div class="col-md-3">

                                    <input type="file" name="adminsadafile" id="fileUpload" onchange="Upload();" value="" accept=".jpg,.png,jpeg" />
                                </div>
                               
                               
                                <div class="col-md-2" style="float: right;margin-top:-2%;">
                                <input type="submit" id="sub"  disabled class="btn btn-info" value="Add">
                                </div>
              
                                
                                
                                </form:form>
                              
                            </div>
                        </div>
                    </section>
            </div>
</section>
		<section class="wrapper">
		<!-- gallery -->
		<!-- gallery -->
	<div class="gallery">
		<h2 class="w3ls_head">Gallery</h2>
		<div class="gallery-grids">
			
				<c:forEach var="sadaimg" items="${adminsadaimg}">
				<c:url var="deleteadminsada" value="deleteadminsada.html">
				<c:param name="delimgid" value="${sadaimg.image_id}"></c:param>
				<c:param name="delimgname" value="${sadaimg.image_name}"></c:param>
				</c:url>
					<div class="col-sm-4 gallery-grids">
					
					<a href="${deleteadminsada}"><i class="fa fa-trash" aria-hidden="true"></i></a>
						<div class="gallery-grid" style="width:450px;height:300px;">
							<a class="example-image-link" href="images/sadashivnagarimages/${sadaimg.image_name }" data-lightbox="example-set" >
								<img src="images/sadashivnagarimages/${sadaimg.image_name }" alt="" style="width: 70%;height: 90%;" />
								
							</a>
						</div>
						
					</div>
					</c:forEach>
					  <script src="adminjs/lightbox-plus-jquery.min.js"> </script>
				
	</div>
	<div class="clearfix"></div>
	
		
	</div>
	<!-- //gallery -->

</section>
 <!-- footer -->
		  <div class="footer">
			<div class="wthree-copyright">
			  <p>© 2017 Visitors. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
			</div>
		  </div>
  <!-- / footer -->
</section>

<!--main content end-->
</section>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/scripts.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="js/jquery.scrollTo.js"></script>
<!-- gallery -->



<script type="text/javascript">
function Upload() {
    //Get reference of FileUpload.
    var fileUpload = document.getElementById("fileUpload");
 
    //Check whether the file is valid Image.
    var regex = new RegExp("([a-zA-Z0-9\s_\\.\-:])+(.jpg|.png|.gif)$");
    if (regex.test(fileUpload.value.toLowerCase())) {
 
        //Check whether HTML5 is supported.
        if (typeof (fileUpload.files) != "undefined") {
            //Initiate the FileReader object.
            var reader = new FileReader();
            //Read the contents of Image File.
            reader.readAsDataURL(fileUpload.files[0]);
            reader.onload = function (e) {
                //Initiate the JavaScript Image object.
                var image = new Image();
 
                //Set the Base64 string return from FileReader as source.
                image.src = e.target.result;
                       
                //Validate the File Height and Width.
                image.onload = function () {
                    var height = this.height;
                    var width = this.width;
                    if (height > 100 && width == 100) {
                    	alert("Uploaded image has valid Height and Width.");
                        document.getElementById('sub').disabled = false;
                        
                    }
                    else
                    	{
                    	 alert("Height and Width must not exceed 457px & 307px.");
                    	document.getElementById('sub').disabled = true;
          
                    	}
                };
 
            }
        } else {
            alert("This browser does not support HTML5.");
            return false;
        }
    } else {
        alert("Please select a valid Image file.");
        return false;
    }
}


</script>



</body>
</html>
