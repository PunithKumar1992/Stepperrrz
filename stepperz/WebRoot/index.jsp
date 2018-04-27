<%@ page import="com.appfone.stepperz.Daoimpl.BannerDaoimpl"%>
<%@ page import="com.appfone.stepperz.Daoimpl.TestimonialsDaoimpl" %>
<%@ page import="com.appfone.stepperz.Daoimpl.AdvertisementDaoimpl" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="HandheldFriendly" content="true">
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
int size;
String title[];
String description[];
String banner_img[];
String imgpath;
String img;
String message[];
String name[];
//int count;
int 

count;
String adstype[];
String adsimages[];
%>

	<!-- banner -->
	<div id="home" class="w3ls-banner"> 

		<!-- banner-text -->
		<div class="slider">
			<div class="callbacks_container">
				<ul class="rsldes callbacks callbacks1" id="slider4">
					
                                    
                                    
                       <% 
                       BannerDaoimpl banner_list=new BannerDaoimpl();
						size=banner_list.getbannerCount();
						title= new String[size];
						description=new String[size];
						banner_img = new String[size];
						title=banner_list.getbannerTitle();
						description=banner_list.getbannerDisc();
						banner_img=banner_list.getbannerimg();
						for(int i=0;i<size;i++)
						{
							img=banner_img[i];
							imgpath="images/banner/"+img;
							 out.println("<li>");
                       out.println("<div class='w3layouts-banner-top' style='background: url("+imgpath+") no-repeat 0px 0px;background-size:100%;'>");
                       out.println("<div class='container'>");
                       out.println("<div class='agileits-banner-info'>");
                       out.println("<h3>"+title[i]+"</h3>");
                       out.println("<p>"+description[i]+"</p>");
									
								
                       out.println(" </div>");
                       out.println("</div>");
                       out.println("</div>");
                       out.println("</li>");
						}
						%>
					
					</ul>
			</div>
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
							<span class="sr-only" style="margin-top: -5%;"><img src="images/logo.png" alt="stepperz"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="index.jsp"><img src="images/logo.png" alt="stepperz"></a>
					</div> 
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse navbar-ex1-collapse">
						<ul class="nav navbar-nav navbar-right">
							<!-- Hidden li included to remove active class from about link when scrolled up past about section -->
							<li class="hidden"><a class="page-scroll" href="#page-top"></a>	</li>
							<li><a class="page-scroll scroll" href="#home">Home</a></li>
							<li><a class="page-scroll scroll" href="#about">About</a></li>
							<li><a class="page-scroll scroll" href="#classes">Classes</a></li>
							<li><a class="page-scroll scroll" href="#plans">Ads</a></li>
							<li><a class="page-scroll scroll" href="#instructors">Time-Table</a></li>

							<li><a class="page-scroll scroll" href="#gallery">Gallery</a></li>
							<li><a href="career.html">Career</a></li>
							<li><a href="regestration.html">Regestration</a></li>
							<li><a class="page-scroll scroll" href="#contact">Contact</a></li>
							 
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

<!-- about -->
<section  style="width:100%; ">
<div id="player">
    <audio id="audio" autoplay hidden>
     <source src="audio/homepage.mp3" type="audio/mp3">
                <h3>If you're reading this, audio isn't supported. </h3>
    </audio>
</div>
		
<script>		
      var audio = document.getElementById('audio');
audio.play();
 
