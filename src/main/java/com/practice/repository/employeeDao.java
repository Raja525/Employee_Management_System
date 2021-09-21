package com.practice.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.practice.model.Employee;


public interface employeeDao extends JpaRepository<Employee, Integer>{

	@Query(value="select * from employee",nativeQuery=true)
	public List<Employee> displayall();
	
	@Query(value="select * from employee where emp_id=?1",nativeQuery=true)
	public List<Employee> updateid(int empId);
	
	
}
