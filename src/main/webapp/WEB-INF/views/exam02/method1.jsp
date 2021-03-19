<<<<<<< HEAD
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
	<title>Home</title>
	<%-- application: ServletContext 객체(웹 애플리케이션 실행정보를 가지고 있는 객체) 참조 --%>
	<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/bootstrap-4.6.0/css/bootstrap.min.css" >
	<script src="<%=application.getContextPath()%>/resources/js/jquery-3.5.1.min.js"></script>
	<script src="<%=application.getContextPath()%>/resources/bootstrap-4.6.0/js/bootstrap.bundle.min.js" ></script>
	<script src="<%=application.getContextPath()%> /resources/bootstrap-4.6.0/js/bootstrap.min.js"></script>
</head>
 <body>
    <div class="d-flex flex-column vh-100">
	<%-- 헤더 부분 --%>
	<%@ include file="/WEB-INF/views/common/header.jsp" %>
      <div class="flex-grow-1 container-fluid">
        <div class="row h-100">
          <div class="col-md-4 p-3 bg-dark">
            <div class="h-100 d-flex flex-column">
              <div class="flex-grow-1" style="height:0px; overflow-y: auto; overflow-x: hidden;">
                	<%-- 메뉴 부분 --%>
                	<%@ include file="/WEB-INF/views/common/menu.jsp" %>
              </div>
            </div>
          </div>

          <div class="col-md-8 p-3">
            <div class=" h-100 d-flex flex-column">
              <div class="flex-grow-1 overflow-auto pr-3" style="height:0px">
                <%-- 메뉴 내용 부분 --%>
                method01.jsp
                </hr>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
=======
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
              <div>
                <%-- 메뉴 내용 부분 --%>
          		method01.jsp
          		<hr/>
              </div>
<%@ include file="/WEB-INF/views/common/footer.jsp"%>
>>>>>>> branch 'master' of https://github.com/OhWonjae/springframework.git
