package com.info.service;

import java.util.List;

import com.info.entity.Project;

public interface ProjectService
{

	boolean postProject(Project project);

	List<Project> viewAllProjects();

}
