package com.zenbyt.examples.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "signin_table")
public class LoginEntity {

	
	@Id
	@Column(name = "s_id")
	private int id;
	@Column(name = "s_userName")
	private String userName;
	@Column(name = "s_passWord")
	private String passWord;
	
	
	public LoginEntity() {
		System.out.println("created LoginEntity");
	}
	
	
}
