package com.practice.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.practice.model.Department;
import com.practice.model.Regulation;

public interface regulationDao extends JpaRepository<Regulation, Integer>{
	
	@Query(value="select * from regulation",nativeQuery=true)
	public List<Regulation> showReg();
	
	@Query(value="select * from regulation where dept_id=?1",nativeQuery=true)
	public List<Regulation> updateid(int dept_id);
	

}
