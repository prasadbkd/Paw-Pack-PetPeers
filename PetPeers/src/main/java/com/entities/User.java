package com.entities;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Entity
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int userid;
	@NotBlank(message = "Email must not be empty")
	@Email(message = "Enter a valid Email")
	private String email;
	@NotBlank
	@Size(min = 3, message = "Name should be minimun 3 charectors long")
	private String name;
	@NotBlank(message = "Password must not be blank")
	@Size(min = 6, message = "Password must be minimum 6 charectors long")
	private String password;
	@OneToMany(cascade = CascadeType.ALL,mappedBy = "user")
	private List<Pet> myPets;

	public User() {
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public User(int userid, String email, String name, String password) {
		super();
		this.userid = userid;
		this.email = email;
		this.name = name;
		this.password = password;
	}

}
