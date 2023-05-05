package com.jpa.cars.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.jpa.cars.entities.User;

public interface UserRepository extends JpaRepository<User, Integer>  {	

}