// Sometime Later
audio.src = 'audio/homepage.mp3';
audio.play();
</script>
<div class="about" id="about">
      <div class="col-md-6 ab-w3-agile-info">
	   <div class="ab-w3-agile-info-text">
	     <h2 class="title-w3">About Us</h2>
		 <p class="sub-text one"></p>
		 <p>Master Malur Srinivas would not only want to create new dancers for the industry, but also wants to create choreographers. One of the missions in master's vision is to give an opportunity to aspiring choreographers to make a career out of it. With all the experience he has bagged over the years, he likes to train you on each and every aspect of choreography: blending of styles, facing the camera, usage of stage, conceptualization, dancing disciplines and the list continues.</p>
			<div class="agileits_w3layouts_more menu__item one">
				<a href="#" class="menu__link" data-toggle="modal" data-target="#myModalabt">Read More</a>
			</div>
		  </div>
		  
		   
			<div class="clearfix"></div>		   
	  </div>
	  
   </div>	 	  
	  <div class="col-md-6 ab-w3-agile-img">
	     
	  </div>
 
		<div class="clearfix"></div>
       <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
          <p style="background-color:lightblue;border-bottom:black;"><b>stepperz studio is on a mission to bring the passion of fitness to the heart of Bengaluru.  Fitness has a major impact on the lives of people of all ages and can influence their personal legacies inside and outside of the gym. stepperz studio will provide a workout studio with daily classes with custom designed workouts for people of all ages.  stepperz studio is on a mission to provide a safe and encouraging place for young athletes, young professionals, adults, and the older age group to get & stay fit, and push themselves to unimaginable places both inside and outside of the stepperz studio.</b></p>
        </div>
        <div class="modal-footer">
s          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
  
<!--</div0>--><div class="col-md-6 ab-w3-agile-part" style="background-color: #ffff00; padding: 1.0em 2em;">
				<h4>Vision</h4><br>
                                <p  style="color: black">Stepperz Studio seeks to be the most desirable place to experience fitness training in south India .  The unmatched experience that will occur at Stepperz Studio will create a buzz in the fitness network.  Stepperz Studio also seeks for community involvement, community service, parent and child interaction, and innovative sports technology solutions.</p><br>
<h4>Mision</h4><br>
<p  style="color: black;font-family: 'Source Sans Pro', sans-serif">
stepperz studio is on a mission to bring the passion of fitness to the heart of Bengaluru.  Fitness has a major impact on the lives of people of all ages and can influence their personal legacies inside and outside of the gym. stepperz studio will provide a workout studio with daily classes with custom designed workouts for people of all ages.  stepperz studio is on a mission to provide a safe and encouraging place for young athletes, young professionals, adults, and the older age group to get & stay fit, and push themselves to unimaginable places both inside and outside of the stepperz studio.<br>
</p><br>
	       </div>
            <div class="col-md-6 ab-w3-agile-part" style="background-color: #00aaff;padding: 1em 2em;height: 368px;">
				<h4>Values</h4>
                               <br/> <p style="color: black">-To provide a fitness studio which offers class times with customized workouts to promote functional fitness.<br/>
-To recruit a reputable staff to manage the facility, mentor the youth, foster teamwork, build individual and group confidence, and create an overall desirable experience.<br/>
-To offer an easily accessible location for urban community events.<br/>
-To provide a location for talented young athletes to develop speed, quickness, strength, and flexibility.<br/>
-To allow older adults to have a place to exercise and socialize , helps people of all ages create their legacy.</p>

	       </div>
</section>
	<!-- //about -->
											<!-- Modal1 -->
													<div class="modal fade" id="myModalabt" tabindex="-1" role="dialog">
														<div class="modal-dialog">
														<!-- Modal content-->
															<div class="modal-content">
																<div class="modal-header">
																	<button type="button" class="close" data-dismiss="modal">&times;</button>
																	<img src="images/malursrinivas1.png" alt=" " class="img-responsive">
																	
																	<p style="background-color:#dce7ef;page-border:black;"><b>Master Malur Srinivas would not only want to create new dancers for the industry, but also wants to create choreographers. One of the missions in masterâs vision is to give an opportunity to aspiring choreographers to make a career out of it. With all the experience he has bagged over the years, he likes to train you on each and every aspect of choreography: blending of styles, facing the camera, usage of stage, conceptualization, dancing disciplines and the list continues.
