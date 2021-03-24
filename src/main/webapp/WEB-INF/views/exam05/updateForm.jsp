<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div> <!--a tag : get방식  -->
	<div class="alert alert-success">
		게시물 수정
	</div>
	

	<form onsubmit="update(${board.bno})">
		<div class="form-group">
			<label for="btitle">제목</label> 
			<input type="text" class="form-control" id="btitle" name="btitle" value="${board.btitle}">
		</div>
		<div class="form-group">
			<label for="bcontent">내용</label> 
			<input type="text" class="form-control" id="bcontent" name="bcontent" value="${board.bcontent}">
		</div>
		<button type="submit" class="btn btn-primary">수정</button>
		<button class="btn btn-primary" onclick="read({board.bno})">취소</button>
	</form>
	
	
	
		
<%-- 	0. 연결상태: ${connStatus} <br/>
	1. <a href="boards">게시물 목록</a> <br/> --%>
</div>