package com.practice.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Commands {
	
	@Id
	@GeneratedValue
	private int Id;
	private String Name;
	private String Dept;
	private String Commands;
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getDept() {
		return Dept;
	}
	public void setDept(String dept) {
		Dept = dept;
	}
	public String getCommands() {
		return Commands;
	}
	public void setCommands(String commands) {
		Commands = commands;
	}
	public Commands(String name, String dept, String commands) {
		super();
		Name = name;
		Dept = dept;
		Commands = commands;
	}
	public Commands() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Commands [Name=" + Name + ", Dept=" + Dept + ", Commands=" + Commands + "]";
	}
	
	
}
