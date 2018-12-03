package com.info.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import com.sun.istack.internal.NotNull;

@Entity
public class Project
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer project_id;
	
	private String name;
	private String specification;
	private String tools;
	private String technology;
	private String price;
	
	@NotNull
	private String last_date;

	public Project()
	{

		super();
	}


	public Project(String name, String specification, String tools, String technology, String price, String last_date)
	{

		super();
		this.name = name;
		this.specification = specification;
		this.tools = tools;
		this.technology = technology;
		this.price = price;
		this.last_date = last_date;
	}


	public Integer getProject_id()
	{
	
		return project_id;
	}


	public String getName()
	{
	
		return name;
	}


	public void setName(String name)
	{
	
		this.name = name;
	}


	public String getSpecification()
	{
	
		return specification;
	}


	public void setSpecification(String specification)
	{
	
		this.specification = specification;
	}


	public String getTools()
	{
	
		return tools;
	}


	public void setTools(String tools)
	{
	
		this.tools = tools;
	}


	public String getTechnology()
	{
	
		return technology;
	}


	public void setTechnology(String technology)
	{
	
		this.technology = technology;
	}


	public String getPrice()
	{
	
		return price;
	}


	public void setPrice(String price)
	{
	
		this.price = price;
	}


	public String getLast_date()
	{
	
		return last_date;
	}


	public void setLast_date(String last_date)
	{
	
		this.last_date = last_date;
	}


	



}
