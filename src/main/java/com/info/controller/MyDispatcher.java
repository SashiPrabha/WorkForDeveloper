package com.info.controller;



import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.info.entity.Company;
import com.info.entity.Developer;
import com.info.entity.Login;
import com.info.entity.Student;

@Controller
@RequestMapping(value={"","/login"})
public class MyDispatcher 
{
	@RequestMapping("/")
	public ModelAndView  homePage(HttpServletRequest request) 
	{
		ModelAndView mv = new ModelAndView("loginTileDef");
	    Developer developer=new Developer();
		Company company=new Company();
	    
		List<Developer> developers=new ArrayList<>();
		developers.add(developer);
	    company.setDevelopers(developers);

	    Map<String, Object> model=new HashMap<>();
	    model.put("developer",developer);
	    model.put("company", company);
	    model.put("student", new Student());
	    model.put("login", new Login());
	   
	    mv.addAllObjects(model);
		
		mv.addObject("title", "-- Secure | Login --");
		mv.addObject("name", "Work For Developer");
		mv.addObject("company", "www.kssofttech.com");
		mv.addObject("greating", "wellcome sr");
		mv.addObject("message","Welcome!!! You can register here");
		
		
		
		return mv;
	}
}
