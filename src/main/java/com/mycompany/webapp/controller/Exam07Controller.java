package com.mycompany.webapp.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.util.Date;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.mycompany.webapp.dto.Board;
import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.User;
import com.mycompany.webapp.service.BoardsService;
import com.mycompany.webapp.service.UsersService;


@Controller
@RequestMapping("/exam07")
public class Exam07Controller {

	
	@Autowired
	private UsersService usersService;
	
	private static final Logger logger = LoggerFactory.getLogger(Exam07Controller.class);
	@GetMapping("/joinForm")
	public String joinForm() {
		return "exam07/joinForm";
	}
	
	@PostMapping("/join")
	public String join(User user) {
		logger.info(user.getUid());
		logger.info(user.getUname());
		logger.info(user.getUpassword());
		BCryptPasswordEncoder bpe = new BCryptPasswordEncoder();
		user.setUpassword( bpe.encode(user.getUpassword()));
		usersService.join(user);
		return "redirect:/exam07/loginForm";
	}
	
	
	@GetMapping("/loginForm")
	public String loginForm() {
		return "exam07/loginForm";
	}	
	
	@PostMapping("/login")
	public String login(User user, HttpSession session) {
		String result = usersService.login(user);
		if(result.equals("success")) {
			session.removeAttribute("loginError");
			session.setAttribute("loginUid", user.getUid());
			return "redirect:/home";
		}else {
			session.setAttribute("loginError",result);
			return "redirect:/exam07/loginForm";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("loginUid");
		return "redirect:/home";
	}	
	

}