package com.practice.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.practice.model.Commands;

public interface commandsDao extends JpaRepository<Commands, Integer>{

}
