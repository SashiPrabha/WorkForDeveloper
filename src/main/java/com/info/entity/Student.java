package com.info.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity()
@Table(name="student", uniqueConstraints= {
		@UniqueConstraint(columnNames= {"email"})
})
@NamedQueries({
@NamedQuery(name="Student.ByEmail",query="from Student where email=:STU_EMAIL")
})
public class Student 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer student_id;
	
	private String name;
	
	
	private String email;
	private String password;
	private String mob;
	private String skills;
	
	public Student() 
	{
		super();
	}

	public Student(String name, String email, String password, String mob, String skills)
	{

		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.mob = mob;
		skills = skills;
	}

	public String getName()
	{
	
		return name;
	}

	public void setName(String name)
	{
	
		this.name = name;
	}

	public Integer getStudent_id()
	{
	
		return student_id;
	}

	public String getEmail()
	{
	
		return email;
	}

	public void setEmail(String email)
	{
	
		this.email = email;
	}

	public String getPassword()
	{
	
		return password;
	}

	public void setPassword(String password)
	{
	
		this.password = password;
	}

	public String getMob()
	{
	
		return mob;
	}

	public void setMob(String mob)
	{
	
		this.mob = mob;
	}

	public String getSkills()
	{
	
		return skills;
	}

	public void setSkills(String skills)
	{

		skills = skills;
	}
	
}
