<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark text-white font-weight-bold justify-content-between">
  <a class="navbar-brand" href="./">
    <img src="${pageContext.request.contextPath}/resources/images/logo.png" width="30" height="30" class="d-inline-block align-top">
    Spring
  </a>
  <div>
    <div>
      <a class="btn btn-success btn-sm" href="#">로그인</a>
		</div>
  </div>
</nav>
=======
<%@ page contentType="text/html; charset=UTF-8"%>
	<head>
		<title>Spring</title>
		<%-- application: servletContext(웹 애플래케이션 실행 정보를 가지고 있는 객체)참조 --%>
		<link rel="stylesheet" href="<%=application.getContextPath() %>/resources/bootstrap-4.6.0/css/bootstrap.min.css">
		<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/bootstrap-4.6.0/js/bootstrap.bundle.min.js"></script>
		<script src="<%=pageContext.getServletContext().getContextPath() %>/resources/bootstrap-4.6.0/js/bootstrap.min.js"></script>
	</head>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark text-white font-weight-bold justify-content-between">
  <a class="navbar-brand" href="./">
    <img src="${pageContext.request.contextPath}/resources/images/logo-spring.png" width="30" height="30" class="d-inline-block align-top">
    Spring
  </a>
  <div>
    <div>
      <a class="btn btn-success btn-sm" href="#">로그인</a>
		</div>
  </div>
</nav>

<body>
    <div class="flex-grow-1 container-fluid">
        <div class="row h-100">
          <div class="col-md-4 p-3 bg-dark">
            <div class="h-100 d-flex flex-column">
              <div class="flex-grow-1" style="height:0px; overflow-y: auto; overflow-x: hidden;">
               <%@ include file="/WEB-INF/views/common/menu.jsp"%>
              </div>
            </div>
          </div>

          <div class="col-md-8 p-3">
            <div class=" h-100 d-flex flex-column">
              <div class="flex-grow-1 overflow-auto pr-3" style="height:0px">
         
>>>>>>> branch 'master' of https://github.com/OhWonjae/springframework.git
