<%-- page 지시자 --%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mycompany.webapp.*"%>

<%-- taglib 지시자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>

                     <%-- 메뉴 내용 부분 --%>
                     <table class="table">
                        <tr>
                           <th>번호</th>
                           <th>제목</th>
                           <th>내용</th>
                           <th>작성자</th>
                        </tr>

                        <c:forEach var="board" items="${list}">
                           <tr>
                              <%-- EL로 데이터 출력 --%>
                              <td>${board.bno}</td>
                              <td>${board.btitle}</td>
                              <td>${board.bcontent}</td>
                              <td>${board.bwriter}</td>
                           </tr>
                        </c:forEach>
                     </table>
                  <%@ include file="/WEB-INF/views/common/footer.jsp"%>
