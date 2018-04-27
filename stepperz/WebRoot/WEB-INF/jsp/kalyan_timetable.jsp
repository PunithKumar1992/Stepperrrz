<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.appfone.stepperz.Daoimpl.Timetable_kalyannagrDaoimpl" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top" style="width:100%">  
<%! 
int size=0;
String kaly_caption[];
String kaly_images[];
String img;
String impath;

%> 			
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
							<li class="hidden"><a class="page-scroll" href="#page-top"></a>	</li>
							<li><a class="page-scroll scroll" href="#home">Home</a></li>
							<li><a class="page-scroll scroll" href="#about">About</a></li>
							<li><a class="page-scroll scroll" href="#classes">Classes</a></li>
							<li><a class="page-scroll scroll" href="#plans">Views</a></li>
							<li><a class="page-scroll scroll" href="#instructors">Time-Table</a></li>

							<li><a class="page-scroll scroll" href="#gallery">Gallery</a></li>
							<li><a href="career.jsp">Career</a></li>
							<li><a class="page-scroll scroll" href="#contact">Contact</a></li>
							 <div id="player">
    <audio id="audio" autoplay hidden>
     <source src="audio/homepage.mp3" type="audio/mp3">
                If you're reading this, audio isn't supported. 
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
	<!-- gallery -->
	<% 
	Timetable_kalyannagrDaoimpl kalytime_list=new Timetable_kalyannagrDaoimpl();
	size=kalytime_list.getTableCount();
	kaly_caption=kalytime_list.getTableCaption();
	kaly_images=kalytime_list.getTableImage();
	for(int i=0;i<size;i++)
	{
		img=kaly_images[i];
		
		impath="images/timetable/kalyannagar/"+img;
	out.println("<div class='time-table' id='instructors' style='background-color:#00b8f1;padding:5em;''>");
	out.println("<center><h3 class='title-w3' style='color:black'>"+kaly_caption[i]+"</h3>");
	out.println("<br>");
	out.println("<div class='time1'>");
	out.println("<img src="+impath+" alt='timetableimg' style='width:100%'>");
	out.println("</div></center>");
				
				
			
	out.println("</div>");
	}
	%>
	<div class="clearfix"> </div>
	
	<!-- //gallery -->

<!-- footer -->
			<div class="copy-right">
				<p>&copy; 2018 Stepperz Studio. All rights reserved | Designed by <a href="http://appfonehub.com/">Appfone Hub Pvt Ltd</a></p>
			</div>
			
<!-- //footer -->
<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

<script src="js/jquery-2.2.3.min.js"></script> 
			<script src="js/particles.js"></script>
			<script src="js/app.js"></script>
	
<!-- skills -->

						<script src="js/responsiveslides.min.js"></script>
			<script>
						// You can also use "$(window).load(function() {"
						$(function () {
						  // Slideshow 4
						  $("#slider4").responsiveSlides({
							auto: true,
							pager:true,
							nav:false,
							speed: 500,
							namespace: "callbacks",
							before: function () {
							  $('.events').append("<li>before event fired.</li>");
							},
							after: function () {
							  $('.events').append("<li>after event fired.</li>");
							}
						  });
					
						});
			</script>
			<script>
								// You can also use "$(window).load(function() {"
								$(function () {
								  // Slideshow 4
								  $("#slider3").responsiveSlides({
									auto: true,
									pager:false,
									nav:true,
									speed: 500,
									namespace: "callbacks",
									before: function () {
									  $('.events').append("<li>before event fired.</li>");
									},
									after: function () {
									  $('.events').append("<li>after event fired.</li>");
									}
								  });
							
								});
							 </script>

 <!-- js -->
	<script src="js/main.js"></script>
<!-- search-jQuery -->
<!-- pop-up-box -->
			<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
			<!--//pop-up-box -->
			<script>
				$(document).ready(function() {
					$('.popup-with-zoom-anim').magnificPopup({
						type: 'inline',
						fixedContentPos: false,
						fixedBgPos: true,
						overflowY: 'auto',
						closeBtnInside: true,
						preloader: false,
						midClick: true,
						removalDelay: 300,
						mainClass: 'my-mfp-zoom-in'
					});														
				});
			</script>

		
	
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->


<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->







</body>
</html>