<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
              <div>
                <%-- 메뉴 내용 부분 --%>
          		method.jsp
          		<hr/>
          		<div class="alert alert-primary">
          			현재 욫어방식 <span id="method">${method}</span>
          		</div>
          		<h3>form태그 이용</h3>
          		<form method="get" action="method3">
          			<input class="btn btn-success btn-sm" type="submit" value="GET">
          		</form>
          		<form method="post" action="method3">
          			<input class="btn btn-success btn-sm" type="submit" value="POST">
          		</form>
          		<form method="put" action="method3">
          			<input class="btn btn-success btn-sm" type="submit" value="PUT">
          		</form>
          		<form method="delete" action="method3">
          			<input class="btn btn-success btn-sm" type="submit" value="DELETE">
          		</form>
          		
          		<hr/>
          		
          		<h3>AJAX태그 이용</h3>
          		<button class="btn btn-info"onclick="sendGet()" >AJAX GET방식요청</button>
          		<script>
          			const sendGet = ()=>{
          				$.ajax({
          					url:"ajaxmethod3", method:"get" })
          					.then(data=>{
          						$("#method").html(data.method);
          						console.log("succesws");
          					})
          			}
          		</script>
          		<button class="btn btn-info"onclick="sendPost()">AJAX POST방식요청</button>
          		<script>
          			const sendPost = ()=>{
          				$.ajax({
          					url:"method3", method:"post" })
          					.then(response=>{
          						console.log("succesws");
          					})
          			}
          		</script>
          		
      			<button class="btn btn-info" onclick="sendPut()">AJAX PUT방식요청</button>
          		<script>
          			const sendPut = ()=>{
          				$.ajax({
          					url:"method3", method:"put" })
          					.then(response=>{
          						console.log("succesws");
          					})
          			}
          		</script>
          		<button class="btn btn-info"onclick="sendDelete()">AJAX DELETE방식요청</button>
          		<script>
          			const sendDelete = ()=>{
          				$.ajax({
          					url:"method3", method:"delete" })
          					.then(response=>{
          						console.log("succesws");
          					})
          			}
          		</script>
              </div>
<%@ include file="/WEB-INF/views/common/footer.jsp"%>
