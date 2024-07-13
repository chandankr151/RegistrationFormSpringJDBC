package com.springmvc.controller;

import java.util.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springmvc.entities.User;
import com.springmvc.service.userService;

@Controller
public class HomeController {

	@Autowired
	private userService service;

	@RequestMapping("/")
	public String displayAllUser(Model m) {
		String url ="jdbc:mysql://localhost:3306/springdb";
		String usr ="root";
		String pass ="govt";
		ArrayList<User> users = new ArrayList<User>();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, usr, pass);
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from user");
			
			while(rs.next()) {
				User user = new User();
				user.setId(rs.getInt("id"));
				user.setFullName(rs.getString("name"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				user.setImage(rs.getString("image"));
				
				users.add(user);
			}
			
			m.addAttribute("user", users);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "displayAll";
	}
	
	@RequestMapping("/home")
	public String homePage() {

		return "home";
	}

	@RequestMapping("/register")
	public String registerForm() {

		return "register";
	}

	@RequestMapping(path = "/createUser", method = RequestMethod.POST)
	public String registerUser(@ModelAttribute User user, Model m) {
		System.out.println(user);
		service.registerUser(user);

		m.addAttribute("user", user);
		return "success";
	}
}