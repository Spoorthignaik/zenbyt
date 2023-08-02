package com.zenbyt.examples.service;

import java.util.Set;

import javax.validation.ConstraintViolation;


import com.zenbyt.examples.dto.LiveTvDto;

public interface LiveTvService {
	
	Set<ConstraintViolation<LiveTvDto>> validateAndSave(LiveTvDto serviceDTO);

	/* LiveTvDto findByEmail(String email);*/
	
	

}
