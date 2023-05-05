package com.jpa.cars;

import java.util.ArrayList;
import java.util.List;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

import com.jpa.cars.dao.UserRepository;
import com.jpa.cars.entities.User;

@SpringBootApplication
public class BootjpaexampleApplication {
	public static void main(String[] args)
	{
		ApplicationContext context=SpringApplication.run(BootjpaexampleApplication.class,args);
		UserRepository userRepository=context.getBean(UserRepository.class);
		User user=new User();
		user.setSno(1);
		user.setBrand("BMW");
		user.setColor("Blue");
		
		user.setPrice(500000);
		user.setModel("TurboSpped");
		
		User user1=userRepository.save(user);
		System.out.println(user1);
	
		
		User user2=new User();
			user2.setSno(2);
			user2.setBrand("Audi");
			user2.setColor("Black");
			user2.setPrice(200000);
			user2.setModel("BulletSpeed");
			User resultuser=userRepository.save(user2);
			System.out.println(resultuser);
			
			User user3=new User();
			user3.setSno(8);
			user3.setBrand("Benz");
			user3.setColor("white");
			user3.setPrice(300000);
			user3.setModel("NormalSpeed");
			User result1=userRepository.save(user3);
			System.out.println(result1);
			
			
			  System.out.println("***********Fetching***********"); List<User>
			 list=userRepository.findAll(); //list.forEach((x)->System.out.println(x));
			 for(int i=0;i<list.size();i++) { User u=list.get(i);
			  System.out.println(u.getSno()+"-"+u.getBrand()+" "+u.getColor()+" "+u.
			  getPrice()+" "+u.getModel()); }
			 
			
		
	}

}
