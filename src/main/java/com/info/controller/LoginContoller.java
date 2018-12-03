
package com.info.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.info.entity.Developer;
import com.info.entity.Project;
import com.info.entity.Login;
import com.info.entity.Student;
import com.info.service.DeveloperService;
import com.info.service.ProjectService;
import com.info.service.StudentService;

@Controller
public class LoginContoller
{
	@Autowired
	private DeveloperService developerservice;

	@Autowired
	private StudentService studentService;

	@Autowired
	private ProjectService projectService;

	@PostMapping("/login")
	public ModelAndView login(@ModelAttribute Login login, HttpSession session, HttpServletRequest request)
	{

		ModelAndView mav = new ModelAndView();

		if (login.getRole().equals("developer"))
		{
			boolean flag = developerservice.verify_dev(login);

			if (flag)
			{
				mav.setViewName("dev-base");
				mav.addObject("project", new Project());

				List<Student> students = studentService.getStudents();
				/*
				 * Student student=students.get(0);
				 * System.out.println("the student info is: "+student.getEmail()
				 * );
				 */

				mav.addObject("allStudents", students);

				Developer developer = developerservice.getDeveloperByEmail(login.getEmail());
				System.out.println("developer email is " + developer.getEmail());

				session = request.getSession();
				session.setAttribute("dev_email", developer.getEmail());
				session.setAttribute("dev_name", developer.getName());
				
				session.setAttribute("developer", developer);

				mav.addObject("developer", developer);
			}
			else
			{
				mav.setViewName("redirect:/");
			}

		}

		else if (login.getRole().equals("student"))
		{
			boolean flag = studentService.verify_stu(login);

			if (flag)
			{
				Project dev_project = new Project();
				mav = new ModelAndView("student-base");

				Student student = studentService.getRecord(login.getEmail());
				System.out.println("Fecthed student email is ===>>>> " + student.getEmail());

				session = request.getSession();

				session.setAttribute("stu_email", student.getEmail());
				session.setAttribute("stu_name", student.getName());

				String email = (String) session.getAttribute("stu_email");
				System.out.println("Session email is==>>> " + email);
				
				List<Project> allProjects=	projectService.viewAllProjects();
				mav.addObject("allProjects",allProjects);
				
				session.setAttribute("student", student);

			}
			else
			{
				mav=new ModelAndView("redirect:/");
			}

		}
		else
		{
			mav = new ModelAndView("redirect:/");

		}
		return mav;

	}
}