Choreography is an artefact of personal manifestation.  Develop your own personal style in a well-planned course and take advantage of the discussions and endeavours from the master.  Enjoy the role of choreographer and learn from the experience of being part of someone else's idea of dance in a matter of 3 months.  Receive a certificate in recognition of your efforts.</b></p>
																</div>
																<div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
															</div>
														</div>
													</div>
													<!-- //Modal1 -->
																

		<!-- /classes-->
		<div>
		
		</div>
		
		
							      
	<div class="services" id="classes">
		<div class="container" style="margin-top:3%">
              <br/><br/>
		 <h3 class="title-w3" >Fitness Classes</h3>
		 <p class="sub-text">Choose Your Style</p>
		     <div class="wthree-agile-classes-section">
	               
				
					<div class="col-lg-4 class-grid">
						<div class="class-grid-img hvr-sweep-to-top">
					       <img src="image/aerobics1.png" alt="Aerobics">
						    <div class="caption">
							    <h5>Aerobics</h5>
								<div class="agileits_w3layouts_more menu__item">
								<a href="#" class="menu__link" data-toggle="modal" data-target="#model1">More about Aerobics..</a>
							 </div>
							</div>
						</div>	
					<p class="d1">Stepperz provide a blend of rhythmic aerobic exercises to improve your endurance and stamina levels.<br><br></p>
                    <h2 style=" color: white;text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;" > AEROBICS</h2>
				    </div>
					<div class="col-lg-4 class-grid">
						<div class="class-grid-img hvr-sweep-to-top">
					       <img src="image/dance1.png" alt="Dance">
						    <div class="caption">
							    <h5>Dance</h5>
								<div class="agileits_w3layouts_more menu__item">
							    <a href="#" class="menu__link" data-toggle="modal" data-target="#model2">More about Dance..</a>
							    </div>
							</div>
						</div>
						<p class="d1">If you like to step up, here's your crack. It doesn't matter if you are a 5 year old or 80 year old.<br><br></p>
                      <h2 style=" color: white; text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;"> DANCE</h2>
					
				    </div>
					<div class="col-lg-4 class-grid">
						<div class="class-grid-img hvr-sweep-to-top">
					      <img src="image/yoga1.png" alt="yoga">
						    <div class="caption">
							    <h5>Yoga</h5>
								<div class="agileits_w3layouts_more menu__item">
								<a href="#" class="menu__link" data-toggle="modal" data-target="#model3">More about Yoga..</a>
								</div>
							</div>
						</div>
						<p class="d1">We offer Ashtanga yoga classes of traditional character and uncompromising excellence, which is opposing to Power yoga followed in present days.</p>
	                     <h2 style=" color: white;text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;"> YOGA</h2>		
				    </div>
				<div class="clearfix"> </div>
	         </div>

		 </div>	
   </div>
  
 <!-- //classes-->
 
		<div class="services" id="plans">
		<div class="container" >
            
		 <h3 class="title-w3" >Ads</h3>
		 <p class="sub-text"></p>
		
		 
		     <div class="wthree-agile-classes-section" style="margin-top: 7%;">
	            
	               <% 
AdvertisementDaoimpl ads_list= new AdvertisementDaoimpl();
int adscount = ads_list.getadscount();
adstype = ads_list.getadstype();
adsimages=ads_list.getadsimage();
String adtype;
String adimg;
String adpath;
String action=null;
for(int i=0;i<adscount;i++)
{
	adpath="images/ads/"+adsimages[i];
	adtype=adstype[i];
	adimg=adsimages[i];
	System.out.println(adpath);
	if(adstype[i].equals("promo") && adimg!=null )
	{
		
		action="regestration.html";
		
	}
	else if(adstype[i].equals("hire") && adimg!=null)
	{
		action="career.html";
	}					
						out.println("<div class='col-lg-2 class-grid'>");
						out.println("<div class='class-grid-img'>");
						out.println("<a href="+action+"><img src="+adpath+" alt='stepperz'></a>");
						    
						out.println("</div>");
						out.println("</div>");
						
}
%>
				 </div>
					

 
   </div>
   				      
