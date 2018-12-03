package com.info.service;

import com.info.entity.Company;
import com.info.entity.Developer;
import com.info.entity.Project;
import com.info.entity.Login;

public interface DeveloperService 
{
	boolean register(Developer developer, Company company);

	boolean verify_dev(Login login);

	Developer getDeveloperByEmail(String email);


}
