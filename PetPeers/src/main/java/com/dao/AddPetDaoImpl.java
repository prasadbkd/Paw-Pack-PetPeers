package com.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entities.Pet;
import com.entities.User;

@Repository
@Transactional
public class AddPetDaoImpl implements PetDao {

	@Autowired
	SessionFactory factory;

	@Override
	public String addPet(Pet pet, User user) {
		String message = "Sucessfully Registered";
		pet.setUser(user);
		Session session = factory.getCurrentSession();
		if (session != null) {
			session.save(pet);
			return message;
		}
		return "Not Registered";
	}

	@Override
	public List<Pet> displayPets(User user) {

		Session session = factory.getCurrentSession();
		String sql = "from com.entities.Pet p where p.user.id=:uid";
		List<Pet> mypet = session.createQuery(sql).setParameter("uid", user.getUserid()).list();
		return mypet;
	}

	@Override

	public Pet buyPet(int pid, User user) {

		Session session = factory.getCurrentSession();
		Pet pet = session.get(Pet.class, pid);
		if (pet != null) {
			pet.setUser(user);
			session.save(pet);
			Pet updated_pet = session.get(Pet.class, pid);
			return updated_pet;
		}

		return null;
	}

	@Override
	public List<Pet> displayPetsAvailable() {

		Session session = factory.getCurrentSession();
		String sql = "from com.entities.Pet p ";
		List<Pet> availPets = session.createQuery(sql).list();
		return availPets;
	}

}
