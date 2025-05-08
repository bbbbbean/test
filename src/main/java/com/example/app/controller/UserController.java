package com.example.app.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.app.domain.dto.UserDto;
import com.example.app.domain.service.UserServiceImpl;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class UserController {

	@Autowired
	UserServiceImpl userServiceImpl;

	@GetMapping("/signup")
	public void join() {
		log.info("GET /signup..");

	}

	@PostMapping("/signup")
	public String join_post(@Valid UserDto dto, BindingResult bindingResult, Model model,
			RedirectAttributes redirectAttributes) {
		log.info("POST /signup.." + dto);

		for (FieldError error : bindingResult.getFieldErrors()) {
			log.info("Error Field : " + error.getField() + " Error Msg : " + error.getDefaultMessage());
			model.addAttribute(error.getField(), error.getDefaultMessage());
			return "/signup";
		}
		boolean isJoin = userServiceImpl.userJoin(dto);

		if (isJoin) {
			redirectAttributes.addFlashAttribute("message", "회원가입 성공");
			return "redirect:/login";
		} else {
			return "/signup";
		}

	}

	@GetMapping("/login")
	public void login() {
		log.info("GET /login..");
	}

	@GetMapping("/remove")
	public String remove(@RequestParam(value = "email") String email, RedirectAttributes redirectAttributes) {
		log.info("GET /remove..");

		boolean isLeave = userServiceImpl.userLeave(email);

		if (isLeave) {
			redirectAttributes.addFlashAttribute("message", "회원탈퇴 성공");
			return "redirect:/login";
		} else {
			return "/";
		}
	}

	@GetMapping("/update")
	public void update() {
		log.info("GET /update..");
	}

	@PostMapping("/update")
	public String update_post(@Valid UserDto dto, BindingResult bindingResult, Model model, RedirectAttributes redirectAttributes) {
		log.info("POST /update.." + dto);

		boolean isUpdate = userServiceImpl.userUpdate(dto);
		UserDto userDto = userServiceImpl.userSelect(dto.getEmail());

		if (isUpdate) {
			model.addAttribute("userDTO", userDto);
			return "/info";
		} else {
			return "/";
		}
	}

	@GetMapping("/user")
	public void user(Model model) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		log.info("Value : " + authentication.getName());
		log.info("Value : " + authentication.getAuthorities());
		model.addAttribute("username", authentication.getName());
		model.addAttribute("auth", authentication);
	}
}
