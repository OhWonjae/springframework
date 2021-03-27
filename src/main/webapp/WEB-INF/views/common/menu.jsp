<%@ page contentType="text/html; charset=UTF-8"%>

<ul class="nav flex-column">
  <li class="nav-item">
    <h6 class="text-white">Controller</h6>
    <a class="nav-link text-warning" href="<%=application.getContextPath()%>">
    홈페이지
    </a> 
    <a class="nav-link text-warning" href="<%=application.getContextPath()%>/exam01/boardlist">
    Controller에서 JSP로 데이터를 전달
    </a>
    <a class="nav-link text-warning" href="<%=application.getContextPath()%>/exam02/method1form">
    한글 복원을 위한 문자 인코딩
    </a>
    
    <a class="nav-link text-warning" href="<%=application.getContextPath()%>/exam02/method2">
    리다이렉트(요청 재 지정)
    </a>
    
    <a class="nav-link text-warning" href="<%=application.getContextPath()%>/exam3/method1">
    exam03/method1
    </a>
    
    <a class="nav-link text-warning" href="<%=application.getContextPath()%>/exam03/method2">
    exam03/method2
    </a>

    <a class="nav-link text-warning" href="<%=application.getContextPath()%>/exam03/method3">
    exam03/method3
    </a>
    
    <a class="nav-link text-warning" href="<%=application.getContextPath()%>/exam03/content">
  	요청 파라미터 받기
    </a>
 </li>
   <li class="nav-item">
   <h6 class="text-white">DB연동</h6>
    <a class="nav-link text-warning" href="<%=application.getContextPath()%>/exam04/content">
  	게시판
    </a>
    </li>
     <li class="nav-item">
     <h6 class="text-white">Ajax연동</h6>
     <a class="nav-link text-warning" href="<%=application.getContextPath()%>/exam05/content">
  	게시판
    </a>
    </li>

     <li class="nav-item">
     <h6 class="text-white">상태 유지</h6>
     <a class="nav-link text-warning" href="<%=application.getContextPath()%>/exam06/content">
  	쿠키(Cookie) & 세션(Session)
    </a>
    </li>
    

     <li class="nav-item">
     <h6 class="text-white">회원 서비스</h6>
     <a class="nav-link text-warning" href="<%=application.getContextPath()%>/exam07/joinForm">
  		회원가입
    </a>
    
     <a class="nav-link text-warning" href="<%=application.getContextPath()%>/exam07/loginForm">
  		로그인
    </a>
    </li>
     
     <li class="nav-item">
     <h6 class="text-white">스프링 시큐리티</h6>
     <a class="nav-link text-warning" href="<%=application.getContextPath()%>/exam08/user/boardlist">
  		사용자가 사용하는 게시판
    </a>
    
     <a class="nav-link text-warning" href="<%=application.getContextPath()%>/exam08/admin/boardlist">
  		관리자가 사용하는 페이지
    </a>
    </li>
    
     <li class="nav-item">
     <h6 class="text-white">유효성 검사</h6>
     <a class="nav-link text-warning" href="<%=application.getContextPath()%>/exam09/joinForm">
  		1차 검사(클라이언트: JS)
    </a>

    
    </li>
 
</ul>