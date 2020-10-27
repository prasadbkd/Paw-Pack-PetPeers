package com.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dao.PetDao;
import com.entities.Pet;
import com.entities.User;
import com.service.PetService;

@Controller
public class PetController {

	@Autowired
	PetService petService;
	
	@RequestMapping("/registerpet")
	public String getPetRegisterPage(Model model,HttpServletResponse response) {
		Pet pet = new Pet();
		model.addAttribute("pet", pet);
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		response.setDateHeader("Expires", 0);
		return "registerpet";
	}
	
	@PostMapping("/processregisterpet")
	public String register( @ModelAttribute("pet") Pet pet, 
			RedirectAttributes redirectAttributes, Model model,HttpServletRequest request) {

		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("validUser");
		System.out.println(user.getEmail());
		String message = petService.addPet(pet, user);
		if (message.equals("Sucessfully Registered")) {
			
			
			System.out.println("registerd sucess");
			return "profile";
		
		} else {
			model.addAttribute("message", "not registered");
			return "registerpet";
		}

	}
	
	@RequestMapping("/displaypets")
	public String getMyPets(Model model,HttpServletRequest request,HttpServletResponse response) {
		
		HttpSession session =  request.getSession();
		User user = (User) session.getAttribute("validUser");
		List<Pet> myPets = petService.displayPets(user);
		model.addAttribute("myPets", myPets);
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		response.setDateHeader("Expires", 0);
		return "mypets";
		
	}
	
	@RequestMapping("/profile")
	public String backToProfile(HttpServletResponse response) {
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		response.setDateHeader("Expires", 0);
		return "profile";
	}
	
}


