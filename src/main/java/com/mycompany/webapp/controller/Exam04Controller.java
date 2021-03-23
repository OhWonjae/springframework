package com.mycompany.webapp.controller;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycompany.webapp.dto.Board;
import com.mycompany.webapp.dto.User;
import com.mycompany.webapp.service.Exam04Service;

@Controller
@RequestMapping("/exam04")
public class Exam04Controller {
	@Autowired
	private Exam04Service exam04Service;
	
	@Autowired
	private DataSource dataSource;
	
	@RequestMapping("/content")
	public String content(Model model) {
		Connection conn=null;
		String connInfo = null;
		try {
			//커넥션 풀에서 커넥션 객체를 대여해 오기
			conn = dataSource.getConnection();
			model.addAttribute("connStatus","성공");
		}catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("connStatus","실패");
		}finally {
			try {
				//커넥션 풀로 커넥션 객체를 반납하기
				conn.close();
			}catch(Exception e) {
				
			}
		}
		return "exam04/content";
	}
	
	
	
	//get은 정보를 가져와 / post는 정보를 저장해 라는 느낌임
	@GetMapping("/boards")
	public String getBoardList(Model model) {

		List<Board> list = exam04Service.getBoardList();
		model.addAttribute("list",list);
		return "exam04/boardlist";
		
	}
	@PostMapping("/boards")
	public String saveBoard() {
		return "redirect:/boards";
	}
}