</div>
   
   <!-- -\\Classes -->
	 <!-- // Time-Table -->
		<div class="services" id="instructors">
		<div class="container" style="background-color: #fff212e0;">
              <br/><br/>
		 <h3 class="title-w3">Time-Table</h3>
		 <p class="sub-text"></p>
		     <div class="wthree-agile-classes-section">
	               
				
					<div class="col-lg-4 class-grid">
						<div class="class-grid-img">
					       <a href="sadashiv_timetable.html"> <img src="images/sadhashivnagartimeicon.png" alt="stepperz"></a>
						    
						</div>	
					
                   
				    </div>
					<div class="col-lg-4 class-grid">
						<div class="class-grid-img">
					      <a href="kalyan_timetable.html"> <img src="images/kalyannagartimeicon.png" alt="stepperz"></a>
						    
						</div>
						
                     
					
				    </div>
					<div class="col-lg-4 class-grid">
						<div class="class-grid-img ">
					     <a href="malleshwaram_timetable.html"> <img src="images/malleshwaramtimeicon.png" alt="stepperz"></a>
						    
						</div>
						
	                     			
				    </div>
				<div class="clearfix"> </div>
	         </div>

		 </div>	
   </div>
   <!-- \\Time-Table -->
	 <!-- //classes--
	<!-- Modal -->
  <div class="modal fade" id="model1" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
          <p style="background-color:lightblue;border-bottom:black;"><b>Aerobic exercise (also known as cardio) is physical exercise of low to high intensity that depends primarily on the aerobic energy-generating process.Aerobic literally means "relating to, involving, or requiring free oxygen",and refers to the use of oxygen to adequately meet energy demands during exercise via aerobic metabolism.Generally, light-to-moderate intensity activities that are sufficiently supported by aerobic metabolism can be performed for extended periods of time.</b></p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
  <div class="modal fade" id="model2" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
          <p style="background-color:lightblue;border-bottom:black;"><b>Dance is a performing art form consisting of purposefully selected sequences of human movement. This movement has aesthetic and symbolic value, and is acknowledged as dance by performers and observers within a particular culture.Dance can be categorized and described by its choreography, by its repertoire of movements, or by its historical period or place of origin.</b></p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
  <div class="modal fade" id="model3" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
          <p style="background-color:lightblue;border-bottom:black;"><b>Yoga has been used to alleviate problems associated with high blood pressure, high cholesterol, migraine headaches, asthma, shallow breathing, backaches, constipation, diabetes, menopause, multiple sclerosis, varicose veins, carpal tunnel syndrome and many chronic illnesses. It also has been studied and approved for its ability to promote relaxation and reduce stress.</b></p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
				<div class="clearfix"> </div>				
	
	
					<!-- //gallery -->
		<div class="services" id="gallery">
		<div class="container" style="background-color: #00b8f1d9;">
              <br/><br/>
		 <h3 class="title-w3"  style="margin-top: 4%;">Gallery</h3>
		 <p class="sub-text"></p>
		     <div class="wthree-agile-classes-section">
	               
				
					<div class="col-lg-4 class-grid">
						<div class="class-grid-img">
					       <a href="SadashivNagarGal.html"> <img src="images/folder1.png" alt="stepperz"></a>
						    
						</div>	
					
                   
				    </div>
					<div class="col-lg-4 class-grid">
						<div class="class-grid-img">
					       <a href="KayanNagarGal.html"> <img src="images/folder2.png" alt="stepperz"></a>
						    
						</div>
						
                     
					
				    </div>
				    <div class="col-lg-4 class-grid">
						<div class="class-grid-img">
					      <a href="MalleshwaramGal.html"> <img src="images/folder3.png" alt="stepperz"></a>
						    
						</div>
						
                     
					
				    </div>
				    <div class="col-lg-4 class-grid">
						<div class="class-grid-img">
					       <a href="videosadashiv.html"><img src="images/sadashiv.png" alt="stepperz"></a>
						    
						</div>
						
                     
					
				    </div>
				    <div class="col-lg-4 class-grid">
						<div class="class-grid-img">
					       <a href="videokalyan.html"> <img src="images/kalyan.png" alt="stepperz"></a>
						    
						</div>
						
                     
					
				    </div>
					<div class="col-lg-4 class-grid">
						<div class="class-grid-img ">
					      <a href="videomalleshwaram.html"> <img src="images/malleshwaram.png" alt="stepperz"></a>
						    
						</div>
						
	                     			
				    </div>
				<div class="clearfix"> </div>
	         </div>

		 </div>	
   </div>

 <center>  <div class="testmonials" id="monials">
		<div id="particles-js1"></div>
		   <div class="client-top">
		  <h3 class="title-w3 three">What Our Happy Students Say</h3>
		       <p class="sub-text"></p>
		        <div class="slider">
					<div class="callbacks_container">
						<ul class="rslides" id="slider3">
							<% 
							TestimonialsDaoimpl test_list= new TestimonialsDaoimpl();
							count=test_list.gettestimonialsCount();
							message= new String[count];
							name=new String[count];
							message=test_list.getTestimonialsmsg();
							name=test_list.getTestimonialname();
							for(int i=0;i<count;i++)
							{
							out.println("<li>");
							out.println("<div class='agileits-clients'>");
									
							out.println("<div class='client_agile_info'>");
									   
							out.println("<div class='c-img'> </div>");
							out.println("<p>"+message[i]+"</p>");											
							out.println("<h4>"+name[i]+"</h4>");
							out.println("</div>");
							out.println("</div>");
							out.println("</li>");
							}
							%>					
								<div class="clearfix"></div>
								</div>
							
						</ul>
					</div>
				</div>
		</div>
	</div>	</center>
	<!--//prices -->

	<!-- Contact -->
	<div >

		
