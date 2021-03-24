package com.mycompany.webapp.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.mycompany.webapp.dto.Board;
import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.service.BoardsService;

@Controller
@RequestMapping("/exam04")
public class Exam04Controller {
	private static final Logger logger = LoggerFactory.getLogger(Exam02Controller.class);
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
   
	/*
	 * @GetMapping("/list") public String getBoardList(Model model) { 
	 * for(int i=1; i<=1000; i++) {
         Board board = new Board();
         board.setBtitle("좋은 시간입니다." + i);
         board.setBcontent("과제하는 것이 너무 재밌어요." + i);
         board.setBwriter("user1");
         boardsService.saveBoard(board);
      }
	 * List<Board>
	 * list = boardsService.getBoardList(); model.addAttribute("list",list); return
	 * "exam04/boardlist"; }
	 */
   
   
   @GetMapping("/list")
   public String getBoardList(
		   @RequestParam(defaultValue = "1") int pageNo, Model model) {
	  int totalRows = boardsService.getTotalRows();
      Pager pager = new Pager(10, 5, totalRows, pageNo);
	  List<Board> list = boardsService.getBoardList(pager);
      model.addAttribute("list", list);
      model.addAttribute("pager", pager);
      return "exam04/boardlist";
   }
   
   @GetMapping("/createForm")
   public String createForm() {
      return "exam04/createForm";    
   }
   
	/*
	 * @PostMapping("/create") public String create(String btitle, String
	 * bcontent) {
	 * 
	 * Board board = new Board(); board.setBtitle(btitle);
	 * board.setBcontent(bcontent); board.setBwriter("user1"); // board.setBdate);
	 * boardsService.saveBoard(board); return "redirect:/exam04/list"; }
	 */
   
   @PostMapping("/create")
   public String create(Board board) {
	  
      board.setBwriter("user1");
      boardsService.saveBoard(board);
      return "redirect:/exam04/list";
   }
   
   @GetMapping("/read")
   public String read(int bno, Model model) {
	   boardsService.addHitcount(bno); // *** 조회수 1 증가.
	   Board board = boardsService.getBoard(bno);
	   
	   model.addAttribute("board", board);
	   return "exam04/read";
   }
   
   @GetMapping("/updateForm")
   public String updateForm(int bno, Model model) {
	   Board board = boardsService.getBoard(bno);
	   
	   model.addAttribute("board", board);
	   return "exam04/updateForm";
   }
   
   
   @PostMapping("/update")
   public String update(Board board) {
      boardsService.updateBoard(board);
      return "redirect:/exam04/list";
   }
   

   @GetMapping("/delete")
   public String delete(int bno) {
      boardsService.deleteBoard(bno);
      return "redirect:/exam04/list";
   }
   
   
   @GetMapping("/createFormWithAttach")
   public String createFormWithAttach() {
      return "exam04/createFormWithAttach";    
   }
   @GetMapping("/createWithAttach")
   public String createWithAttach(String btitle, String bcontent, MultipartFile battach) {
	   
	   
	   return "exam04/createWithAttach";    
   }
   @PostMapping("/createWithAttach")
   public String createWithAttach(Board board) {
	   MultipartFile battach = board.getBattach();
	   
	   if(!battach.isEmpty()) {
		   System.out.println("첨부없");
		   board.setBattachoname(battach.getOriginalFilename());
		   
		   board.setBattachtype(battach.getContentType());
		   String saveName = new Date().getTime() + "-" + board.getBattachoname();
		   board.setBattachsname(saveName);
		   File file = new File("D:/MyProject/uploadfiles/" + saveName);
		   try {
			battach.transferTo(file);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	   }
	   board.setBwriter("user1");
	   boardsService.saveBoard(board);
	   
	   return "redirect:/exam04/list";    
   }
   @GetMapping("/downloadAttach")
   public void downloadAttach(int bno, HttpServletResponse response) {
	   Board board = boardsService.getBoard(bno);
	   //응답 HTTP 헤더에 저장될 바디의 타입
	   
	   response.setContentType(board.getBattachtype());
	   try {
		   //응답 http 헤더에 다운로드할 수 있도록 파일이름 지정
		   String originalName = board.getBattachsname();
		   originalName = new String(originalName.getBytes("UTF-8"),"ISO-8859-1");
		   response.setHeader("Content-Dispostion", "attachment; filename=\""+originalName+"\" ; ");
		//응답 HTTP 바디에 저장될 내용
		InputStream is = new FileInputStream("D:/Myproject/uploadfiles/"+board.getBattachsname());
		logger.info(board.getBattachsname());
		OutputStream os = response.getOutputStream();
	    FileCopyUtils.copy(is, os);
	    os.flush();
	    is.close();
	    os.close();
	   } catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
   }
   
}