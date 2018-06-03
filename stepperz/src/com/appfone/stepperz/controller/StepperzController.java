package com.appfone.stepperz.controller;

import java.io.File;


import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.appfone.stepperz.Daoimpl.AdminAddDaoimpl;
import com.appfone.stepperz.Daoimpl.AdminKalayanvideogalDaoimpl;
import com.appfone.stepperz.Daoimpl.AdminLoginDaoimpl;
import com.appfone.stepperz.Daoimpl.AdminMalleshvideogalleryDaoimpl;
import com.appfone.stepperz.Daoimpl.AdminMalleshwaramimggalleryDaoimpl;
import com.appfone.stepperz.Daoimpl.AdminProfileDaoimpl;
import com.appfone.stepperz.Daoimpl.AdminSadashivvideogalleryDaoimpl;
import com.appfone.stepperz.Daoimpl.AdminadsDaoimpl;
import com.appfone.stepperz.Daoimpl.AdminbannerDaoimpl;
import com.appfone.stepperz.Daoimpl.AdmincareerDaoimpl;
import com.appfone.stepperz.Daoimpl.AdminfeedbackDaoimpl;
import com.appfone.stepperz.Daoimpl.AdminkalayanimggalleryDaoimpl;
import com.appfone.stepperz.Daoimpl.AdminregistrationDaoimpl;
import com.appfone.stepperz.Daoimpl.AdminsadashivimggalleryDaoimpl;
import com.appfone.stepperz.Daoimpl.AdminstdregDaoimpl;
import com.appfone.stepperz.Daoimpl.AdmintestimonialsDaoimpl;
import com.appfone.stepperz.Daoimpl.Admintime_kalyannagrDaoimpl;
import com.appfone.stepperz.Daoimpl.Admintime_malleshwaramDaoimpl;
import com.appfone.stepperz.Daoimpl.Admintime_sadashivnagrDaoimpl;
import com.appfone.stepperz.Daoimpl.BannerDaoimpl;
import com.appfone.stepperz.Daoimpl.CareerDaoimpl;
import com.appfone.stepperz.Daoimpl.FeedbackDaoimpl;
import com.appfone.stepperz.Daoimpl.KalyannagarvideosDaoimpl;
import com.appfone.stepperz.Daoimpl.RecoveryDaoimpl;
import com.appfone.stepperz.Daoimpl.RegistrationDaoimpl;
import com.appfone.stepperz.pojo.StepAdminregistration;
import com.appfone.stepperz.pojo.StepAdvertisement;
import com.appfone.stepperz.pojo.StepBanner;
import com.appfone.stepperz.pojo.StepCareer;
import com.appfone.stepperz.pojo.StepFeedback;
import com.appfone.stepperz.pojo.StepKalyannagarimages;
import com.appfone.stepperz.pojo.StepKalyannagarvideo;
import com.appfone.stepperz.pojo.StepMalleshwaramimages;
import com.appfone.stepperz.pojo.StepMalleshwaramvideo;
import com.appfone.stepperz.pojo.StepRegistration;
import com.appfone.stepperz.pojo.StepSadashivnagarimages;
import com.appfone.stepperz.pojo.StepSadashivnagarvideo;
import com.appfone.stepperz.pojo.StepTestimonials;
import com.appfone.stepperz.pojo.StepTimetable_kalyannagar;
import com.appfone.stepperz.pojo.StepTimetable_malleshwaram;
import com.appfone.stepperz.pojo.StepTimetable_sadashivnagr;
import com.appfone.stepperz.util.Emailutility;

@Controller
public class StepperzController {
	@Autowired
	ServletContext context; 

	@Autowired
	HttpSession sessionn;
	
	
	@RequestMapping(value="/KayanNagarGal")
	public ModelAndView KayanNagarGalController()
	{
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("KayanNagarGal");
		return mv;
	}
	
	@InitBinder
	public void initBinder(WebDataBinder  dataBinder)
	{
		StringTrimmerEditor editor=new StringTrimmerEditor(true);
		dataBinder.registerCustomEditor(String.class, editor);
	}

	
	@RequestMapping(value="/MalleshwaramGal")
	public ModelAndView MalleshwaramGalController()
	{
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("MalleshwaramGal");
		return mv;
	}
	
	@RequestMapping(value="/SadashivNagarGal")
	public ModelAndView SadashivNagarGalController()
	{
		System.out.println("in controller");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("SadashivNagarGal");
		return mv;
	}
	
	
	@RequestMapping(value="/videosadashiv")
	public ModelAndView SadashivNagarVideoController()
	{
		System.out.println("in controller");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("videosadashiv");
		return mv;
	}
	
	
	@RequestMapping(value="/videokalyan")
	public ModelAndView KalyannagarVideoController()
	{
		System.out.println("in controller");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("videokalyan");
		return mv;
	}

	@RequestMapping(value="/videomalleshwaram")
	public ModelAndView malleshwaramVideoController()
	{
		System.out.println("in controller");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("videomalleshwaram");
		return mv;
	}
	
	@RequestMapping(value="/feedback")
	public String feedbackController(@RequestParam Map<String, String>reqparam, @ModelAttribute("feedback") StepFeedback feedback1)
	{
		
		String name=reqparam.get("name");
		String email =reqparam.get("email");
		String phone=reqparam.get("phone_number");
		String message=reqparam.get("message");
		
		FeedbackDaoimpl feedback=new FeedbackDaoimpl();
		feedback.saveFeedback(feedback1);
		String bodymsg = "Feed back sended by:"+name
				 +"\n" +"Email id is :"+email
				 +"\n" +"Phone number is:"+phone
				 +"\n" +"Feed Back Message is "+message;
		
		Emailutility.send("stepperzstudio1234@gmail.com", "Feedback Message", bodymsg);
		Emailutility.send(email, "Feed reply", "Thank for your feedback Don't reply this auto generated computer mail");
		
		return "redirect:index.jsp";
	}
	
