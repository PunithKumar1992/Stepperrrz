<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<head>
<title>StepperzStudio::Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="admincss/bootstrap.min.css">
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="admincss/style.css" rel='stylesheet' type='text/css' />
<link href="admincss/style-responsive.css" rel="stylesheet" />
<!-- font CSS -->
<link
	href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="admincss/font.css" type="text/css" />
<link href="admincss/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="admincss/morris.css" type="text/css" />
<link rel="stylesheet" href="admincss/lightbox.css">
<!-- calendar -->
<link rel="stylesheet" href="admincss/monthly.css">
<!-- //calendar -->
<!-- //font-awesome icons -->
<script src="adminjs/jquery2.0.3.min.js"></script>
<script src="adminjs/raphael-min.js"></script>
<script src="adminjs/morris.js"></script>
</head>
<body>
	<section id="container">
		<!--header start-->
		<header class="header fixed-top clearfix">
			<!--logo start-->
			<div class="brand">
				<a href="bashboard.html" class="logo"> <img
					src="adminimages/logo.png" alt="stepper"
					style="width: 90%; margin-top: -9%;">
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
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <i class="fa fa-user"
							aria-hidden="true"></i> <span class="username">${sessionScope.activeuser}</span>
							<b class="caret"></b>
					</a>
						<ul class="dropdown-menu extended logout">
							<li><a href="adminprofile.html"><i
									class=" fa fa-suitcase"></i>Profile</a></li>
							<li><a href="adminadd.html"><i class="fa fa-cog"></i> Settings</a></li>
							<li><a href="adminlogout.html"><i class="fa fa-key"></i>
									Log Out</a></li>
						</ul></li>
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
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<div class="row" id="bannerbanner">
					<div class="col-md-12">
						<section class="panel">
							<header class="panel-heading"> Add Admin </header>
							<div class="panel-body">
								<div>
									<form:form action="adminregistration.html" method="post" modelAttribute="adminreg" onsubmit="return FormValidation();" onchange="return FormValidation();">
									
										<div class="col-md-3">
										<form:hidden path="admin_id"/>
												<form:input path="admin_name" class="form-control" placeholder="Enter Name"  id="firstname"/>
										</div>
										<div class="col-md-3">
											<form:input path="admin_email" class="form-control"  placeholder="Enter E-mail"  id="email"/>
										</div>
										<div class="col-md-3">
											<form:input path="admin_phone" class="form-control" placeholder="Enter Phone-Number"  id="ppp"/>
										</div>
										<div class="col-md-3">
											<form:password path="admin_password" name="admin_password" class="form-control" placeholder="Enter Password"  id="pass"/>
											<input type="checkbox" id="chk" value="Show password" onchange="tick(this)" >Show password
		
										</div>
										<div class="col-md-3">
											<input type="submit" class="btn btn-info" value="ADD"
												style="margin-top: -2%" id="sub"/>
										</div>


										<input type="hidden" id="bannersize" value="${bannsize}	">

									</form:form>
								</div>
							</div>
						</section>
					</div>
				</div>
			</section>
			<div class="table-agile-info">
				<div class="panel panel-default">
					<div class="panel-heading">Admins Information</div>
					<div class="table-responsive">
						<table class="table table-striped b-t b-light">
							<thead>
								<tr>
									<th>Id</th>
									<th>Name</th>
									<th>Email</th>
									<th>Phone-Number</th>
									<th>Password</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>




								<c:forEach var="adminlist" items="${adminlist}">
									<c:url var="deleteadmin" value="deleteadmin.html">
										<c:param name="admin_id" value="${adminlist.admin_id}"></c:param>

									</c:url>
									<c:url var="editadmin" value="editadmin.html">
									<c:param name="admin_id" value="${adminlist.admin_id}"></c:param>
									</c:url>
									<tr>

										<td>${adminlist.admin_id}</td>
										<td>${adminlist.admin_name}</td>
										<td>${adminlist.admin_email}</td>
										<td>${adminlist.admin_phone}</td>
										<td>${adminlist.admin_password}</td>
										<td><a href="${editadmin}"><i class="fa fa-pencil" aria-hidden="true"></i></a></td>

										<td><a href="${deleteadmin}"><i class="fa fa-trash"
												aria-hidden="true"></i></a></td>

									</tr>

								</c:forEach>
								<script src="adminjs/lightbox-plus-jquery.min.js"> </script>
							</tbody>
						</table>
					</div>

				</div>
			</div>

			<!-- footer -->
			<div class="footer">
				<div class="wthree-copyright">
					<p>
						© 2018 Stepperz Studio. All rights reserved | Design by <a
							href="http://appfonehub.com">Appfone Hub Pvt Ltd</a>
					</p>
				</div>
			</div>
			<!-- / footer -->
		</section>
		<!--main content end-->
	</section>
	<script src="adminjs/bootstrap.js"></script>
	<script src="adminjs/jquery.dcjqaccordion.2.7.js"></script>
	<script src="adminjs/scripts.js"></script>
	<script src="adminjs/jquery.slimscroll.js"></script>
	<script src="adminjs/jquery.nicescroll.js"></script>
	<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
	<script src="adminjs/jquery.scrollTo.js"></script>


	

	<script type="text/javascript">
