package com.info.controller;

import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.info.entity.Company;
import com.info.entity.Developer;
import com.info.entity.Project;
import com.info.entity.Student;
import com.info.service.DeveloperService;
import com.info.service.ProjectService;
import com.info.service.StudentService;

@Controller
@RequestMapping("/student")
public class StudentController 
{
	@Autowired
	private DeveloperService developerservice;
	
	@Autowired
	private StudentService studentService;
	
	@Autowired
	HttpSession session;
	
	@Autowired
	HttpServletRequest request;
	
	
	@PostMapping("/register")		
	public ModelAndView register(@ModelAttribute Student student, BindingResult bindingResult)
	{		
		boolean flag=false;
		String encpPassword=DigestUtils.md5Hex(student.getPassword());
		student.setPassword(encpPassword);
		
	flag=studentService.register(student);
		
		ModelAndView mav=new ModelAndView("redirect:/");	
		
		return mav;
	}
	@RequestMapping("/viewAll")
	public ModelAndView viewAllStudents(@RequestParam("email") String email)
	{
		ModelAndView mav=new ModelAndView("dev-base");
		mav.addObject("project", new Project());
		List<Student> students=studentService.getStudents();
		mav.addObject("allStudents",students);
		
		Developer developer=developerservice.getDeveloperByEmail(email);
		System.out.println("developer email in viewall method is "+developer.getEmail());
		

		
		mav.addObject("developer",developer);
		
		return mav;
	}
	
	@RequestMapping("/signout")
	public ModelAndView signout(@ModelAttribute Student student)
	{
		ModelAndView mv=new ModelAndView();
		
		Student student1=(Student)session.getAttribute("student");
		Enumeration<String> sessionAttributes = session.getAttributeNames(); 
	
		System.out.print("before invalidation session attributes are :");
		while(sessionAttributes.hasMoreElements())
		{
			System.out.print(sessionAttributes.nextElement()+"    ");
		}
		
		
		System.out.println("\n before invalidating student email in session is "+student1.getEmail());
	
		//invalidating the session
		session.invalidate();
		
		
		System.out.print("after invalidatin session attributes are :");
		while(sessionAttributes.hasMoreElements())
		{
			System.out.print(sessionAttributes.nextElement()+"    ");
		}
		
		 student1=(Student)session.getAttribute("student");
/*		 session.setMaxInactiveInterval(1);
*/		
		
		 /* try
		 {
		System.out.println("\nafter invalidating student email in session is "+student1.getEmail());
		 }
		 catch(NullPointerException e)
		 {
			 System.out.println("student1 is null i.e so it is invalidated");
		 }*/
		
		 
	/*	 session = request.getSession(false); // this code somethi
		if(session==null || !request.isRequestedSessionIdValid() )
		{
			System.out.println("session student is invalid");
		}*/
	
		
		mv.setViewName("redirect:/");
		return mv;
	}
	
}
