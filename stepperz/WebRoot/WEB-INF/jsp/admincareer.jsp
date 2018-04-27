<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
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


<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  
 <link rel="stylesheet" href="admincss/pikaday.css">
    <link rel="stylesheet" href="admincss/site.css">



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
</head>
<body>
<section id="container">
<!--header start-->
<header class="header fixed-top clearfix">
<!--logo start-->
<div class="brand">
    <a href="bashboard.html" class="logo">
        <img src="adminimages/logo.png" alt="stepper" style="width:90%;margin-top:-9%;">
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
                <i class="fa fa-user" aria-hidden="true"></i>
                <span class="username">${sessionScope.activeuser}</span>
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu extended logout">
                <li><a href="adminprofile.html"><i class=" fa fa-suitcase"></i>Profile</a></li>
                <li><a href="adminadd.html"><i class="fa fa-cog"></i> Settings</a></li>
                <li><a href="adminlogout.html"><i class="fa fa-key"></i> Log Out</a></li>
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
                           Career
                        </header>
                        <div class="panel-body">
                            <div>
                          <form:form method="post" action="saveadmincareer.html" modelAttribute="careerobj" onsubmit="return FormValidation();" onchange="return FormValidation();">
                          
                          
                          <form:hidden path="career_id"/>
								<div class="col-md-3">
                                  
                                   <form:input path="first_name" class="form-control" id="firstname" placeholder="First-name"/>
                                </div>
                          
                          <div class="col-md-3">
                                  
                                   <form:input path="last_name" class="form-control" id="lastname" placeholder="Last-name"/>
                                </div>
                               
                          <div class="col-md-3">
                                  
                                   <form:input path="email" class="form-control" id="email" placeholder="Email"/>
                                </div>
                                <div class="col-md-3">
                                   <form:input path="post_applyfor" class="form-control" id="pos" placeholder="Apply for "/>
                                </div>
                                
								<div class="col-md-3">
                                  <form:input path="salary_req" class="form-control" id="sal" placeholder="Expected Salary"/>
                                     </div>
                                     
                                     <div class="col-md-3">
                                   <form:input path="joining_date" class="form-control" id="datepicker" placeholder="Joining-Date"/>
                                 
                                </div>
                                
                                <div class="col-md-3">
                                   <form:input path="phone" class="form-control" id="ppp" placeholder="Phone-number"/>
                                    
                                </div>
                                 <div class="col-md-3">
                                  <form:input path="last_company" class="form-control" id="lastcom" placeholder="Last-company"/>
                                    
                                </div>
                                
                                 <div class="col-md-3">
                                  <form:input path="message" class="form-control"  id ="msg" placeholder="Message"/>
                                    
                                </div>
                                <div class="col-md-3">
                                    <input type="submit" class="btn btn-info" value="Submit" style="margin-top:-2%"/>
                                </div>
                                   </form:form>  
                       
                            </div>
                        </div>
                    </section>
            </div>
            </div>
</section>
		<div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Career Information
    </div>
     <div class="table-responsive">
      <table class="table table-striped b-t b-light">
        <thead>
          <tr>
            
            <th>First_name</th>
            <th>Last_name</th>
            <th>Email</th>
			<th>Post_apply_for</th>
			<th>Salary_req</th>
			<th>Joining_Date</th>
			<th>Phone_number</th>
			<th>Last_company</th>
            <th> Message</th>
			<th> Action</th>
          </tr>
        </thead>
        <tbody>
    
	
		   <c:forEach var="carrlist" items="${carrlist}">
	 		<c:url  var="deletecareer" value="deleteadmincareer.html">
            <c:param name="career_id" value="${carrlist.career_id}"></c:param>
            
                          </c:url>
                          <c:url var="editadmincareer" value="editadmincareer.html">
                         <c:param name="career_id" value="${carrlist.career_id}"></c:param>
            
                          </c:url>
		   
	 <tr>
           
			<td><span class="text-ellipsis">${carrlist.first_name}</span></td>
            <td><span class="text-ellipsis">${carrlist.last_name}</span></td>
			<td><span class="text-ellipsis">${carrlist.email}</span></td>
			<td><span class="text-ellipsis">${carrlist.post_applyfor}</span></td>
			<td><span class="text-ellipsis">${carrlist.salary_req}</span></td>
			<td><span class="text-ellipsis">${carrlist.joining_date}</span></td>
			<td><span class="text-ellipsis">${carrlist.phone}</span></td>
			<td><span class="text-ellipsis">${carrlist.last_company}</span></td>
			<td><span class="text-ellipsis">${carrlist.message}</span></td>
			
            
			<td>
			<a href="${editadmincareer}"><i class="fa fa-pencil-square" aria-hidden="true"></i></a>
		 		  </td>
			<td>
		  <a href="${deletecareer}"><i class="fa fa-trash" aria-hidden="true"></i></a>
				  </td> 
           </tr>
			</c:forEach>
        </tbody>
      </table>
    </div>
    
  </div>
</div>
 <!-- footer -->
		  <div class="footer">
			<div class="wthree-copyright">
			  <p>© 2018 Stepperz Studio. All rights reserved | Design by <a href="http://appfonehub.com">Appfone Hub Pvt Ltd</a></p>
			</div>
		  </div>
  <!-- / footer -->
</section>

