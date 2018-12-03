package com.info.service;

import java.util.List;

import com.info.entity.Developer;
import com.info.entity.Login;
import com.info.entity.Student;

public interface StudentService {

	boolean register(Student student);

	boolean verify_stu(Login login);

	List<Student> getStudents();

	Student getRecord(String email);

}
