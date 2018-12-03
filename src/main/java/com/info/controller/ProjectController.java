package com.info.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.info.entity.Project;
import com.info.service.ProjectService;

@Controller
@RequestMapping("/Project")
public class ProjectController
{
	@Autowired
	private ProjectService projectService;

	@RequestMapping("/NewProject")
	public ModelAndView dev_newProject() 
	{
		
		System.out.println("new Project runned runned");
		ModelAndView mv = new ModelAndView("new_project");
		mv.addObject("developerProject",new Project());
/*		mv.addObject("menu", "postProject");
*/		
		System.out.println("NEW PROJECET RUNNED 2");
		return mv;
	}
	
	
	@RequestMapping("/post")
	public ModelAndView postProject(@ModelAttribute Project project, BindingResult bindingResult)
	{
		System.out.println("post project method runned");
		
		if(bindingResult.hasErrors())
		{
			System.out.println("binding result has errors"+bindingResult.getFieldError());
		}
		ModelAndView mv = new ModelAndView("redirect:/login");
	boolean flag=projectService.postProject(project);
		
		return mv;
	}
	
	@RequestMapping("/viewAll")
	public ModelAndView viewAllProjects()
	{
		Project project=new Project();
		
	List<Project> allProjects=	projectService.viewAllProjects();
		ModelAndView mav=new ModelAndView();
		mav.setViewName("student-base");
		
		
		mav.addObject("allProjects",allProjects);
		
		return mav;
	
	}
}
