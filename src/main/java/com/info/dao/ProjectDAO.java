/**
 * 
 */
package com.info.dao;

import java.util.List;

import com.info.entity.Project;

/**
 * @author koushindra
 *
 */
public interface ProjectDAO
{

	boolean postProject(Project project);

	List<Project> viewAllProjects();

}
