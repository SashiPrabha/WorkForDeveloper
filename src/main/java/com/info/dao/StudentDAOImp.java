package com.info.dao;

import java.util.List;

import org.apache.commons.codec.digest.DigestUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.info.entity.Developer;
import com.info.entity.Login;
import com.info.entity.Student;

@Repository
public class StudentDAOImp implements StudentDAO
{
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public boolean register(Student student)
	{
		boolean flag=false;
		Session session=sessionFactory.getCurrentSession();
		
		try 
		{
			System.out.println("check4:  StudentDAOImp "+student.getEmail());
			session.save(student);
			flag=true;
		}
		catch (Exception e) 
		{
			System.out.println("exception occured");
		}
		return false;		
	}

	@Override
	public boolean  verify_stu(Login login)
	{
		boolean flag=false;
		String email=login.getEmail();
		String password=login.getPassword();
		String encp=DigestUtils.md5Hex(password);
		
		
		Session session=sessionFactory.getCurrentSession();
		
		Query query= session.createQuery("Select email,password from Student");
		List<Object> allStudentList = query.list();
		
		for(Object student: allStudentList)
		{
			Object[] stu_details=(Object[]) student;
			
			System.out.println("info At index [0] is ===>>>"+stu_details[0]);
			System.out.println("info at index [1] is ===>>>"+stu_details[1]);
			
			if(stu_details[0].equals(email) && stu_details[1].equals(encp))
			{
				System.out.println("student validation is successfull");
				flag=true;
			}
			else
			{
				System.out.println("Invalid userEmail or Password");
			}
		}
		return flag;
	}

	@Override
	public List<Student> getStudents()
	{
		Session currentSession=sessionFactory.getCurrentSession();
		Query<Student> theQuery=currentSession.createQuery("from Student ",Student.class);
		List<Student> students=theQuery.getResultList();
		return students;
	}

	@Override
	public Student getRecord(String email)
	{
		// TODO Auto-generated method stub
		 
			Session session=sessionFactory.getCurrentSession();
			
			Query query=session.getNamedQuery("Student.ByEmail");
			     
			   query.setString("STU_EMAIL", email);
			
			List<Student> students=query.list();
			
			Student student=new Student();
			
			  try
			  {
				  student=students.get(0);
			  }
			    catch(Exception e){
			    	System.out.println(e);
			    	
			    }
			return student;
	}

}