<div class="map1"  id="contact">
    <h3 class="title-w3 con" style="color: #00aaff; background-color:grey;">Contact Us</h3>
<div class="col-md-6 contact-map-right" style="background-color: #ffff00;color: black; height: 482px;" >
    <h3 style="color: black;padding: 4%"><u>SADASHIV NAGAR ADDRESS:</u></h3>
<div style="text-align: justify;color: black; padding-left: 5%">
<p># 393 ,13th cross,2nd floor Above Karnataka bank,</p>
				<p>Sadashiv Nagar,Bangalore, India-560080.</p>
				<p>Telephone : 080 - 23613366</p>
				<p>Phone no : 9741111933</p>
                <p> E Mail : info@stepperzstudio.com</p><br></div> 
	
<div  style="background-color: #ffff00;color: black;" >

<h3 style="color:black;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;map</h3>
<p style="padding-left: 5%;"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3887.4406804557916!2d77.57718101439238!3d13.007585317608191!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae1634a2723345%3A0x15530c4788f31dc8!2sStepperz!5e0!3m2!1sen!2sin!4v1506324703751" frameborder="0"  style="width:95%;" allowfullscreen></iframe></p>
</div>
</div>
	</div>


<div class="map2">
<div class="col-md-6 contact-map-right" style="background-color: #00aaff;height: 482px;" >
     <h3 style="color: black;padding: 4%"><u>KALYAN NAGAR ADDRESS:</u></h3>
<div style="text-align: justify;color: black; padding-left: 5%">
               <p>No. 4m/407, 3rd Floor, 80 Feet Road, 3rd Block, HRBR Layout, 
				<p>Kalyan Nagar,Bangalore, India-560080.</p>
				<p>Telephone : 080 -25435566</p>
                 <p>Mobile: 9742266996, 9071136866</p>
				   <p> E Mail : info@stepperzstudio.com</p><br></div>
<div style="background-color: #00aaff;">

