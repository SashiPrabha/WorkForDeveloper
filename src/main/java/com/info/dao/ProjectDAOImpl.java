package com.info.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.info.entity.Project;
import com.info.entity.Student;

@Repository
public class ProjectDAOImpl implements ProjectDAO
{
	@Autowired 
	private SessionFactory sessionFactory;
	@Override
	public boolean postProject(Project developerProject)
	{
		boolean flag=false;
		Session session=sessionFactory.getCurrentSession();
		try {
		session.save(developerProject);
		session.flush();
		flag=true;
		}
		catch(Exception e)
		{
			System.out.println("check6  postProject:==>>>>"+e);
		}
		return flag;
	}
	@Override
	public List<Project> viewAllProjects()
	{
		Session currentSession=sessionFactory.getCurrentSession();
		Query<Project> theQuery=currentSession.createQuery("from Project ",Project.class);
		List<Project> projects=theQuery.getResultList();
		return projects;
	}
}
