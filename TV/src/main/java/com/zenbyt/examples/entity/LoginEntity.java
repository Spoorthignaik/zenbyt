package com.zenbyt.examples.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "signIn_table")
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
	
	public LoginEntity(int id, String userName, String passWord) {
		super();
		this.id = id;
		this.userName = userName;
		this.passWord = passWord;
	}
}
