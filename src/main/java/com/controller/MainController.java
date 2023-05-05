package com.controller;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jpa.cars.entities.User;
import com.service.i.Service;
@Controller
public class MainController {
	@Autowired
	private SessionFactory factory;
	@Autowired
	private Service service;
	
	@GetMapping("/")
	public String test() {
		return "testjsp";
	}
	//Commit Again
	@RequestMapping(value="/User",method=RequestMethod.POST)
	public String UserAdd(@ModelAttribute("user") User user, Model model) throws Exception {
		System.out.println(user.getSno());
		System.out.println(user.getBrand());
		System.out.println(user.getColor());
		System.out.println(user.getPrice());
		System.out.println(user.getModel());
		service.saveUser(user);
		model.addAttribute("resultmsg", "Data Saved successfully");
		return "testjsp";
		
	}
	@RequestMapping(value="/Alluser",method=RequestMethod.GET)
	public String showdata(Model model)
	{
		List<User> list=service.fetchUserList(); 
		model.addAttribute("ListUser", list);
		return "ShowUser";
	}
	 @RequestMapping(value="/delete",method=RequestMethod.GET)
	    public String deleteDepartmentById(@RequestParam("id") String id ,Model model)
	    {
		 service.deleteDepartmentById(Integer.parseInt(id));
		 List<User> list=service.fetchUserList();
			model.addAttribute("ListUser", list);
			model.addAttribute("msg", id+" Data Deleted Successfully");
		 return "ShowUser";
	    }
	
	 @RequestMapping(value="/update")
	    public String updateDepartment(@RequestParam("id") Integer sno, Model model){
			
		 User user=service.updateUserById(sno);
		 model.addAttribute("user", user);	 
		 return "Updatejsp";
	 }
	 
}
