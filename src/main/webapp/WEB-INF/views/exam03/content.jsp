<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <%@ include file="/WEB-INF/views/common/header.jsp"%>
       
       <div>
	       <a class="btn btn-info btn-sm"
	       href="method1?kind=freeboard"> GET 방식 파라미터 전송</a>
       </div>
      
      
      <form method="post" action="method3">
  <div class="form-group">
    <label for="uid">아이디</label>
    <input type="text" class="form-control" id="uid" name="uid">
  </div>
  <div class="form-group">
    <label for="uname">이름</label>
    <input type="text" class="form-control" id="uname" name="uname">
  </div>
  
  <div class="form-group">
    <label for="upassword">비밀번호</label>
    <input type="password" class="form-control" id="upassword" name="upassword"placeholder="Password">
  </div>
  <div>
    <input type="checkbox" class="form-check-input" id="uhobby" name="uhobby" value="homework">
    <label  for="uhobby">과제하기</label>
    <input type="checkbox" class="form-check-input" id="uhobby" name="uhobby" value="nightwork">
    <label  for="uhobby">야근하기</label>
    <input type="checkbox" class="form-check-input" id="uhobby" name="uhobby"value="restudy">
    <label  for="uhobby">복습하기</label>
  </div>
 	
 	
  <div class="form-group">
    <label for="exampleFormControlSelect1">직무</label>
    <select class="form-control" id="ujob" name="ujob">
      <option value="developer">개발자</option>
      <option value="designer">디자이너</option>
      <option value="manager">매니저</option>
    </select>
  </div>
 	
 	
 	
  <button type="submit" class="btn btn-primary">가입</button>
</form>
 <%@ include file="/WEB-INF/views/common/footer.jsp"%>