
package com.info.dao;

import java.util.List;

import org.apache.commons.codec.digest.DigestUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.info.entity.Company;
import com.info.entity.Developer;
import com.info.entity.Project;
import com.info.entity.Student;
import com.info.entity.Login;

@Repository
public class DeveloperDAOImpl implements DeveloperDAO
{
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public boolean register(Developer developer, Company company)
	{
		boolean flag=true;

		Session session = sessionFactory.getCurrentSession();

		try
		{
			Student student = new Student();
			System.out.println("check3:  DeveloperDAOImpl " + developer.getEmail());
			Query<String> query = session.createQuery("select email from Developer");
			List<String> allEmails = query.list();

			for (String email : allEmails)
			{
				System.out.println("emai is ---"+email);
				if (email.equalsIgnoreCase(developer.getEmail()))
				{
					System.out.println("You are already registerd");
					flag=false;
				}
			}
			if(flag)
			{
				session.save(company);
				session.save(developer);
				flag=true;
			}

			
		}
		catch (Exception e)
		{
			System.out.println("exception occured" + e.getMessage());
			flag=false;
		}
		return flag;
	}


	@Override
	public boolean verify_dev(Login login)
	{

		boolean flag = false;
		String email = login.getEmail();
		String password = login.getPassword();
		String encp = DigestUtils.md5Hex(password);

		Session session = sessionFactory.getCurrentSession();

		Query query = session.createQuery("Select email,password from Developer");
		List<Object> allDeveloperslist = query.list();

		for (Object developer : allDeveloperslist)
		{
			Object[] dev_details = (Object[]) developer;

			System.out.println("info At index [0] is ===>>>" + dev_details[0]);
			System.out.println("info at index [1] is ===>>>" + dev_details[1]);

			if (dev_details[0].equals(email) && dev_details[1].equals(encp))
			{
				System.out.println("validation is successfull");
				flag = true;
				return flag;
			}

			else
			{
				System.out.println("Invalid userEmail or Password");
			}
		}
		return flag;

	}


	@Override
	public Developer getDeveloperByEmail(String dev_email)
	{

		Session session = sessionFactory.getCurrentSession();

		/*
		 * Query query= session.createQuery("from "+Developer.class.getName()
		 * +" where email =:develeporEmail");
		 */
		Query query = session.getNamedQuery("Developer.ByEmail");
		query.setString("DEV_EMAIL", dev_email);

		List<Developer> developers = query.list();

		Developer developer = new Developer();
		try
		{
			developer = developers.get(0);
		}
		catch (Exception e)
		{
			System.out.println("check5  getDeveloperByEmail:==>>> No info is found with entered email");
		}

		return developer;
	}

}
