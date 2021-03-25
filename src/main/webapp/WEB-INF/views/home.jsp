
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Spring</title>
		<%--- application: ServletContext 객체(웹 애플리케이션 실행 정보를 가지고 있는 객체) 참조 --%>
		<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/bootstrap-4.6.0/css/bootstrap.min.css">
		<script src="<%=application.getContextPath()%>/resources/js/jquery-3.5.1.min.js"></script>
		<script src="<%=application.getContextPath()%>/resources/bootstrap-4.6.0/js/bootstrap.bundle.min.js"></script>
    <%-- 헤더 부분 --%>
	<%@ include file="/WEB-INF/views/common/header.jsp" %>
      <div class="flex-grow-1 container-fluid">
        <div class="row h-100">
<!--           <div class="col-md-4 p-3 bg-dark">
 -->            <div class="h-100 d-flex flex-column">
              <div class="flex-grow-1" style="height:0px; overflow-y: auto; overflow-x: hidden;">
                <%-- 메뉴 부분 --%>
                <%@ include file="/WEB-INF/views/common/menu.jsp"%>
             
<%@ include file = "/WEB-INF/views/common/footer.jsp" %>
              	

