package com.zenbyt.examples.service;

import java.util.Collections;
import java.util.Set;

import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;
import javax.validation.constraints.NotNull;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.zenbyt.examples.dto.LiveTvDto;
import com.zenbyt.examples.entity.LiveTvEntity;
import com.zenbyt.examples.repository.LiveTvRepository;


@Service
public class LiveTvServiceImpl implements LiveTvService {
	
	@Autowired
	private LiveTvRepository liveTvRepository;

	@Override
	public Set<ConstraintViolation<LiveTvDto>> validateAndSave(LiveTvDto serviceDTO) {
		System.out.println("Running the validateAndSave in Services.............");
		ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
		Validator validator = factory.getValidator();
		Set<ConstraintViolation<LiveTvDto>> violations = validator.validate(serviceDTO);
		if (violations != null && !violations.isEmpty()) {
			System.err.println("Violations in dto" + serviceDTO);
			return violations;
		}
		System.out.println("violations not found");
		LiveTvEntity tvEntity = new LiveTvEntity();
		tvEntity.setName(serviceDTO.getName());
		tvEntity.setPassword(serviceDTO.getPassword());
		tvEntity.setPassword(serviceDTO.getPhoneNums());
		tvEntity.setEmail(serviceDTO.getEmail());
		boolean saved = this.liveTvRepository.save(tvEntity);
		if (saved) {
			Boolean sendMail = this.sendMail(serviceDTO.getEmail(), serviceDTO);
			System.out.println(sendMail);
		}
		System.out.println("Entity is saved" + saved);
		return Collections.emptySet();
	}

	private Boolean sendMail(@NotNull(message = "email should not be null") String email, LiveTvDto serviceDTO) {
		// TODO Auto-generated method stub
		return null;
	}

	/* @Override
	public LiveTvDto findByEmail(String email) {
		if (email != null && !email.isEmpty()) {
			System.out.println("Running the findByEmail in Services.............");
			LiveTvEntity appEntities = this.liveTvRepository.findByEmail(email);
			LiveTvDto appDTO = new LiveTvDto();
			appDTO.setId(appEntities.getId());
			appDTO.setName(appEntities.getName());		
			appDTO.setEmail(appEntities.getEmail());
			appDTO.setPassword(appEntities.getPassword());
			appDTO.setReenterpas(appEntities.getReenterpas());
			return appDTO;
		}
		return null;
	} */

	
}
