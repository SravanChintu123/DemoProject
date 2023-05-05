package com.service.i;

import java.util.List;

import com.jpa.cars.entities.User;

public interface Service {
		 
	    // Save operation
	    User saveDepartment(User user);
	 
	    // Read operation
	    List<User> fetchDepartmentList();
	 
	    // Update operation
	    User updateDepartment(User user,
	                                Long Sno);
	 
	    // Delete operation
	    void deleteDepartmentById(int Sno);

		User saveUser(User user);

		List<User> fetchUserList();

		User updateUser(User user, Integer userSno);

		User updateDepartment(User user, int Sno);

		User updateUser(User user, int userSno);

		User updateUserById(int parseInt);

}
