package com.info.service;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.info.dao.DeveloperDAO;
import com.info.entity.Company;
import com.info.entity.Developer;
import com.info.entity.Project;
import com.info.entity.Login;

@Service
public class DeveloperServiceImpl implements DeveloperService 
{
	@Autowired
	private DeveloperDAO developerDAO;

	@Override
	@Transactional
	public boolean register(Developer developer,Company company)
	{
		return developerDAO.register(developer,company);
	}

	@Override
	@Transactional
	public boolean verify_dev(Login login)
	{

		
		return developerDAO.verify_dev(login);
	}

	@Override
	@Transactional
	public Developer getDeveloperByEmail(String email)
	{

		// TODO Auto-generated method stub
		return developerDAO.getDeveloperByEmail(email);
	}


}
