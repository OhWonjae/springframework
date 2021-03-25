
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>



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
					<td><button onclick="read(${board.bno})">${board.btitle}</button>
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
				<div class="d-flex">
				<div class="flex-grow-1">
						<!-- 6 7 8 9 10 -->
						<button class="btn btn-outline-primary btn-sm"
							onclick="getList(${i})">처음</button>
							
						<c:if test="${pager.groupNo>1}">
							<button class="btn btn-outline-info btn-sm"
							onclick="getList(1)">이전</button>
						</c:if>	
						
						<c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
							<button class="btn 
							<c:if test='${pager.pageNo==i}'>btn-danger</c:if>
							<c:if test='${pager.pageNo!=i}'>btn-outline-success</c:if>
							
							btn-sm" onclick="getList(${i})">${i}</button>
						</c:forEach>
						
						<c:if test="${pager.groupNo<pager.totalGroupNo}">
							<button class="btn btn-outline-info btn-sm"
							onclick="list?pageNo=${pager.endPageNo+1}">다음</button>
						</c:if>		
							
						<button class="btn btn-outline-primary btn-sm"
							onclick="getList(${i})">맨끝</button>
				</div>
					<c:if test="${loginUid!=null}">
					<button class="btn btn-success btn-sm"
					onclick="createForm()">글쓰기</button>
					</c:if>
				</div>				
					
				</td>
			</tr>
		</table>
	</div>
</div>


<%-- 메뉴 내용 부분 --%>



