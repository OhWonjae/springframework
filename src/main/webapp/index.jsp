<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- 방법1 --%>
<%-- <%response.sendRedirect(application.getContextPath() + "/home");%>  자바코드로 작성한 것--%>

<%-- 방법2 jstl 태그방식으로 contexted route가 생략되어짐 java는 contexted route까지 작성해줘야--%>
<c:redirect url="/home"/>