package com.mycompany.webapp.controller;

import java.io.UnsupportedEncodingException;

<<<<<<< HEAD
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/exam02")
public class Exam02Controller {
	private static final Logger logger = LoggerFactory.getLogger(Exam02Controller.class);
	
	@RequestMapping("/method1form")
	public String method1form() {
		logger.info("실행");
		return "exam02/method1form";
	}
	
	@RequestMapping("/method1")
	public String method1(HttpServletRequest request,HttpServletResponse response) {
		logger.info("실행");
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String name = request.getParameter("name");
		logger.info(name);
		return "exam02/method1";
	}
	
	@RequestMapping("/method2")
	public String method2() {
		logger.info("실행");
		
		return "redirect:/home";
	}
	
}
=======
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/exam02")
public class Exam02Controller {
   
   private static final Logger logger =
         LoggerFactory.getLogger(Exam02Controller.class);
   
   @RequestMapping("/method1form")
   public String method1form() {
      logger.info("실행");
      return "exam02/method1form";
   }
   
   @RequestMapping("/method1")
   public String method1(HttpServletRequest request, HttpServletResponse response) {
      logger.info("실행");
      String name = request.getParameter("name");
      logger.info(name);
      return "exam02/method1";
   }
   
   @RequestMapping("/method2")
   public String method2() {
      logger.info("실행");
      
      return "redirect:/home";
   }
   @GetMapping(value="/ajaxmethod3", produces = "application/json; charset=UTF-8")
   @ResponseBody
   public String ajaxmethod3(Model model) {
      logger.info("실행");
      JSONObject jsonObject = new JSONObject();
      jsonObject.put("method", "getss");
      String json = jsonObject.toString();
      
      return json;
   }

   
   
   @GetMapping("/method3")
   public String method3(Model model) {
      logger.info("실행");
      model.addAttribute("method", "get");
      return "exam02/method";
   }
   @PostMapping("/method3")
   public String method4(Model model) {
      logger.info("실행");
      model.addAttribute("method", "post");
      return "exam02/method";
   }
   @PutMapping("/method3")
   public String method5(Model model) {
      logger.info("실행");
      model.addAttribute("method", "put");
      return "exam02/method";
   }
   @DeleteMapping("/method3")
   public String method6(Model model) {
      logger.info("실행");
      model.addAttribute("method", "delete");
      return "exam02/method";
   }
   
}
>>>>>>> branch 'master' of https://github.com/OhWonjae/springframework.git
