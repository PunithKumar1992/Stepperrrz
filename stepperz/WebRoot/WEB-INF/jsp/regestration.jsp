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
  <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>


  
  <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'>
<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css'>
<link rel='stylesheet prefetch' href='http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css'>

      <link rel="stylesheet" href="css/registration.css">

</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top" style="width:100%">  

			<div class="clearfix"> </div>

			
			<!--banner Slider starts Here-->
		</div>
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
							
							<li><a  href="index.jsp#home" style="color:white;">Home</a></li>
							<li><a  href="index.jsp#about" style="color:white;">About</a></li>
							<li><a  href="index.jsp#classes" style="color:white;">Classes</a></li>
							<li><a href="index.jsp#plans" style="color:white;">Adds</a></li>
							<li><a href="index.jsp#instructors" style="color:white;">Time-Table</a></li>

							<li><a  href="index.jsp#gallery"style="color:white;">Gallery</a></li>
							<li><a href="career.jsp" style="color:white;">Career</a></li>
							<li><a href="regestration.html" style="color:white;">Registration</a></li>
							<li><a  href="index.jsp#contact" style="color:white;">Contact</a></li>
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
      <div class="container" style="margin-top: 12%;">

    <form class="well form-horizontal" action="courseregistration.html" method="post"  id="contact_form" onsubmit="return FormValidation();" onchange="return FormValidation();">
<fieldset>

<!-- Form Name -->
<legend><center><h2><b>Registration Form</b></h2></center></legend><br>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label">First Name</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input  name="first_name" placeholder="First Name" class="form-control"  type="text">
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >Last Name</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input name="last_name" placeholder="Last Name" class="form-control"  type="text">
    </div>
  </div>
</div>

  <div class="form-group"> 
  <label class="col-md-4 control-label">Select Course</label>
    <div class="col-md-4 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
    <select name="course" class="form-control selectpicker" id="course">
      <option value="" disabled="disabled" selected>Course Type</option>
      <option value="Aerobics">Aerobics</option>
      <option value="Dance">Dance</option>
      <option value="Yoga">Yoga</option>
    </select>
  </div>
</div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label">Contact No.</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
  <input name="contact_no" id="contact" placeholder="contact number" class="form-control" type="text">
    </div>
  </div>
</div>


       <div class="form-group">
  <label class="col-md-4 control-label">E-Mail</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
  <input name="email" placeholder="E-Mail Address" class="form-control"  type="text">
    </div>
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label">Address</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><span class="glyphicon glyphicon-home"></span></span>
  <textarea name="address" placeholder="Address" id="add" class="form-control" row="45" col="15" style="resize: none;"></textarea>
    </div>
  </div>
</div>


<!-- Text input-->
       


<!-- Select Basic -->

<!-- Success message -->
<div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Success!.</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4" style="margin-left: 10%"><br>
 <input type="submit" class="btn btn-warning"  value="SUBMIT"/>
  </div>
</div>

</fieldset>
</form>
</div>
    </div><!-- /.container -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js'></script>

  

    <script  src="js/registration.js"></script>


<!-- footer -->
			<div class="copy-right">
				<p>&copy; 2018 Stepperz Studio. All rights reserved | Designed by <a href="http://appfonehub.com/">Appfone Hub Pvt Ltd</a></p>
			</div>
			
<!-- //footer -->
	<script src="js/main.js"></script>
<!-- search-jQuery -->	

	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->

<script type="text/javascript">

$('#contact').on('mouseout change', function () {
	var phone=$("#contact").val();
	var prefix="91";
	var contact=prefix+phone;
	if(phone.length==10)
		{
		$('#contact').val(contact);
		}
	});

</script>


<script type="text/javascript">
function FormValidation()
{
	var cr=document.getElementById('course').value;
	
    if(cr == "")
    {
        //alert('Please Enter First Name');
        document.getElementById('course').style.borderColor = "red";
        return false;
    }
    else
    {
        document.getElementById('course').style.borderColor = "green";
    }
   
    if(cr.length <=2)
    {
        //alert('Your Name is To Short');
        document.getElementById('course').style.borderColor = "red";
        return false;
    }
    else
    {
        document.getElementById('course').style.borderColor = "green";
    }
    
var add=document.getElementById('add').value;
	
    if(add == "")
    {
        //alert('Please Enter First Name');
        document.getElementById('add').style.borderColor = "red";
        return false;
    }
    else
    {
        document.getElementById('add').style.borderColor = "green";
    }
   
    if(cr.length <=2)
    {
        //alert('Your Name is To Short');
        document.getElementById('add').style.borderColor = "red";
        return false;
    }
    else
    {
        document.getElementById('add').style.borderColor = "green";
    }
    
}
</script>
</body>
</html>