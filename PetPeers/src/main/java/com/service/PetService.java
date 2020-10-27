package com.service;

import java.util.List;

import com.entities.Pet;
import com.entities.User;

public interface PetService {

	String addPet(Pet pet,User user);
	List<Pet> displayPets(User user);
	Pet buyPet(int pid,User user);
	List<Pet> displayPetsAvailable();
}
