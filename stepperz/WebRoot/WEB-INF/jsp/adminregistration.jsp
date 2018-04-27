<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
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
<style type="text/css">
.error{
color:white;
size:2px;


}

</style>
</head>
<body >
<div class="reg-w3">
<div class="w3layouts-main">
	<h2>Register Now</h2>
		<form:form action="adminregistration.html" method="post" modelAttribute="adminreg" onsubmit="return FormValidation();" onchange="return FormValidation();">
		
		<form:input path="admin_name" class="ggg" placeholder="NAME"  id="firstname"/>
		<form:errors path="admin_name" cssClass="error"></form:errors>
		
		<form:input path="admin_email" class="ggg" placeholder="E-MAIL"  id="email"/>
		<form:errors path="admin_email" cssClass="error"></form:errors>
	
		<form:input path="admin_phone" class="ggg" placeholder="PHONE" id="ppp"/>
		<form:errors path="admin_phone" cssClass="error"></form:errors>
		
		<form:password path="admin_password"  class="ggg" placeholder="PASSWORD"  id="pass" />
		<form:errors path="admin_password" cssClass="error"></form:errors>
		<input type="checkbox" id="chk" value="Show password" onchange="tick(this)" >Show password
		
		<input type="submit" value="Register" onmouseover="hello()"  id="sub" >
		
		</form:form>
	
		<p>Already Registered.<a href="admin.html">Login</a></p>
</div>
</div>

<script src="adminjs/bootstrap.js"></script>
<script src="adminjs/jquery.dcjqaccordion.2.7.js"></script>
<script src="adminjs/scripts.js"></script>
<script src="adminjs/jquery.slimscroll.js"></script>
<script src="adminjs/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="adminjs/jquery.scrollTo.js"></script>
<!-- morris JavaScript -->	

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
    
    <script type="text/javascript">
   
    function hi()
    {
    	document.getElementById('sub').disabled = true;
    }
   
    function hello()
    {
    	
    	if(document.getElementById('firstname').style.borderColor == "green" && document.getElementById('email').style.borderColor == "green" 
			&&  document.getElementById('ppp').style.borderColor == "green" && document.getElementById('pass').style.borderColor == "green")
    		{
    		document.getElementById('sub').disabled = false;
    		}
    }
    </script>
    
</body>
</html>
