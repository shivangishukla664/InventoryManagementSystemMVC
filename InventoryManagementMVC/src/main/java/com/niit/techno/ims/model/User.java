package com.niit.techno.ims.model;

import java.nio.charset.StandardCharsets;
import java.util.Base64;

import javax.persistence.*;

@Entity
@Table(name="customer")
public class User {
	
	@Column(name="email")
	private String email;
	
	@Column(name="password")
	private String password;
	
	@Id
	@Column(name="cust_id")
	private int cust_id;

	public User() {
		super();
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		Base64.Encoder encoder = Base64.getEncoder();
		String normalString = password;
		String encodedString = encoder.encodeToString(
		normalString.getBytes(StandardCharsets.UTF_8) );
		this.password = encodedString;
	}

	
	public int getCust_id() {
		return cust_id;
	}

	public void setCust_id(int cust_id) {
		this.cust_id = cust_id;
	}

	@Override
	public String toString() {
		return "User [email=" + email + ", password=" + password + ", cust_id=" + cust_id + "]";
	}

	

}
