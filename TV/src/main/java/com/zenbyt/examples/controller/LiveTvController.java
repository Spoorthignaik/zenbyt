package com.zenbyt.examples.controller;

import java.util.Set;


import javax.validation.ConstraintViolation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zenbyt.examples.dto.LiveTvDto;
import com.zenbyt.examples.service.LiveTvService;

@Controller
public class LiveTvController {

	
	@Autowired
	private LiveTvService tvService;

	private int otp;

	public LiveTvController() {
		System.out.println("Created " + this.getClass().getSimpleName());
	}

	@GetMapping("/liveTv")
	public String onLive(Model model) {
		System.out.println("Running the onHotel in controller....");
		return "CustomerReg";
	}

	@PostMapping("/liveTv")
	public String onLive(Model model, LiveTvDto appDTO, @RequestParam String password, @RequestParam String reenterpas,
			@RequestParam String email) {
		System.out.println("Running the onBank in Controller...");
// 		BankAppDTO dto = this.appService.findByEmail(email);
//		if (email.equals(dto.getEmail())) {
//			model.addAttribute("same", "Email already exist");
//			return "CustomerReg";
//		} else {
		Set<ConstraintViolation<LiveTvDto>> violations = this.tvService.validateAndSave(appDTO);
		if (violations.isEmpty()) {
			System.out.println("No violation, goto success page" + appDTO);
			if (password.equals(reenterpas)) {
				model.addAttribute("dto", appDTO);
				model.addAttribute("success", "Register Successfully");
				return "CustomerReg";
			} else {
				model.addAttribute("dto", appDTO);
				model.addAttribute("pass", "Re-entered password not match");
				return "CustomerReg";
			}
		}
		violations.forEach(cv -> System.out.println(cv.getMessage()));
		model.addAttribute("error", violations);
		model.addAttribute("dto", appDTO);
		return "CustomerReg";
	}
}
