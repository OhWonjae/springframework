<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>

<div> <!--a tag : get방식  -->
	<div class="alert alert-success">
		게시물 입력
	</div>
	

	<form method="post" action="create">
		<div class="form-group">
			<label for="btitle">제목</label> 
			<input type="text" class="form-control" id="btitle" name="btitle">
		</div>
		<div class="form-group">
			<label for="bcontent">내용</label> 
			<input type="text" class="form-control" id="bcontent" name="bcontent">
		</div>
		<button type="submit" class="btn btn-primary">저장</button>
	</form>
	
	
	
		
<%-- 	0. 연결상태: ${connStatus} <br/>
	1. <a href="boards">게시물 목록</a> <br/> --%>
</div>


<%@ include file="/WEB-INF/views/common/footer.jsp"%>