<!--main content end-->
<script src="adminjs/bootstrap.js"></script>
<script src="adminjs/jquery.dcjqaccordion.2.7.js"></script>
<script src="adminjs/scripts.js"></script>
<script src="adminjs/jquery.slimscroll.js"></script>
<script src="adminjs/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="adminjs/jquery.scrollTo.js"></script>
<!-- morris JavaScript -->	
<!-- <script>
	$(document).ready(function() {
		//BOX BUTTON SHOW AND CLOSE
	   jQuery('.small-graph-box').hover(function() {
		  jQuery(this).find('.box-button').fadeIn('fast');
	   }, function() {
		  jQuery(this).find('.box-button').fadeOut('fast');
	   });
	   jQuery('.small-graph-box .box-close').click(function() {
		  jQuery(this).closest('.small-graph-box').fadeOut(200);
		  return false;
	   });
</script> -->

<script type="text/javascript">
function FormValidation()
{
	var fn=document.getElementById('firstname').value;
	
    if(fn == "")
    {
        //alert('Please Enter First Name');
        document.getElementById('firstname').style.borderColor = "red";
        return false;
    }
    else
    {
        document.getElementById('firstname').style.borderColor = "green";
    }
    if (/^[0-9]+$/.test(document.getElementById("firstname").value)) 
    {
       //alert("First Name Contains Numbers!");
        document.getElementById('firstname').style.borderColor = "red";
        return false;
    }
    else
    {
        document.getElementById('firstname').style.borderColor = "green";
    }
    if(fn.length <=2)
    {
        //alert('Your Name is To Short');
        document.getElementById('firstname').style.borderColor = "red";
        return false;
    }
    else
    {
        document.getElementById('firstname').style.borderColor = "green";
    }
    
var ln=document.getElementById('lastname').value;
	
    if(ln == "")
    {
        //alert('Please Enter First Name');
        document.getElementById('lastname').style.borderColor = "red";
        return false;
    }
    else
    {
        document.getElementById('lastname').style.borderColor = "green";
    }
    if (/^[0-9]+$/.test(document.getElementById("lastname").value)) 
    {
       //alert("First Name Contains Numbers!");
        document.getElementById('lastname').style.borderColor = "red";
        return false;
    }
    else
    {
        document.getElementById('lastname').style.borderColor = "green";
    }
    if(ln.length <=2)
    {
        //alert('Your Name is To Short');
        document.getElementById('lastname').style.borderColor = "red";
        return false;
    }
    else
    {
        document.getElementById('lastname').style.borderColor = "green";
    }
    
    var em=document.getElementById('email').value;
    if(em=="")
 	   {
 	   document.getElementById('email').style.borderColor = "red";
        return false;
    }
    else
    {
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
    
    var pos=document.getElementById('pos').value;
    if(pos == "")
    {
        //alert('Please Enter First Name');
        document.getElementById('pos').style.borderColor = "red";
        return false;
    }
    else
    {
        document.getElementById('pos').style.borderColor = "green";
    }
    if(/^[a-zA-z]+$/.test(document.getElementById("pos").value))
    	{
    	document.getElementById('pos').style.borderColor = "green";
    	}
   	
    else
	   {
	   document.getElementById('pos').style.borderColor = "red";
	   return false;
	   }
    
    var sal=document.getElementById('sal').value;
    if(sal == "")
    {
        //alert('Please Enter First Name');
        document.getElementById('sal').style.borderColor = "red";
        return false;
    }
    else
    	{
        document.getElementById('sal').style.borderColor = "green";
    }
    
    if(/^[0-9]+$/.test(document.getElementById('sal').value))
    	{
    	document.getElementById('sal').style.borderColor = "green";
    	
    	}
    else
    	{
    	document.getElementById('sal').style.borderColor = "red"
    	return false;
    	
    	}
    
    var st=document.getElementById('datepicker').value;
    if(st == "")
    {
        //alert('Please Enter First Name');
        document.getElementById('datepicker').style.borderColor = "red";
        return false;
    }
    else
    {
        document.getElementById('datepicker').style.borderColor = "green";
    }
    var ph=document.getElementById('ppp').value;
    if(ph=="")
 	   {
 	   document.getElementById('ppp').style.borderColor = "red";
        return false;
    }
    else
    {
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
   
   var lc=document.getElementById('lastcom').value;
	
   if(lc == "")
   {
       //alert('Please Enter First Name');
       document.getElementById('lastcom').style.borderColor = "red";
       return false;
   }
   else
   {
       document.getElementById('lastcom').style.borderColor = "green";
   }
   if (/^[a-zA-Z]+$/.test(document.getElementById("lastcom").value)) 
   {
      //alert("First Name Contains Numbers!");
       document.getElementById('lastcom').style.borderColor = "green";
       
   }
   else
   {
       document.getElementById('lastcom').style.borderColor = "red";
       return false;
   }
   
   if(lc.length <=2)
   {
       //alert('Your Name is To Short');
       document.getElementById('lastcom').style.borderColor = "red";
       return false;
   }
   else
   {
       document.getElementById('lastcom').style.borderColor = "green";
   }
   
   var msg=document.getElementById('msg').value;
	
   if(msg== "")
   {
       //alert('Please Enter First Name');
       document.getElementById('msg').style.borderColor = "red";
       return false;
   }
   else
   {
       document.getElementById('msg').style.borderColor = "green";
   }
   if (/^[0-9]+$/.test(document.getElementById("msg").value)) 
   {
      //alert("First Name Contains Numbers!");
       document.getElementById('msg').style.borderColor = "red";
       return false;
   }
   else
   {
       document.getElementById('msg').style.borderColor = "green";
   }
   if(msg.length <=2)
   {
       //alert('Your Name is To Short');
       document.getElementById('msg').style.borderColor = "red";
       return false;
   }
   else
   {
       document.getElementById('msg').style.borderColor = "green";
   }
   
    	
   	
}
</script>




<script src="adminjs/pikaday.js"></script>
    <script>

    var picker = new Pikaday(
    {
        field: document.getElementById('datepicker'),
        firstDay: 1,
        minDate: new Date(),
        maxDate: new Date(2020, 12, 31),
        yearRange: [2000,2020]
    });

    </script>
</body>
</html>
