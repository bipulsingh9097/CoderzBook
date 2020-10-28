package com.coderzbook.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.log4j.Logger;
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

import com.coderzbook.entity.Admin;
import com.coderzbook.patterns.ObjectFactory;
import com.coderzbook.services.AdminService;

@Controller
public class AdminController {

	/* Logger Object */
	private Logger logger = Logger.getLogger(AdminController.class);

	/* Injecting the admin service bean */
	@Autowired
	private AdminService adminService;

	/* validate the field to not get blank or space input */
	@InitBinder
	public void initBinder(WebDataBinder dataBinder) {
		logger.info("Init Binder is executing to check the white spaces from form fields");
		StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
		dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
	}

	/* Returns the Admin Login Index */
	@RequestMapping("/adminlogin")
	public String getLogin() {
		logger.info("Returns admin login");
		return "AdminLoginPage";
	}
	
	
	
	/* Returns the Admin Login Index */
	@RequestMapping("/logout")
	public String getLogout(Model model,HttpSession session) {
		logger.info("Invalidating the session");
		session.removeAttribute("adminId");
		session.invalidate();
		model.addAttribute("admin", ObjectFactory.getInstance("admin"));
		return "AdminLoginPage";
	}


	
	/* Authenticate the Admin Credential and returns the admin dashboard */
	@RequestMapping("/adminauthentication")
	public String adminAuthentication(@ModelAttribute Admin admin,
			HttpSession session, Model model) {
			if (adminService.authentication(admin)) {
				session.setAttribute("adminId", admin.getAdminId());
				logger.info("session created and redirected to admin dashboard");
				return "AdminDashboard";
			} else {
				model.addAttribute("message", "Invalid Username or Password!!");
				return "AdminLoginPage";
			}
	}

	
	/*returns admin dashboard*/
	@RequestMapping("/admindashboard")
	public String adminAuthentication(HttpSession session,Model model) {
		String adminId = (String) session.getAttribute("adminId");
		if (adminId != null) {
			return "AdminDashboard";
		} else {
			return "AdminLoginPage";
		}
	}

	
	
	/*changes the password of admin*/
	@RequestMapping("/adminchangepassword")
	public String adminChangePassword(HttpSession session, 
			@ModelAttribute Admin admin,
			@RequestParam("newpassword") String newpass,Model model) {
		String sessionScope = (String) session.getAttribute("adminId");
		if (sessionScope != null) {
			if(adminService.changePassword(admin,newpass)) {
				model.addAttribute("message", "Password Changed!!");
				return "AdminDashboard";
			}else {
				model.addAttribute("message", "Invalid Current Password!!");
				return "AdminDashboard";
			}
		} else {
			return "AdminLoginPage";
		}
	}

}/* end of the admin controller */
