
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ page import="java.util.*"%>
<%@ page import="com.mycompany.webapp.dto.*"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>

<div class="card">
	<div class="card-header">
		게시물 목록
	</div>
	
	<div calss="card-body">
		<table class="table">
			<tr>
				<th>번호
				</th>
				<th>제목
				</th>
				<th>날짜
				</th>
				<th>글쓴이
				</th>
				<th>조회수
				</th>
			</tr>
			<c:forEach var="board" items="${list}">
				<!-- {key명이 들어감}  -->
				<tr>
					<%-- EL로 데이터 출력 --%>
					<td>${board.bno}
					</td>
					<td><a href="read?bno=${board.bno}">${board.btitle}</a>
					</td>
					<td><fmt:formatDate value="${board.bdate}" pattern="yyyy-MM-dd"/>
					</td>
					<td>${board.bwriter}
					</td>
					<td>${board.bhitcount}
					</td>
				</tr>
			</c:forEach>
			
			<tr>
				<td colspan="5" class="text-center">
					<!-- 6 7 8 9 10 -->
					<a class="btn btn-outline-primary btn-sm"
						href="list?pageNo=1">처음</a>
						
					<c:if test="${pager.groupNo>1}">
						<a class="btn btn-outline-info btn-sm"
						href="list?pageNo=${pager.startPageNo-1}">이전</a>
					</c:if>	
					
					<c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
						<a class="btn 
						<c:if test='${pager.pageNo==i}'>btn-danger</c:if>
						<c:if test='${pager.pageNo!=i}'>btn-outline-success</c:if>
						
						btn-sm" href="list?pageNo=${i}">${i}</a>
					</c:forEach>
					
					<c:if test="${pager.groupNo<pager.totalGroupNo}">
						<a class="btn btn-outline-info btn-sm"
						href="list?pageNo=${pager.endPageNo+1}">다음</a>
					</c:if>		
						
					<a class="btn btn-outline-primary btn-sm"
						href="list?pageNo=${pager.totalPageNo}">맨끝</a>
						
								
					
				</td>
			</tr>
		</table>
	</div>
</div>


<%-- 메뉴 내용 부분 --%>

<%@ include file = "/WEB-INF/views/common/footer.jsp" %>


