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
 
</ul>