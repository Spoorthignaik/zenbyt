package com.zenbyt.examples.dto;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;

@Data
public class LiveTvDto {
	
	@NotNull(message = "Name should not be null")
	@Size(min=2,max=45,message = "The Name should be more den two char and less den 45 char")
	private String name;
	
	@NotNull(message = "Phone num should not be null")
	private String phoneNums;
	
	@NotNull(message = "email should not be null")
	@Size(min=2,max=45,message = "The E-mail should be more den two char and less den 45 char")
	private String email;
	
	@NotNull(message = "password should not be null")
	@Size(min=2,max=45,message = "The PassWord should be more den two char and less den 45 char")
	private String password;
	
	

}