	@RequestMapping(value="/career")
	public ModelAndView careerController()
	{
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("career");
		return mv;
	}
	
	
	
	@RequestMapping(value="/careersubmit")
	public String careersubmitController(@ModelAttribute("career") StepCareer career1)
	{
		System.out.println(career1.getEmail());
		System.out.println(career1.getFirst_name());
		CareerDaoimpl  careersave= new CareerDaoimpl();
		careersave.savecareer(career1);
		
		
		
		return "redirect:index.jsp";
	}
	
	@RequestMapping(value="/regestration")
	public ModelAndView regestrationController()
	{
		StepRegistration reg= new StepRegistration();
		ModelAndView mv = new ModelAndView();
		mv.addObject("adminreg", reg);
		mv.setViewName("regestration");
		return mv;
	}
	
	@RequestMapping(value="/courseregistration")
	public String courseregistrationController(@ModelAttribute("registration") StepRegistration reg1)
	{
		
		RegistrationDaoimpl registration= new RegistrationDaoimpl();
		registration.saveRegistration(reg1);
		
		return "redirect:index.jsp";
	}
	
	@RequestMapping(value="/sadashiv_timetable")
	public ModelAndView sadashiv_timetableController()
	{
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("sadashiv_timetable");
		return mv;
	}

	
	@RequestMapping(value="/kalyan_timetable")
	public ModelAndView kalyan_timetableController()
	{
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("kalyan_timetable");
		return mv;
	}

	
	@RequestMapping(value="/malleshwaram_timetable")
	public ModelAndView malleshwaram_timetableController()
	{
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("malleshwaram_timetable");
		return mv;
	}
	
	@RequestMapping(value="/admin")
	public ModelAndView adminLoginController()
	{
		System.out.println("in controller");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		return mv;
	}
	
	@RequestMapping(value="/registration")
	public ModelAndView adminRegistrationController(Model model)
	{
		StepAdminregistration adminreg= new StepAdminregistration();
		System.out.println("in controller");
		model.addAttribute("adminreg",adminreg);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminregistration");
		return mv;
	}
	
