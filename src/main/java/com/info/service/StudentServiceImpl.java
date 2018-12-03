package com.info.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.info.dao.DeveloperDAO;
import com.info.dao.StudentDAO;
import com.info.entity.Developer;
import com.info.entity.Login;
import com.info.entity.Student;

@Service
public class StudentServiceImpl implements StudentService 
{
	@Autowired
	private StudentDAO studentDAO;
	
	
	@Override
	@Transactional
	public boolean register(Student student)
	{
		
		return studentDAO.register(student);
	}


	@Override
	@Transactional
	public boolean verify_stu(Login login)
	{
		return studentDAO.verify_stu(login);
	}


	@Override
	@Transactional
	public List<Student> getStudents()
	{
		return studentDAO.getStudents();
	}


	@Override
	@Transactional
	public Student getRecord(String email)
	{

		// TODO Auto-generated method stub
		return studentDAO.getRecord(email);
	}
}
