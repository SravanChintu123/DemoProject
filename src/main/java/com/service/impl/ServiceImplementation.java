package com.service.impl;

import java.util.List;
import java.util.Objects;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jpa.cars.dao.UserRepository;
import com.jpa.cars.entities.User;
import com.service.i.Service;
@Component
public class ServiceImplementation implements Service {
		 
		    @Autowired
		    private UserRepository userRepository;
		 
		    // Save operation
		    @Override
		    public User saveUser(User user)
		    {
		        return userRepository.save(user);
		    }
		 
		    // Read operation
		    @Override 
		    public List<User> fetchUserList()
		    {
		        return (List<User>)
		        		userRepository.findAll();
		    }
		 
		    // Update operation
		    @Override
		    public User updateUser(User user, Integer userSno)
		    {
		        User depDB= userRepository.findById(userSno).get();
		 
		        if (Objects.nonNull(user.getBrand())&& !"".equalsIgnoreCase(user.getBrand()))
		        {
		            depDB.setBrand(user.getBrand());
		        }
		 
		        if (Objects.nonNull(user.getColor())&& !"".equalsIgnoreCase(user.getColor())) 
		        {
		            depDB.setColor(
		                user.getColor());
		        }
		 
		        if (Objects.nonNull(user.getPrice())&& !"".equals(user.getPrice())) 
		        {
		            depDB.setPrice(user.getPrice());
		        }
		 
		        return userRepository.save(depDB);
		    }
		 
		    // Delete operation
		   



			@Override
			public void deleteDepartmentById(int Sno) {
				System.out.println("Deleting");
				userRepository.deleteById(Sno);
			}

			@Override
			public User updateUserById(int id) {
				Optional<User> opt=userRepository.findById(id);
				return opt.get();
				
			}

			@Override
			public User saveDepartment(User user) {
				// TODO Auto-generated method stub
				return null;
			}

			@Override
			public List<User> fetchDepartmentList() {
				// TODO Auto-generated method stub
				return null;
			}

			@Override
			public User updateDepartment(User user, Long Sno) {
				// TODO Auto-generated method stub
				return null;
			}

			@Override
			public User updateDepartment(User user, int Sno) {
				// TODO Auto-generated method stub
				return null;
			}

			@Override
			public User updateUser(User user, int userSno) {
				// TODO Auto-generated method stub
				return null;
			}


		}