	@RequestMapping(value="/adminregistration")
	public String  adminregprocessController( @ModelAttribute("adminreg") StepAdminregistration adminregg,BindingResult result )
	{
		
	
			System.out.println("no errors");
		AdminregistrationDaoimpl saveAdmin=new AdminregistrationDaoimpl();
		saveAdmin.saveAdmin(adminregg);
		ModelAndView mv=new  ModelAndView();
		mv.setViewName("login");
		return "redirect:adminadd.html";
		
	}
	@RequestMapping(value="/admindashboard")
	public String admindashboardController(@RequestParam Map<String, String>reqparam)
	{
		
		
		String user=reqparam.get("username");
		String pass= reqparam.get("password1");
		System.out.println("in controller");
		AdminLoginDaoimpl admcheck=new AdminLoginDaoimpl();
		int res=admcheck.validateAdmin(user, pass);
		if(res==1)
		{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Adminindex");
		sessionn.setAttribute("activeuser", user);
		sessionn.setAttribute("activpass", pass);
		String activeuser=user;
		mv.addObject("activeuser", activeuser);
		return "redirect:/adminloginsuccess.html";
		}
		
		return "redirect:/adminloginfailure.html";
	}
	
	
	@RequestMapping(value="/adminloginsuccess")
	public ModelAndView adminloginsuccessController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		System.out.println("in controller");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Adminindex");
		return mv;
	}
	
	@RequestMapping(value="/adminloginfailure")
	public ModelAndView adminloginfailureController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		
		System.out.println("in controller");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		String err="Username or Password Missmatch";
		mv.addObject("error", err);
		return mv;
	}
	
	@RequestMapping(value="/adminbanner")
	public ModelAndView adminbannerController()
	{
		
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		
		}
		
			System.out.println("in controller");
			AdminbannerDaoimpl bannerlist=new AdminbannerDaoimpl();
			List list = bannerlist.getbanners();
			ModelAndView mv = new ModelAndView();
			AdminbannerDaoimpl bann=new AdminbannerDaoimpl();
			int size=bann.getBannerdbsize();
			StepBanner banner = new StepBanner();
			mv.addObject("banner", banner);
			mv.setViewName("banner");
			mv.addObject("bannsize", size);
			mv.addObject("bannerlist", list);
			return mv;
	}
	
	
	
	
	
	@RequestMapping(value="/bashboard")
	public ModelAndView DashboardController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Adminindex");
		return mv;
	}
	
	@RequestMapping(value="/forgotusername")
	public ModelAndView forgotusernameController()
	{
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("forgotusername");
		return mv;
	}
	
	@RequestMapping(value="/forgotcredentials")
	public ModelAndView forgotcredentialsController()
	{
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("recoverycredentials");
		return mv;
	}
	
	@RequestMapping(value="/recovery")
	public ModelAndView recoveryController(@RequestParam("email")String email)
	{
		RecoveryDaoimpl recovery=new RecoveryDaoimpl();
		int res=recovery.checkMailidtosend(email);
		if(res==1)
		{
			String username=recovery.getusername(email);
			String password=recovery.getpassword(email);
			String subject ="login credentials Recovery ";
			String msg="Dear Admin your username and password is as follows \n \n \n Username :" +username +"\n Password is :"+password +"\n \n \n Please don't reply to this message this is computer generated";
		Emailutility.send(email, subject, msg);
			ModelAndView mv = new ModelAndView();
		mv.setViewName("popup");
		return mv;
		}
		ModelAndView mv=new ModelAndView();
		mv.setViewName("recoverycredentials");
		String recerror="please enter the registred email id";
		mv.addObject("recerr", recerror);
		return mv;
		
		
	}
	
	
	@RequestMapping(value="/savebanner")
	public String savebannerController(@ModelAttribute("banner")StepBanner banner)
	{
		
		if((sessionn.getAttribute("activeuser"))==null)
		{
			
			return "redirect:/admin.html";
		}
		  MultipartFile file = banner.getFile(); 
		 
		   
		  String fileName = file.getOriginalFilename();  
		  System.out.println("filename is " +fileName);
		  banner.setBanner_img(fileName);
		  String relativepath = "images/banner/"+fileName;
		   String uploadPath = context.getRealPath("") + File.separator + "images" + File.separator +"banner"+ File.separator;
		   System.out.println("uploadpath is" +uploadPath);
		   File targetFile = new File(uploadPath, fileName);  
		  try {
			file.transferTo(targetFile);
			System.out.println("transfer starts");
		} catch (IllegalStateException e) {
			
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		  AdminbannerDaoimpl savebanner = new AdminbannerDaoimpl();
		  savebanner.Savebanner(banner);
		return "redirect:/adminbanner.html";
	}
	
	@RequestMapping(value="/deletebanner")
	public String deletebannerController(@RequestParam("bannerid")int bannerid,@RequestParam("bannerimg")String bannerimg)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			
			return "redirect:/admin.html";
		}
		System.out.println("banner id is" +bannerid);
		System.out.println("banner image is " +bannerimg);
		AdminbannerDaoimpl deletebanner = new AdminbannerDaoimpl();
		deletebanner.deletebanner(bannerid, bannerimg);
		
		   String uploadPath = context.getRealPath("") + File.separator + "images" + File.separator +"banner"+ File.separator;
		
		File file= new File(uploadPath,bannerimg);
		file.delete();
		
		
		return "redirect:/adminbanner.html";
	}
	
	@RequestMapping(value="/editbanner")
	public ModelAndView  bannereditController(@RequestParam("bannerid")int id,@RequestParam("bannerimg")String bannerimg)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		AdminbannerDaoimpl editbanner=new AdminbannerDaoimpl();
		StepBanner banner=editbanner.getsinglebanner(id);
		ModelAndView mv= new ModelAndView();
		mv.addObject("banner",banner);
		mv.addObject("imgtoedit", bannerimg);
		mv.setViewName("banneredit");
		
		return mv;
	}
	
	@RequestMapping(value="/saveeditedbanner")
	public String  saveeditedbannerController(@RequestParam("imgtoedit")String imgtoedit,@ModelAttribute("banner")StepBanner banner)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			
			return "redirect:/admin.html";
		}
		System.out.println("imgtoedit is  " +imgtoedit);
		MultipartFile file = banner.getFile(); 
		System.out.println(""+file.getSize());
		System.out.println(file.getOriginalFilename());
		if(file.getSize()==0)
		{
			System.out.println("image is not choose method");
			banner.setBanner_img(imgtoedit);
			AdminbannerDaoimpl saveeditedbanner = new AdminbannerDaoimpl();
			  saveeditedbanner.Savebanner(banner);
			  
		}
		else if(file.getSize()>0)
		{
			System.out.println("image choose method");
			String uploadPath = context.getRealPath("") + File.separator + "images" + File.separator +"banner"+ File.separator;
			File delfile=new File(uploadPath,imgtoedit);
			delfile.delete();
			String fileName = file.getOriginalFilename();  
			  System.out.println("filename is " +fileName);
			  banner.setBanner_img(fileName);
			  String relativepath = "images/banner/"+fileName;
			   System.out.println("uploadpath is" +uploadPath);
			   File targetFile = new File(uploadPath, fileName);  
			  try {
				file.transferTo(targetFile);
				System.out.println("transfer starts");
			} catch (IllegalStateException e) {
				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
			  			 
		}
		AdminbannerDaoimpl saveeditedbanner = new AdminbannerDaoimpl();
		  saveeditedbanner.Savebanner(banner);
		 return "redirect:/adminbanner.html";
	}
	
	@RequestMapping(value="/sadashivtimetable")
	public ModelAndView  sadashivtimetableController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		
		ModelAndView mv= new ModelAndView();
		StepTimetable_sadashivnagr timetable = new StepTimetable_sadashivnagr();
		Admintime_sadashivnagrDaoimpl savtime=new Admintime_sadashivnagrDaoimpl();
		List list = savtime.gettimetables();
		mv.addObject("sadatime", timetable);
		mv.addObject("sadatimelist", list);
		mv.setViewName("adminsadashivtimetable");
		return mv;
	}
	
	@RequestMapping(value="/changesadatime")
	public ModelAndView  changesadatimeController(@RequestParam("timeid")int changeid)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		Admintime_sadashivnagrDaoimpl changeobj= new Admintime_sadashivnagrDaoimpl();
		StepTimetable_sadashivnagr chhangedobj = changeobj.getsingletime(changeid);
		ModelAndView mv= new ModelAndView();
		mv.setViewName("adminsadashivtimechange");
		mv.addObject("changesadaobj", chhangedobj);
		return mv;
	}
	
	
	@RequestMapping(value="/savesadatimeimgchange")
	public String  savesadatimeimgchangeController(@ModelAttribute("changesadaobj")StepTimetable_sadashivnagr updateobj )
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			
			return "redirect:/admin.html";
		}
		MultipartFile sadafile = updateobj.getSadafile();
		String fileName=sadafile.getOriginalFilename();
		
		if(sadafile.getSize()>0)
		{
			
			String uploadPath = context.getRealPath("") + File.separator + "images" + File.separator +"timetable"+ File.separator +"sadhashivnagar" +File.separator ;
			System.out.println("uploadpath is" +uploadPath);
			String todeletefile =updateobj.getTimetable_image();
			File delfile= new File(uploadPath,todeletefile);
			delfile.delete();
			updateobj.setTimetable_image(fileName);
			 File targetFile = new File(uploadPath, fileName);  
			  try {
				sadafile.transferTo(targetFile);
				System.out.println("transfer starts");
			} catch (IllegalStateException e) {
				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
			  Admintime_sadashivnagrDaoimpl updatetime=new Admintime_sadashivnagrDaoimpl();
			  updatetime.saveSadaTime(updateobj);
	
		}
		
		return "redirect:/sadashivtimetable.html";
	}
	
	
	@RequestMapping(value="/kalyantimetable")
	public ModelAndView  kalyantimetableController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		System.out.println("admin kalayan nagar controller");
		
		ModelAndView mv= new ModelAndView();
		StepTimetable_kalyannagar timetable = new StepTimetable_kalyannagar();
		Admintime_kalyannagrDaoimpl kalayantime=new Admintime_kalyannagrDaoimpl();
		List list = kalayantime.gettimetables();
		mv.addObject("kalayantime", kalayantime);
		mv.addObject("kalayntimelist", list);
		mv.setViewName("adminkalyantimetable");
		return mv;
	}
	
	

	@RequestMapping(value="/changekalyantime")
	public ModelAndView  changekalyantimeController(@RequestParam("timeid")int changeid)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		Admintime_kalyannagrDaoimpl changeobj= new Admintime_kalyannagrDaoimpl();
		StepTimetable_kalyannagar chhangedobj = changeobj.getsingletime(changeid);
		ModelAndView mv= new ModelAndView();
		mv.setViewName("adminkalyantimechange");
		mv.addObject("changekalaobj", chhangedobj);
		return mv;
	}
	
	@RequestMapping(value="/savekalatimeimgchange")
	public String  savekalatimeimgchangeController(@ModelAttribute("changekalaobj")StepTimetable_kalyannagar updateobj )
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			
			return "redirect:/admin.html";
		}
		MultipartFile sadafile = updateobj.getKalafile();
		String fileName=sadafile.getOriginalFilename();
		
		if(sadafile.getSize()>0)
		{
			
			String uploadPath = context.getRealPath("") + File.separator + "images" + File.separator +"timetable"+ File.separator +"kalyannagar" +File.separator ;
			System.out.println("uploadpath is" +uploadPath);
			String todeletefile =updateobj.getTimetable_image();
			File delfile= new File(uploadPath,todeletefile);
			delfile.delete();
			updateobj.setTimetable_image(fileName);
			 File targetFile = new File(uploadPath, fileName);  
			  try {
				sadafile.transferTo(targetFile);
				System.out.println("transfer starts");
			} catch (IllegalStateException e) {
				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
			  Admintime_kalyannagrDaoimpl updatetime=new Admintime_kalyannagrDaoimpl();
			  updatetime.saveSadaTime(updateobj);
	
		}
		
		return "redirect:/kalyantimetable.html";
	}
	
	
	
	
	@RequestMapping(value="/mallesharamtimetable")
	public ModelAndView  mallesharamtimetableController()
	{	
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		System.out.println("admin mallesharam controller");
		
		ModelAndView mv= new ModelAndView();
		StepTimetable_malleshwaram timetable = new StepTimetable_malleshwaram();
		Admintime_malleshwaramDaoimpl malleshtime=new Admintime_malleshwaramDaoimpl();
		List list = malleshtime.gettimetables();
		mv.addObject("malleshtime", malleshtime);
		mv.addObject("malleshtimelist", list);
		mv.setViewName("adminmallesharamtimetable");
		return mv;
	}
	
	@RequestMapping(value="/changemalleshtime")
	public ModelAndView  changemalleshtimeController(@RequestParam("timeid")int changeid)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		Admintime_malleshwaramDaoimpl changeobj= new Admintime_malleshwaramDaoimpl();
		StepTimetable_malleshwaram chhangedobj = changeobj.getsingletime(changeid);
		ModelAndView mv= new ModelAndView();
		mv.setViewName("adminmallesharamtimechange");
		mv.addObject("changemalaobj", chhangedobj);
		return mv;
	}
	
	
	@RequestMapping(value="/savemalatimeimgchange")
	public String  savemalatimeimgchangeController(@ModelAttribute("changemalaobj")StepTimetable_malleshwaram updateobj )
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			
			return "redirect:/admin.html";
		}
		MultipartFile malafile = updateobj.getMalafile();
		String fileName=malafile.getOriginalFilename();
		
		if(malafile.getSize()>0)
		{
			
			String uploadPath = context.getRealPath("") + File.separator + "images" + File.separator +"timetable"+ File.separator +"malleshwaram" +File.separator ;
			System.out.println("uploadpath is" +uploadPath);
			String todeletefile =updateobj.getTimetable_image();
			File delfile= new File(uploadPath,todeletefile);
			delfile.delete();
			updateobj.setTimetable_image(fileName);
			 File targetFile = new File(uploadPath, fileName);  
			  try {
				malafile.transferTo(targetFile);
				System.out.println("transfer starts");
			} catch (IllegalStateException e) {
				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
			  Admintime_malleshwaramDaoimpl updatetime=new Admintime_malleshwaramDaoimpl();
			  updatetime.saveMalleshTime(updateobj);
	
		}
		
		return "redirect:/mallesharamtimetable.html";
	}
	
	
	@RequestMapping(value="/adminads")
	public ModelAndView adminadsController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		ModelAndView mv=new ModelAndView();
		StepAdvertisement ads=new StepAdvertisement();
		AdminadsDaoimpl adsobj=new AdminadsDaoimpl();
		Map<String,String> adslist= new LinkedHashMap();
		adslist.put("promo", "promo");
		adslist.put("hire", "hire");
		List list= adsobj.getads();
		mv.addObject("ads", ads);
		mv.addObject("adsMap", adslist);
		mv.addObject("adslist", list);
		mv.setViewName("adminads");
		return mv;
	}
	
	
	
	
	@RequestMapping(value="/saveadminads")
	public String saveadminadsController(@ModelAttribute("ads")StepAdvertisement adver)
	{
		
		if((sessionn.getAttribute("activeuser"))==null)
		{
			
			return "redirect:/admin.html";
		}
		System.out.println("in ads controller");
		System.out.println(adver.getAds_type());
		MultipartFile file = adver.getAdsfile();
		String fileName=file.getOriginalFilename();
		System.out.println("uploaded file name is " +fileName);
		adver.setAds_images(fileName);
		
		   String uploadPath = context.getRealPath("") + File.separator + "images" + File.separator +"ads"+ File.separator;
		   System.out.println("uploadpath is" +uploadPath);
		   File targetFile = new File(uploadPath, fileName);  
		  try {
			file.transferTo(targetFile);
			System.out.println("transfer starts");
		} catch (IllegalStateException e) {
			
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	
		AdminadsDaoimpl newad = new AdminadsDaoimpl();
		newad.saveads(adver);
		return"redirect:/adminads.html";
	}
	
	@RequestMapping(value="/deletead")
	public String deleteadController(@RequestParam("ads_id")int adsid,@RequestParam("ads_img")String adsimg)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			
			return "redirect:/admin.html";
		}
		
		AdminadsDaoimpl deleads= new AdminadsDaoimpl();
		deleads.deletead(adsid);
		   String uploadPath = context.getRealPath("") + File.separator + "images" + File.separator +"ads"+ File.separator;
		System.out.println("ads image path " +uploadPath);
		File file= new File(uploadPath,adsimg);
		file.delete();
		return "redirect:/adminads.html";
	}
	
	
	@RequestMapping(value="/admintestimonials")
	public ModelAndView admintestimonialsController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		StepTestimonials test = new StepTestimonials();
		AdmintestimonialsDaoimpl gettest= new AdmintestimonialsDaoimpl();
		List list=gettest.getAllTestimonials();
		ModelAndView mv= new ModelAndView();
		mv.setViewName("admintestimonials");
		mv.addObject("testilist", list);
		mv.addObject("testi", test);
		
		return mv;
	}
	
	@RequestMapping(value="/savetestimonial")
	public String savetestimonialController(@ModelAttribute("testi")StepTestimonials testi)
	{
		
		if((sessionn.getAttribute("activeuser"))==null)
		{
			
			return "redirect:/admin.html";
		}
		AdmintestimonialsDaoimpl savetesti= new AdmintestimonialsDaoimpl();
		savetesti.saveTestimonial(testi);
		
		return "redirect:/admintestimonials.html";
	}
	
	
	@RequestMapping(value="/deletetesti")
	public String deletetestiController(@RequestParam("test_id")int testid)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			return "redirect:/admin.html";
		}
		AdmintestimonialsDaoimpl deletesti = new AdmintestimonialsDaoimpl();
		deletesti.deleteSingleTesti(testid);
		
		
		return "redirect:/admintestimonials.html";
	}

	
	@RequestMapping(value="/edittesti")
	public ModelAndView edittestiController(@RequestParam("test_id")int testid)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		
		AdmintestimonialsDaoimpl edittest= new AdmintestimonialsDaoimpl();
		StepTestimonials testt= edittest.getSingleTestimonial(testid);
		ModelAndView mv= new ModelAndView();
		mv.addObject("edittest", testt);
		mv.setViewName("admintestimonialedit");
		return mv;
		
	}
	
	@RequestMapping(value="/saveeditedtesti")
	public String saveeditedtestiController(@ModelAttribute("edittest")StepTestimonials editest)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			
			return "redirect:/admin.html";
		}
		
		AdmintestimonialsDaoimpl edittest= new AdmintestimonialsDaoimpl();
		edittest.saveTestimonial(editest);
		return "redirect:/admintestimonials.html";
	}
	
	
	@RequestMapping(value="/admincareer")
	public ModelAndView admincareerController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		StepCareer careerr = new StepCareer(); 
		ModelAndView mv= new ModelAndView();
		AdmincareerDaoimpl listacareer= new AdmincareerDaoimpl();
		List list=listacareer.getCareers();
		mv.addObject("careerobj", careerr);
		mv.addObject("carrlist", list);
		mv.setViewName("admincareer");
		return mv;
		
		
	}
	
	
	
	
	@RequestMapping(value="/saveadmincareer")
	public String saveadmincareerController(@ModelAttribute("careerobj")StepCareer carerr)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			
			return "redirect:/admin.html";
		}
		
		AdmincareerDaoimpl savecareer=new AdmincareerDaoimpl();
		savecareer.saveCareer(carerr);
		return"redirect:/admincareer.html";

	}
	
	
	
	@RequestMapping(value="/deleteadmincareer")
	public String deleteadmincareerController(@RequestParam("career_id")int career_id)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			
			return "redirect:/admin.html";
		}
		AdmincareerDaoimpl deletecareer= new AdmincareerDaoimpl();
		deletecareer.deleteSingleCareer(career_id);
		return "redirect:/admincareer.html";
	}
	
	@RequestMapping(value="/editadmincareer")
	public ModelAndView editadmincareerController(@RequestParam("career_id")int career_id)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		
		AdmincareerDaoimpl editcareer = new AdmincareerDaoimpl();
		StepCareer editedcarrer= editcareer.getSingleCareer(career_id);
		
		ModelAndView mv= new ModelAndView();
		mv.addObject("editedcareer", editedcarrer);
		mv.setViewName("admincareeredit");
		return mv;
	}
	
	
	@RequestMapping(value="/adminfeedback")
	public ModelAndView adminfeedbackController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		
		AdminfeedbackDaoimpl feed = new AdminfeedbackDaoimpl();
		List feedlist= feed.getFeedbacks();
		ModelAndView mv= new ModelAndView();
		mv.addObject("feedlist", feedlist);
		mv.setViewName("adminfeedback");
		return mv;
	}
	
	
	@RequestMapping(value="/deleteadminfeed")
	public String deleteadminfeedController(@RequestParam("feedback_id")int feedback_id)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			
			return "redirect:/admin.html";
		}
		
		AdminfeedbackDaoimpl delfeed= new AdminfeedbackDaoimpl();
		delfeed.deletefeedback(feedback_id);
		
		return "redirect:/adminfeedback.html";
	}
	
	@RequestMapping(value="/studentregbyadmin")
	public ModelAndView studentregbyadminController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		StepRegistration stdreg= new StepRegistration();
		AdminstdregDaoimpl reglist= new AdminstdregDaoimpl();
		List list=reglist.getSavedreglist();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("stdreg", stdreg);
		mv.addObject("stdreglist", list);
		mv.setViewName("studentregbyadmin");
		return mv;
	}
	
	
	@RequestMapping(value="/savestdregbyadmin")
	public String  savestdregbyadminController(@ModelAttribute("stdreg")StepRegistration stdreg)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			
			return "redirect:/admin.html";
		}
		AdminstdregDaoimpl savreg= new AdminstdregDaoimpl();
		savreg.savestdreg(stdreg);
		return "redirect:/studentregbyadmin.html";
	}
	
	@RequestMapping(value="/deletestdreg")
	public String  deletestdregController(@RequestParam("reg_id")int reg_id)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			
			return "redirect:/admin.html";
		}
		AdminstdregDaoimpl delreg= new AdminstdregDaoimpl();
		delreg.deletesinglestdreg(reg_id);
		return "redirect:/studentregbyadmin.html";
	}
	
	
	@RequestMapping(value="adminlogout.html")
	public String adminlogoutController()
	{
		
		sessionn.invalidate();
		return "redirect:/admin.html";
	}
	
	
	
	
	@RequestMapping(value="/timetablelist")
	public ModelAndView timetablelistController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		ModelAndView mv= new ModelAndView();
		mv.setViewName("timetablelist");
		return mv;
	}
	
	@RequestMapping(value="/adminsadagallery")
	public ModelAndView adminsadagalleryController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		AdminsadashivimggalleryDaoimpl adsadim= new AdminsadashivimggalleryDaoimpl();
		List list = adsadim.getsadashivimg();
		StepSadashivnagarimages sadaimg= new StepSadashivnagarimages();
		ModelAndView mv= new ModelAndView();
		mv.addObject("adminsadaimg", list);
		mv.addObject("adsadaim", sadaimg);
		mv.setViewName("adminsadashivimagegal");
		return mv;
	}
	
	
	@RequestMapping(value="/deleteadminsada")
	public String deleteadminsadaController(@RequestParam("delimgid")int delimgid,@RequestParam("delimgname")String delimgname)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			
			return "redirect:/admin.html";
		}
		
		AdminsadashivimggalleryDaoimpl deleimg= new AdminsadashivimggalleryDaoimpl(); 
		deleimg.deletesadimg(delimgid);
		String uploadPath = context.getRealPath("") + File.separator + "images" + File.separator +"sadashivnagarimages"+ File.separator;
		System.out.println("ads image path " +uploadPath);
		File file= new File(uploadPath,delimgname);
		file.delete();
		return "redirect:/adminsadagallery.html";
	}
	
	
	
	@RequestMapping(value="/saveadminsadimg")
	public String saveadminsadimgController(@ModelAttribute("adsadaim")StepSadashivnagarimages adsadaim)
	{
		
		if((sessionn.getAttribute("activeuser"))==null)
		{
			
			return "redirect:/admin.html";
		}
		  MultipartFile file = adsadaim.getAdminsadafile();
		 
		   
		  String fileName = file.getOriginalFilename();  
		  System.out.println("filename is " +fileName);
		  adsadaim.setImage_name(fileName);
		  String relativepath = "images/sadashivnagarimages/"+fileName;
		   String uploadPath = context.getRealPath("") + File.separator + "images" + File.separator +"sadashivnagarimages"+ File.separator;
		   System.out.println("uploadpath is" +uploadPath);
		   File targetFile = new File(uploadPath, fileName);  
		  try {
			file.transferTo(targetFile);
			System.out.println("transfer starts");
		} catch (IllegalStateException e) {
			
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		  AdminsadashivimggalleryDaoimpl adminimg = new AdminsadashivimggalleryDaoimpl();
		  adminimg.saveadminimg(adsadaim);
		return "redirect:/adminsadagallery.html";
	}
	
	
	@RequestMapping(value="/adminkalagallery")
	public ModelAndView adminkalagalleryController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		AdminkalayanimggalleryDaoimpl adkalim= new AdminkalayanimggalleryDaoimpl();
		List list = adkalim.getkalayanimg();
		StepKalyannagarimages kalaimg= new StepKalyannagarimages();
		ModelAndView mv= new ModelAndView();
		mv.addObject("adminkalaimg", list);
		mv.addObject("adkalaim", kalaimg);
		mv.setViewName("adminkalyanimagegal");
		return mv;
	}
	
	
	@RequestMapping(value="/deleteadminkala")
	public String deleteadminkalaController(@RequestParam("delimgid")int delimgid,@RequestParam("delimgname")String delimgname)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			
			return "redirect:/admin.html";
		}
		
		AdminkalayanimggalleryDaoimpl deleimg= new AdminkalayanimggalleryDaoimpl(); 
		deleimg.deletekalaimg(delimgid);
		String uploadPath = context.getRealPath("") + File.separator + "images" + File.separator +"Kalyannagarimages"+ File.separator;
		System.out.println("ads image path " +uploadPath);
		File file= new File(uploadPath,delimgname);
		file.delete();
		return "redirect:/adminkalagallery.html";
	}
	
	@RequestMapping(value="/saveadminkalaimg")
	public String saveadminkalaimgController(@ModelAttribute("adkalaim")StepKalyannagarimages adkalaim)
	{
		
		if((sessionn.getAttribute("activeuser"))==null)
		{
			
			return "redirect:/admin.html";
		}
		  MultipartFile file = adkalaim.getAdminkalafile();
		 
		   
		  String fileName = file.getOriginalFilename();  
		  System.out.println("filename is " +fileName);
		  adkalaim.setImage_name(fileName);
		  String relativepath = "images/kalyannagarimages/"+fileName;
		   String uploadPath = context.getRealPath("") + File.separator + "images" + File.separator +"kalyannagarimages"+ File.separator;
		   System.out.println("uploadpath is" +uploadPath);
		   File targetFile = new File(uploadPath, fileName);  
		  try {
			file.transferTo(targetFile);
			System.out.println("transfer starts");
		} catch (IllegalStateException e) {
			
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		 AdminkalayanimggalleryDaoimpl adminimg = new AdminkalayanimggalleryDaoimpl();
		 adminimg.saveadminimg(adkalaim);
		return "redirect:/adminkalagallery.html";
	}
	
	
	@RequestMapping(value="/adminmalleshgallery")
	public ModelAndView adminmalleshgalleryController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		AdminMalleshwaramimggalleryDaoimpl admalaim= new AdminMalleshwaramimggalleryDaoimpl();
		List list = admalaim.getmalanimg();
		StepMalleshwaramimages malaimg= new StepMalleshwaramimages();
		ModelAndView mv= new ModelAndView();
		mv.addObject("adminmalaimg", list);
		mv.addObject("admalaim", malaimg);
		mv.setViewName("adminmallehswaramimagegal");
		return mv;
	}
	
	
	@RequestMapping(value="/deleteadminmalaimg")
	public String deleteadminmalaimgController(@RequestParam("delimgid")int delimgid,@RequestParam("delimgname")String delimgname)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			
			return "redirect:/admin.html";
		}
		
		AdminMalleshwaramimggalleryDaoimpl deleimg= new AdminMalleshwaramimggalleryDaoimpl(); 
		deleimg.deletemalaimg(delimgid);
		String uploadPath = context.getRealPath("") + File.separator + "images" + File.separator +"malleshwaramimages"+ File.separator;
		System.out.println("ads image path " +uploadPath);
		File file= new File(uploadPath,delimgname);
		file.delete();
		return "redirect:/adminmalleshgallery.html";
	}
	
	
	@RequestMapping(value="/saveadminmalaimg")
	public String saveadminmalaimgController(@ModelAttribute("admalaim")StepMalleshwaramimages admalaim)
	{
		
		if((sessionn.getAttribute("activeuser"))==null)
		{
			
			return "redirect:/admin.html";
		}
		  MultipartFile file = admalaim.getAdminmalafile();
		 
		   
		  String fileName = file.getOriginalFilename();  
		  System.out.println("filename is " +fileName);
		  admalaim.setImage_name(fileName);
		  String relativepath = "images/malleshwaramimages/"+fileName;
		   String uploadPath = context.getRealPath("") + File.separator + "images" + File.separator +"malleshwaramimages"+ File.separator;
		   System.out.println("uploadpath is" +uploadPath);
		   File targetFile = new File(uploadPath, fileName);  
		  try {
			file.transferTo(targetFile);
			System.out.println("transfer starts");
		} catch (IllegalStateException e) {
			
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		 AdminMalleshwaramimggalleryDaoimpl adminimg = new AdminMalleshwaramimggalleryDaoimpl();
		 adminimg.saveadminimg(admalaim);
		return "redirect:/adminmalleshgallery.html";
	}
	
	
	@RequestMapping(value="/adminkalavideo")
	public ModelAndView adminkalavideoController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		
		ModelAndView mv= new ModelAndView();
		AdminKalayanvideogalDaoimpl kalvlist= new AdminKalayanvideogalDaoimpl();
		List list = kalvlist.getKalayanvideos();
		StepKalyannagarvideo kalvideo= new StepKalyannagarvideo();
		mv.addObject("adkalavideo", kalvideo);
		mv.addObject("adminkalavlist", list);
		mv.setViewName("adminkalyanvideogal");
		return mv;
	}
	
	@RequestMapping(value="/admkalavideodel")
	public String admkalavideodelController(@RequestParam("video_id")int video_id)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			
			return "redirect:/admin.html";
		}
		
		AdminKalayanvideogalDaoimpl delevid= new AdminKalayanvideogalDaoimpl(); 
		delevid.deletevideo(video_id);
		
		return "redirect:/adminkalavideo.html";
	}
	
	@RequestMapping(value="/saveadminkalavid")
	public String saveadminkalavidController(@ModelAttribute("adkalavideo")StepKalyannagarvideo adkalavideo)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			
			return "redirect:/admin.html";
		}
		
		AdminKalayanvideogalDaoimpl savevid= new AdminKalayanvideogalDaoimpl(); 
		savevid.savevideo(adkalavideo);
		
		return "redirect:/adminkalavideo.html";
	}
	
	@RequestMapping(value="/adminsadavideo")
	public ModelAndView adminsadavideoController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		
		ModelAndView mv= new ModelAndView();
		AdminSadashivvideogalleryDaoimpl sadavlist= new AdminSadashivvideogalleryDaoimpl();
		List list = sadavlist.getSadavideos();
		StepSadashivnagarvideo sadavideo= new StepSadashivnagarvideo();
		mv.addObject("adsadavideo", sadavideo);
		mv.addObject("adminsadavlist", list);
		mv.setViewName("adminsadashivideogal");
		return mv;
	}
	@RequestMapping(value="/admsadavideodel")
	public String admsadavideodelController(@RequestParam("video_id")int video_id)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			
			return "redirect:/admin.html";
		}
		
		AdminSadashivvideogalleryDaoimpl delevid= new AdminSadashivvideogalleryDaoimpl(); 
		delevid.deletevideo(video_id);
		
		return "redirect:/adminsadavideo.html";
	}
	
	@RequestMapping(value="/saveadminsadavid")
	public String saveadminsadavidController(@ModelAttribute("saveadminsadavid")StepSadashivnagarvideo adsadavideo)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			
			return "redirect:/admin.html";
		}
		
		AdminSadashivvideogalleryDaoimpl savevid= new AdminSadashivvideogalleryDaoimpl(); 
		savevid.savevideo(adsadavideo);
		
		return "redirect:/adminsadavideo.html";
	}
	
	
	@RequestMapping(value="/adminmalleshvideo")
	public ModelAndView adminmalleshvideoController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		
		ModelAndView mv= new ModelAndView();
		AdminMalleshvideogalleryDaoimpl malavlist= new AdminMalleshvideogalleryDaoimpl();
		List list = malavlist.getMalleshvideos();
		StepMalleshwaramvideo malavideo= new StepMalleshwaramvideo();
		mv.addObject("admalavideo", malavideo);
		mv.addObject("adminmalavlist", list);
		mv.setViewName("adminmalleshwaramvideogal");
		return mv;
	}
	
	@RequestMapping(value="/admmalavideodel")
	public String admmalavideodelController(@RequestParam("video_id")int video_id)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			
			return "redirect:/admin.html";
		}
		
		AdminMalleshvideogalleryDaoimpl delevid= new AdminMalleshvideogalleryDaoimpl(); 
		delevid.deletevideo(video_id);
		
		return "redirect:/adminmalleshvideo.html";
	}
	
	@RequestMapping(value="/saveadminmalavid")
	public String saveadminmalavidController(@ModelAttribute("admalavideo")StepMalleshwaramvideo admalavideo)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			
			return "redirect:/admin.html";
		}
		
		AdminMalleshvideogalleryDaoimpl savevid= new AdminMalleshvideogalleryDaoimpl(); 
		savevid.savevideo(admalavideo);
		
		return "redirect:/adminmalleshvideo.html";
	}
	
	
	@RequestMapping(value="/adminprofile")
	public ModelAndView adminprofileController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		AdminProfileDaoimpl prof= new AdminProfileDaoimpl();
		String user = sessionn.getAttribute("activeuser").toString();
		String pass = sessionn.getAttribute("activpass").toString();
		List list = prof.getAdminDetails(user, pass);
		ModelAndView mv= new ModelAndView();
		mv.addObject("proflist", list);
		mv.setViewName("adminprofile");
		return mv;
	}
	
	@RequestMapping(value="/adminadd")
	public ModelAndView adminaddController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		ModelAndView mv= new ModelAndView();
		AdminAddDaoimpl admin = new AdminAddDaoimpl();
		StepAdminregistration adminreg= new StepAdminregistration();
		List list = admin.getAdmins();
		mv.addObject("adminlist", list);
		mv.addObject("adminreg", adminreg);
		mv.setViewName("adminAdd");
		return mv;
	}
	
	
	@RequestMapping(value="/deleteadmin")
	public String deleteadminController(@RequestParam("admin_id")int admin_id)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			
			
			return "redirect:/admin.html";
		}
		
		AdminAddDaoimpl admin = new AdminAddDaoimpl();
		admin.deleteAdmin(admin_id);
		
		return "redirect:/adminadd.html";
	}
	
	
	@RequestMapping(value="/editadmin")
	public ModelAndView editadminController(@RequestParam("admin_id")int admin_id)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			
			return mv;
		}
		
		AdminAddDaoimpl admin = new AdminAddDaoimpl();
		StepAdminregistration adminreg = admin.getSingleadmin(admin_id);
		System.out.println(adminreg.getAdmin_email());
		System.out.println(adminreg.getAdmin_password());
		ModelAndView mv= new ModelAndView();
		mv.addObject("adminreg", adminreg);
		mv.setViewName("adminedit");
		return mv;
	}
	
	@RequestMapping(value="/webmail")
	public String processForm(HttpServletRequest request) 
{
String redirectUrl = request.getScheme() + "://103.92.235.137:2086/etc/apps/webmail/";
return "redirect:" + redirectUrl;
}
	
}