<h3 style="color:black;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;map</h3>
<p style="padding-left: 5%;"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3887.132955095439!2d77.57549181482257!3d13.027204190819345!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae17c46ab6a80f%3A0x4f50148657a96800!2sstepperzstudio!5e0!3m2!1sen!2sin!4v1506323952575"  style="width:95%;" allowfullscreen></iframe></p>
</div>
</div>
</div>	 
	

	
	<div class="clearfix"></div>
</div>

	<div class="contact">
	<div id="particles-js2"></div>
		<div class="contact-top">
			<h3 class="title-w3 con"> Feedback</h3>
		
			<form action="feedback.html" method="post" class="contact_form slideanim" onsubmit="return FormValidation();" onchange="return FormValidation();">

				<div class="message">
					<div class="col-md-6 col-sm-6 grid_6 c1">
						<input type="text" class="margin-right" Name="name" placeholder="Name" required="" id="firstname">
						<input type="email" Name="email" placeholder="Email" id="email" required="">
						<input type="text" class="margin-right" Name="phone_number" id="ppp" placeholder="Phone Number" required="">
					</div>

					<div class="col-md-6 col-sm-6 grid_6 c1">
						<textarea name="message" placeholder="Message" id="msg" required></textarea>
					</div>
					<div class="clearfix"></div>
				</div>

				<input type="submit" value="SEND MESSAGE">
			</form>
	

					<section class="social">
                        <ul>
						
							<li><a class="icon fb" href="http://Www.facebook.com/stepperzfitnessstudio"><i class="fa fa-facebook"></i></a></li>
							<li><a class="icon tw" href="https://twitter.com/STEPPERZSTUDIO1"><i class="fa fa-twitter"></i></a></li>
							<li><a class="icon fb" href="https://www.linkedin.com/in/stepperz-studio-0b37b5150/" style="background: #6788ce;position: relative;
    display: inline-block;
    width: 34px;
    height: 34px;"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li> 
							<li><a  class="icon fb" href="https://www.instagram.com/stepperzstudio/" style="background: #6788ce;position: relative;
    display: inline-block;
    width: 34px;
    height: 34px;"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
						</ul>
					</section>
		</div>
	</div>
	<!-- //Contact -->
<!-- footer -->
			<div class="copy-right">
				<p>&copy; 2017 Stepperz. All rights reserved | Designed by <a href="http://appfonehub.com/">Appfone Hub Pvt Ltd.</a></p>
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

		<!-- Map-JavaScript -->
			<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>        
			<script type="text/javascript">
				google.maps.event.addDomListener(window, 'load', init);
				function init() {
					var mapOptions = {
						zoom: 11,
						center: new google.maps.LatLng(40.6700, -73.9400),
						styles: [{"featureType":"all","elementType":"labels.text.fill","stylers":[{"saturation":36},{"color":"#000000"},{"lightness":40}]},{"featureType":"all","elementType":"labels.text.stroke","stylers":[{"visibility":"on"},{"color":"#000000"},{"lightness":16}]},{"featureType":"all","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"administrative","elementType":"geometry.fill","stylers":[{"color":"#000000"},{"lightness":20}]},{"featureType":"administrative","elementType":"geometry.stroke","stylers":[{"color":"#000000"},{"lightness":17},{"weight":1.2}]},{"featureType":"landscape","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":20}]},{"featureType":"poi","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":21}]},{"featureType":"road.highway","elementType":"geometry.fill","stylers":[{"color":"#000000"},{"lightness":17}]},{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"color":"#000000"},{"lightness":29},{"weight":0.2}]},{"featureType":"road.arterial","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":18}]},{"featureType":"road.local","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":16}]},{"featureType":"transit","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":19}]},{"featureType":"water","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":17}]}]
					};
					var mapElement = document.getElementById('map');
					var map = new google.maps.Map(mapElement, mapOptions);
					var marker = new google.maps.Marker({
						position: new google.maps.LatLng(40.6700, -73.9400),
						map: map,
					});
				}
			</script>
	<!-- //Map-JavaScript -->

	
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