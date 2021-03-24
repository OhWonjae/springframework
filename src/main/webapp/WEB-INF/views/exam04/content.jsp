<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>

<div>
	<p>1. <a href="list">게시물 목록</a></p>
	<p>2. <a href="createForm">게시물 입력</a></p>
	<p>3. <a href="createFormWithAttach">게시물 입력(첨부 포함)</a></p>
	
		
<%-- 	0. 연결상태: ${connStatus} <br/>
	1. <a href="boards">게시물 목록</a> <br/> --%>
</div>


<%@ include file="/WEB-INF/views/common/footer.jsp"%>