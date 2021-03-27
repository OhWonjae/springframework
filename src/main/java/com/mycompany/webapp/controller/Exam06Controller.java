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

@Controller
@RequestMapping("/exam06")
public class Exam06Controller {

	private static final Logger logger = LoggerFactory.getLogger(Exam06Controller.class);

	@GetMapping("/content")
	public String content(Model model) {
		return "exam06/content";
	}
	@GetMapping("/createCookie")
	public String createCookie(HttpServletResponse response) {
		String uid = "spring";
		Cookie cookie = new Cookie("uids",uid);
		//cookie.setPath("/webapp/exam06");
		//cookie.setDomain("192.168.3.105");
		//cookie.setHttpOnly(true); 
		//cookie.setMaxAge(20); 
		
		response.addCookie(cookie);
		
		Cookie cookie2 = new Cookie("utel","0100123-1234");

		response.addCookie(cookie2);
		return "redirect:/exam06/content";
	}

	/*
	 * @GetMapping("/readCookie") public String readCookie(HttpServletRequest
	 * request) { Cookie[] cookieArr = request.getCookies(); for(Cookie
	 * cookie:cookieArr) { logger.info(cookie.getName() + " : " +cookie.getValue());
	 * if(cookie.getName().equals("uid")) { logger.info(cookie.getValue()); } }
	 * 
	 * return "redirect:/exam06/content"; }
	 */
	@GetMapping("/readCookie")
	public String readCookie(@CookieValue(name="uids") String uid) {
		logger.info(uid+ "활용하기");
		
		return "redirect:/exam06/content";
	}
	@GetMapping("/deleteCookie")
	public String deleteCookie(HttpServletResponse response) {
		Cookie cookie = new Cookie("uid","");
		cookie.setMaxAge(0);
		response.addCookie(cookie);
		return "redirect:/exam06/content";
	}
	
	
	
	@GetMapping("/sessionSaveObject")
	public String sessionSaveObject(HttpSession session) {
		User user = new User();
		user.setUid("spring");
		session.setAttribute("user", user);

		return "redirect:/exam06/content";
	}
	@GetMapping("/sessionReadObject")
	public String sessionReadObject(HttpSession session) {
		User user = (User)session.getAttribute("user");
		logger.info("저장된 uid:" + user.getUid());
		return "redirect:/exam06/content";
	}
	@GetMapping("/sessionRemoveObject")
	public String sessionRemoveObject(HttpSession session) {
		//개별 객체를 삭제할때
		session.removeAttribute("user");
		//섹션에 저장된 모든 객체를 삭제할 경우
	//	session.invalidate();
		return "redirect:/exam06/content";
	}
	

}