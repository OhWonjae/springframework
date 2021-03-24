package com.mycompany.webapp.controller;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.print.attribute.standard.PageRanges;
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
import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.User;
import com.mycompany.webapp.service.BoardsService;

@Controller
@RequestMapping("/exam04")
public class Exam04Controller {
	@Autowired
	private BoardsService boardsService;
	
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
	/*
	 * @GetMapping("/list") public String getBoardList(Model model) {
	 * 
	 * List<Board> list = boardsService.getBoardList();
	 * model.addAttribute("list",list); return "exam04/boardlist";
	 * 
	 * }
	 */
	
	//get은 정보를 가져와 / post는 정보를 저장해 라는 느낌임
		@GetMapping("/createForm")
		public String createForm(Model model) {
			return "exam04/createForm";
			
		}
		@PostMapping("/create")
		public String create(Board board) {
			board.setBwriter("user1");
			boardsService.saveBoard(board);
			return "redirect:/exam04/list";
		}
		@GetMapping("/read")
		public Board read(int bno, Model model) {
			Board board = boardsService.getBoard(bno);
			boardsService.addHitcount(bno);
			return board;
				
		}
		@GetMapping("/updateForm")
		public String updateForm(int bno, Model model) {
			Board board = boardsService.getBoard(bno);
			model.addAttribute("board",board);
			return "exam04/updateForm";
				
		}
		@PostMapping("/update")
		public String update(Board board) {
			
			boardsService.updateBoard(board);
			return "redirect:/exam04/list";
		}
		@GetMapping("/delete")
		public String delete(int bno, Model model) {
			
			boardsService.deleteBoard(bno);
			return "redirect:/exam04/list";
		}
		@GetMapping("/list")
		public String getBoardList(
				@RequestParam(defaultValue ="1")int pageNo,Model model) {
			//new pager(10,5) -> 전체페이지 , 한 그룹당 페이지개수(처음 출력되는 페이지 넘버 범위) , 전체뿌릴 행수, 현재 볼 페이지넘버  
			int totalRows  = boardsService.getTotalRows();
			Pager pager = new Pager(6,5, totalRows,pageNo);
			/*
			 * for(int i=0; i<=1000; i++) { Board board = new Board(); board.setBtitle("제목"
			 * + i); board.setBcontent("내용" + i); board.setBwriter("user1");
			 * boardsService.saveBoard(board);
			 * 
			 * }
			 */
			List<Board> list = boardsService.getBoardList(pager);
			model.addAttribute("pager",pager);	
			model.addAttribute("list",list);
			return "exam04/boardlist";
		}
		/*
		 * @GetMapping("/list") public String getBoardList(Model model) { for(int i=1;
		 * i<=1; i++) { Board board = new Board(); board.setBtitle("제목" + i);
		 * board.setBcontent("내용" + i); board.setBwriter("user1");
		 * boardsService.saveBoard(board); }
		 * 
		 * List<Board> list = boardsService.getBoardList();
		 * model.addAttribute("list",list); return "exam04/boardlist"; }
		 */
		
		/*
		 * @PostMapping("/create") public String saveBoard(String btitle, String
		 * bcontent) { Board board = new Board(); board.setBno(1);
		 * board.setBtitle(btitle); board.setBcontent(bcontent);
		 * board.setBwriter("user1"); boardsService.saveBoard(board); return
		 * "redirect:/exam04/list"; }
		 */
}
