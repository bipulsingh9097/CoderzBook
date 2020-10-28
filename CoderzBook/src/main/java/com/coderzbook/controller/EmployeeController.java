package com.coderzbook.controller;

import java.sql.Date;
import java.text.ParseException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.coderzbook.entity.Employee;
import com.coderzbook.methods.ServiceProvider;
import com.coderzbook.patterns.ObjectFactory;
import com.coderzbook.services.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;
	
	@Autowired
	private ServiceProvider serviceProvider;
	
	private Logger logger = Logger.getLogger(EmployeeController.class);
	
	
	@RequestMapping("/addEmployee")
	public String addEmployee(HttpSession session , Model model) {
		String sessionScope = (String) session.getAttribute("adminId");
		if(sessionScope!=null) {
			logger.info("called Add Employee Form");
			return "addemployee";
		}else {
			return "redirect:/adminlogin";
		}
		
	}
	
	@RequestMapping("/saveEmployee")
	public String saveEmployee(@ModelAttribute Employee emp, 
			@RequestParam("dob") String dob,
			@RequestParam("doj") String doj,
			HttpSession session,
			Model model) throws ParseException {
		String sessionScope = (String) session.getAttribute("adminId");
		if(sessionScope!=null) {
		Date d1 = ServiceProvider.getFormatedDate(doj);
		Date d2 = ServiceProvider.getFormatedDate(dob);
		emp.setPassword(ServiceProvider.generatePassword(8));
		emp.setDoj(d1);
		emp.setDob(d2);
		emp.setStatus("active");
		if(employeeService.saveEmployee(emp)) {
			model.addAttribute("employeeadded", "Record Added Successfully");
			serviceProvider.emailSender(emp);
			return "addemployee";
		}else {
			model.addAttribute("alreadyexist", "Employee Id Already Exist");
			return "addemployee";
		}
	}else {
			return "redirect:/adminlogin";
		}
}
	
	
	
	@RequestMapping("/employeeList")
	public String listEmployee(HttpSession session , Model m) {
		String sessionScope = (String) session.getAttribute("adminId");
		if(sessionScope!=null) {
		List<Employee> list = employeeService.listEmployee();
		m.addAttribute("list", list);
		return "employeeList";
		}else {
			return "redirect:/adminlogin";
		}
	}
	
	
	
	@RequestMapping("/viewemployee")
	public String getEmployeeDetails(@RequestParam("id") String id ,HttpSession session , Model m) {
		String sessionScope = (String) session.getAttribute("adminId");
		if(sessionScope!=null) {
			Employee emp = employeeService.getEmployeeById(id);
			m.addAttribute("emp",emp);
			return "employeeDetails";
		}else {
			return "redirect:/adminlogin";
		}
	}
	
	
	
	@RequestMapping("/updateemployee")
	public String updateEmployee(@ModelAttribute Employee emp, HttpSession session) {
		String sessionScope = (String) session.getAttribute("adminId");
		if(sessionScope!=null) {
			logger.info(emp.toString());
			employeeService.updateEmployee(emp);
			return "redirect:/employeeList";
		}else {
			return "redirect:/adminlogin";
		}
	}
	
	
	@RequestMapping("/deleteemployee")
	public String deleteEmployee(@RequestParam("id") String empId,HttpSession session) {
		String sessionScope = (String) session.getAttribute("adminId");
		if(sessionScope!=null) {
			employeeService.deleteEmployee(empId);
			return "redirect:/employeeList";
		}else {
			return "redirect:/adminlogin";
		}
	}
}
