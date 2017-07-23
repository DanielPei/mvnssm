package com.daniel.controller;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.daniel.pojo.User;
import com.daniel.service.IUserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Resource
	private IUserService userService;
	
	@RequestMapping("/showUser")
	public String toIndex(HttpServletRequest request,Model model){
		int userId = Integer.parseInt(request.getParameter("id"));
		User user = this.userService.getUserById(userId);
		model.addAttribute("user", user);
		return "showUser";
		
//		http://localhost/mvnssm/user/showUser.do?id=1
	}
	
	@RequestMapping("/showUserContent")
	public @ResponseBody HashMap<String, Object> getUserById(HttpServletRequest request){
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		
		int userId = Integer.parseInt(request.getParameter("id"));
		User user = this.userService.getUserById(userId);
		resultMap.put("list", user);
		
		return resultMap;
		
//		http://localhost/mvnssm/user/showUserContent.do?id=1
	}
}
