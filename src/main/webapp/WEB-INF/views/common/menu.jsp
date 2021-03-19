<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<ul class="nav flex-column">
  <li class="nav-item">
    <h6 class="text-white">Controller</h6>
    <a class="nav-link text-warning" href="<%=application.getContextPath()%>">홈페이지</a>
    <a class="nav-link text-warning" href="<%=application.getContextPath()%>/exam01/boardlist">데이터를 JSP로 전달</a>
    <a class="nav-link text-warning" href="<%=application.getContextPath()%>/exam02/method1form">한글 복원을 위한 문자 인코딩 </a>
    <a class="nav-link text-warning" href="<%=application.getContextPath()%>/exam02/method2">리다이렉트(요청 재지정)</a>
=======
<%@ page contentType="text/html; charset=UTF-8"%>

<ul class="nav flex-column">
  <li class="nav-item">
    <h6 class="text-white">Controller</h6>
    <a class="nav-link text-warning" href="<%=application.getContextPath()%>">Home</a>
    <a class="nav-link text-warning" href="<%=application.getContextPath()%>/exam01/boardlist">데이터를 JSP 전달 </a>
    <a class="nav-link text-warning" href="<%=application.getContextPath()%>/exam02/method1form">문자 인코딩을 통해 한글 복원</a>
    <a class="nav-link text-warning" href="<%=application.getContextPath()%>/exam02/method2">리다이렉트(요청 재 지정)</a>
  	<a class="nav-link text-warning" href="<%=application.getContextPath()%>/exam02/method3">요청방식별 Controller 메소드 실행</a>
	 <a class="nav-link text-warning" href="<%=application.getContextPath()%>/exam03/content">요청 파라미터 받기</a>
	
>>>>>>> branch 'master' of https://github.com/OhWonjae/springframework.git
  </li>
</ul>