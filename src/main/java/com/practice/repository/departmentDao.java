package com.practice.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.practice.model.Department;
import com.practice.model.Employee;

public interface departmentDao extends JpaRepository<Department, Integer>{
	
	@Query(value="select * from department",nativeQuery=true)
	public List<Department> showdept();
	
	@Query(value="select * from department where dept_id=?1",nativeQuery=true)
	public List<Department> updateid(int deptId);
	
}
