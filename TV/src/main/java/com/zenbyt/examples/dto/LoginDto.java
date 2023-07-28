package com.zenbyt.examples.dto;

import javax.validation.constraints.NotNull;


import lombok.Data;

@Data
public class LoginDto {
	
	@NotNull
	private int id;
	@NotNull(message = "Username Should not be null")
	private String userName;
	@NotNull(message = "Password Should not be null")
	private String passWord;
	
	

}
