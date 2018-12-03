package com.info.dao;

import com.info.entity.Company;
import com.info.entity.Developer;
import com.info.entity.Project;
import com.info.entity.Login;

public interface DeveloperDAO
{

	boolean register(Developer developer, Company company);

	boolean verify_dev(Login login);

	Developer getDeveloperByEmail(String email);


}
