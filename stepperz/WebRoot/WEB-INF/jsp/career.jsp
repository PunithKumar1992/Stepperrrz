<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en" style="overflow-x:hidden;">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Stepperz | Dance Aerobics N Yoga Studio</title>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/responsive.css" type="text/css" rel="stylesheet" media="all">
<link href="css/popup-box.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" type="text/css" rel="stylesheet" media="all"> 
<link rel="stylesheet" href="css/main-gallery.css" type="text/css" media="screen" />  <!-- flexslider-CSS --> 
<link href="css/font-awesome.css" rel="stylesheet">		<!-- font-awesome icons -->

<link rel="icon" href="images/log.ico" type="image/x-icon">

<!-- //Custom Theme files --> 
<!-- web-fonts -->  
<link href="//fonts.googleapis.com/css?family=Arapey:400,400i" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:300i,400,400i,600,600i,700" rel="stylesheet">
<!-- //web-fonts -->
<link href="careercss/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="careercss/font-awesome.css">
	
	<link href="//fonts.googleapis.com/css?family=Acme" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
	    rel="stylesheet">
</head><body>
	<!-- header -->
		<div class="header-w3layouts"> 
			<!-- Navigation -->
			<nav class="navbar navbar-default navbar-fixed-top">
				<div class="container">
					<div class="navbar-header page-scroll">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
							<span class="sr-only"><img src="images/logo.png" alt="stepperz"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<h1><a class="navbar-brand" href="index.jsp"><img src="images/logo.png" alt="stepperz"></a></h1>
					</div> 
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse navbar-ex1-collapse">
						<ul class="nav navbar-nav navbar-right">
							<!-- Hidden li included to remove active class from about link when scrolled up past about section -->
							
							<li><a  href="index.jsp#home" style="color:white;font-size: 14px;">Home</a></li>
							<li><a  href="index.jsp#about" style="color:white;font-size: 14px;">About</a></li>
							<li><a  href="index.jsp#classes" style="color:white;font-size: 14px;">Classes</a></li>
							<li><a href="index.jsp#plans" style="color:white;font-size: 14px;">Adds</a></li>
							<li><a href="index.jsp#instructors" style="color:white;font-size: 14px;">Time-Table</a></li>

							<li><a  href="index.jsp#gallery"style="color:white;font-size: 14px;">Gallery</a></li>
							<li><a href="career.jsp" style="color:white;font-size: 14px;">Career</a></li>
							<li><a href="regestration.html" style="color:white;font-size: 14px;">Registration</a></li>
							<li><a  href="index.jsp#contact" style="color:white;font-size: 14px;">Contact</a></li>
							 <div id="player">
    <audio id="audio" autoplay hidden>
     <source src="audio/homepage.mp3" type="audio/mp3">
               <p> If you're reading this, audio isn't supported. </p>
    </audio>
</div>
		
<script>		
      var audio = document.getElementById('audio');
audio.play();
 
// Sometime Later
audio.src = 'audio/homepage.mp3';
audio.play();
</script>
		</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container -->
			</nav>  
		</div>	
		<!-- //header -->
	</div>	
	<!-- //banner --> 

	<!-- main -->
	<div class="main-agileits" style="margin-top: 5%;">
		<h1>Career Form
		</h1>
		<div class="register-form">
			<form action="careersubmit.html" id="EmploymentApplication100" method="post" onsubmit="return FormValidation();" onchange="return FormValidation();">
			
				<div class="fields-grid">
					<div class="styled-input">
						
						<input type="text" placeholder="First Name" name="name" id="firstname">
					</div>
					<div class="styled-input">
						
						<input type="text" placeholder="Last Name" name="name"id="lastname">
					</div>
					<div class="styled-input">
						
						<input type="email" placeholder="Your E-mail" name="email" id="email">
					</div>
					<div class="styled-input">
						
						<input type="text" placeholder="Phone Number" name="phone number" id="ppp" >
					</div>
					<div class="styled-input">
						
						<input id="datepicker" placeholder="When You Can Start?" name="date" type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}">
					</div>
					<div class="styled-input">
						
						<input type="text" placeholder="Position You are Applying" name="name" id="pos" >
					</div>
					<div class="styled-input">
						
						<input name="salary_req" type="text" id="sal"  placeholder="Salary Requirements" />
					</div>
					<div class="styled-input">
					
						<input type="text" placeholder="Previous Company" name="name" id="lastcom">
					</div>
					<div class="styled-input">
						
						<input type="text" id ="msg"  placeholder="Reference / Comments / Questions" name="message" style="
    background-color: rgba(19, 22, 23, 0);
    border: 0.5em;
    color: white;
"></input>
					</div>
					
					<div class="clear"> </div>
				</div>
				<input type="submit" value="Submit" id="sub">
			</form>
		</div>
	</div>
	<!-- //main -->
	<!-- footer -->
			<div class="copy-right">
				<p>&copy; 2017 Stepperz. All rights reserved | Designed by <a href="http://appfonehub.com/">Appfone Hub Pvt Ltd.</a></p>
			</div>
			
<!-- //footer -->

	<!-- js -->
	<script src="careerjs/jquery-2.1.4.min.js"></script>

	<!-- Calendar -->
	<link rel="stylesheet" href="careercss/jquery-ui.css" />
	<script src="careerjs/jquery-ui.js"></script>
	<script>
		$(function () {
			$("#datepicker,#datepicker1,#datepicker2,#datepicker3").datepicker();
		});
	</script>
	<!-- //Calendar -->

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




</body>

</html>