package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycompany.webapp.dto.User;

@Controller
@RequestMapping("/exam03")
public class Exam03Controller {
   @GetMapping("/content")
   public String content() {
      return "exam03/content";
   }
   
   /*   
   @GetMapping("/method1")
   public String method1(HttpServletRequest request, Model model) {
      String kind = request.getParameter("kind");
      int pageNo = Integer.parseInt(request.getParameter("pageNo"));
      request.setAttribute("kind", kind);
      request.setAttribute("pageNo", pageNo);
      return "exam03/method1";
   }
   */
   @GetMapping("/method1")
   public String method1(
         @RequestParam(name="kind") String type,      //컨트롤러에서랑 jsp에서 받는 키 값이 다를 경우 매핑해주는 과정
         @RequestParam(defaultValue="1") int pageNo,   //값이 변환이되지 않아서 안 넘어올때 디폴트값 1을 보낸다.
         Model model) {
      model.addAttribute("kind", type);
      model.addAttribute("pageNo", pageNo);
      return "exam03/method1";
   }
   
   @PostMapping("/method2")
   public String method2(String umail, String upassword, boolean upublic, Model model) {
      model.addAttribute("umail",umail);
      model.addAttribute("upassword",upassword);
      model.addAttribute("upublic",upublic);
      return "exam03/method2";
   }
   
   @PostMapping("/method3")            //★★ DTO로 데이터를 받는게 좋음 User
   public String method3(User user) {
      return "exam03/method3";
   }
}