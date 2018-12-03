package com.info.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.info.dao.ProjectDAO;
import com.info.entity.Project;

@Service
public class ProjectServiceImpl implements ProjectService
{
	@Autowired
	private ProjectDAO projectDAO;

	@Override
	@Transactional
	public boolean postProject(Project project)
	{

		// TODO Auto-generated method stub
		return projectDAO.postProject(project);
	}

	@Override
	@Transactional
	public List<Project> viewAllProjects()
	{

		return projectDAO.viewAllProjects();
	}

}
