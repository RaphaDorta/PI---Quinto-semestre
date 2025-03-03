package com.senac.pi.vacinaApp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.senac.pi.vacinaApp.entity.User;

public interface UserRepository extends JpaRepository<User, Integer>{

}