$("#bandisc").blur(function(){
    
	var size =  $("#bandisc").val().length;
	if(size>60)
		{
		$("#bandisc").val(" ");
		alert("description must be less than 60 Characters Only")
		
		}
	
});
</script>

	<script type="text/javascript">

$(document).ready(function(){
	var size=$("#bannersize").val();
	
	if(size>=4)
		{
		$("#bannerbanner").hide();
		
		}
	else if(size<4)
		{
		$("#bannerbanner").show();
		
		}
		
	
	
		
	
	
});

</script>


<script type="text/javascript">
function FormValidation()
{
  var fn=document.getElementById('firstname').value;
    if(fn == ""){
        //alert('Please Enter First Name');
        document.getElementById('firstname').style.borderColor = "red";
        return false;
    }else{
        document.getElementById('firstname').style.borderColor = "green";
    }
    if (/^[0-9]+$/.test(document.getElementById("firstname").value)) {
       //alert("First Name Contains Numbers!");
        document.getElementById('firstname').style.borderColor = "red";
        return false;
    }else{
        document.getElementById('firstname').style.borderColor = "green";
    }
    if(fn.length <=2){
        //alert('Your Name is To Short');
        document.getElementById('firstname').style.borderColor = "red";
        return false;
    }else{
        document.getElementById('firstname').style.borderColor = "green";
    }
    
    
    var em=document.getElementById('email').value;
    if(em=="")
 	   {
 	   document.getElementById('email').style.borderColor = "red";
        return false;
    }else{
        document.getElementById('email').style.borderColor = "green";
    }
    if(/^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$/.test(document.getElementById("email").value))
    	{
    	document.getElementById('email').style.borderColor = "green";
       
    	
    	}
    else
	   {
	   document.getElementById('email').style.borderColor = "red";
	   return false;
	   }
   
    var ph=document.getElementById('ppp').value;
    if(ph=="")
 	   {
 	   document.getElementById('ppp').style.borderColor = "red";
        return false;
    }else{
        document.getElementById('ppp').style.borderColor = "green";
    }
   if(/^[789]\d{9}$/.test(document.getElementById("ppp").value))
	   {
	   
	   document.getElementById('ppp').style.borderColor = "green";
	   }
   else
   {
   document.getElementById('ppp').style.borderColor = "red";
   return false;
   }
   
   var pass=document.getElementById('pass').value;
   if(pass=="")
	   {
	   document.getElementById('pass').style.borderColor = "red";
       return false;
   }else{
       document.getElementById('pass').style.borderColor = "green";
   }
   if(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}/.test(document.getElementById("pass").value))
	   {
	   document.getElementById('pass').style.borderColor = "green";
	   }
   else
   {
	   alert("password must contain Minimum eight characters, at least one uppercase letter, one lowercase letter, one number and one special character:")
   document.getElementById('pass').style.borderColor = "red";
   return false;
   }
	   
}


    </script>

 <script type="text/javascript">
    function tick(el) {
    	 $('#pass').attr('type',chk.checked ? 'text' : 'password');
    	}
    
    </script>
	
</body>
</html>
