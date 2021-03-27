
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<style>
	.error{
		font-size:0.8em;
		
	}

</style>

<script>
	function validate(){
		event.preventDefault();
		var result = true;
		//유효성 검사코드
		const uid= $("#uid").val();
		const uname = $("#uname").val();
		const upassword = $("#upassword").val();
		
		if(uid===""){
			result = false;
			$("#errorUid").html("필수 사항 입니다.");
		} else if(uid.length<8){
			result = false;
			$("#errorUid").html("최소 8자 이상 입력해야 합니다.");
		}else if(uid.length>15){
			result = false;
			$("#errorUid").html("최대 15자 까지만 입력해야 합니다.");
		}
		
		if(uname===""){
			result = false;
			$("#errorUname").html("필수 사항 입니다.");
		}else if(uname.length<8){
			result = false;
			$("#errorUid").html("최소 8자 이상 입력해야 합니다.");
		}
		if(upassword===""){
			result = false;
			$("#errorUpassword").html("필수 사항 입니다.");
		}
		
		
		if(result){
			$("#joinForm")[0].submit();
		}
	}


</script>


<div>
	<div class="alert alert-primary">
		회원 가입
	</div>

	<form id="joinForm"  method="post" action="join" onsubmit="validate()" novalidate="novalidate">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		<div class="form-group">
			<label for="uid">아이디</label> 
			<input type="text" class="form-control" id="uid" name="uid">
			<span id="errorUid" class="text-danger error"></span>
		</div>
		<div class="form-group">
			<label for="uname">이름</label> 
			<input type="text" class="form-control" id="uname" name="uname">
			<span id="errorUname" class="text-danger error"></span>
		</div>
		<div class="form-group">
			<label for="upassword">비밀번호</label> 
			<input type="password" class="form-control" id="upassword" name="upassword" placeholder="Password">
			<span id="errorUpassword" class="text-danger error"></span>
		</div>
		<div class="form-group">
			<label for="uemail">이메일</label> 
			<input type="email" class="form-control" id="uemail" name="uemail" placeholder="email">
			<span id="errorUemail" class="text-danger error"></span>
		</div>
		<button type="submit" class="btn btn-primary">가입</button>
	</form>
</div>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>