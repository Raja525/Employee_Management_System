package com.practice.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Regulation {
	@Id
	@Column
	private int deptId;
	@Column
	private String regContent;
	
	
	public int getDeptId() {
		return deptId;
	}


	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}


	public String getRegContent() {
		return regContent;
	}


	public void setRegContent(String regContent) {
		this.regContent = regContent;
	}


	public Regulation(int deptId, String regContent) {
		super();
		this.deptId = deptId;
		this.regContent = regContent;
	}


	public Regulation() {
		super();
		// TODO Auto-generated constructor stub
	}


	@Override
	public String toString() {
		return "Regulation [deptId=" + deptId + ", regContent=" + regContent + "]";
	}
	
	

}
