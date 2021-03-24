<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<div>
   <%-- 메뉴 내용 부분 --%>
   uid: ${user.uid} <hr/>
   uname: ${user.uname} <hr/>
   upassword: ${user.upassword} <hr/>
   uhobby:
   <c:forEach var="hobby" items="${user.uhobby}">
   ${hobby},
   </c:forEach><br/>
   ujob: ${user.ujob}<br/>
</div>             

<%@ include file="/WEB-INF/views/common/footer.jsp" %>