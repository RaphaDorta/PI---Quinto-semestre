package com.senac.pi.vacinaApp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.senac.pi.vacinaApp.entity.Hospital;

public interface HospitalRepository extends JpaRepository<Hospital, Integer>{
	
	

}
