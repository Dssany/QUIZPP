<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	
	header {margin:0 0 0 0; display: flex;}
	.a{ width:1600px;height:30px;text-align:center;padding-left:100px;color:brown;font-family:'나눔명조 ExtraBold';}
	.label{width:200px;height:30px;text-align:right;}
</style>
</head>
<body>
	<header>
	<div class="a"><b class="headerLogo">CARE LAB</b></div>

	<div class="label">
	
	<label><a href="index.jsp">HOME</a></label>
	<label><a href="#">회원정보</a></label>
	
	<%if(session.getAttribute("id")!=null){ %>
	<label><a href="#" onclick="logout()">로그아웃</a></label>
	<%}else{ %>
	<label><a href="#" >로그인</a></label>
	<%} %>
	</div>
	</header>
	
	<hr>
	
	<script type="text/javascript">
		function logout(){
			<%session.invalidate(); %>
			alert("로그아웃 되었습니다.")
			location.href="login.jsp";
		}
		
	</script>
<div style=height:200px;text-align:center;>
	<h1>로그인 페이지입니다</h1>
	<form action="printLogin.jsp" method="post">
		<table align="center">
		<tr>
			<th><input type="text" name="id" placeholder="아이디"><br></th>
			<th  rowspan="2" ><input type="submit" value="로그인" style="height:50px;margin:5px 0 5px 0;"><br></th>
		</tr>
		<tr>
			<th><input type="text" name="pwd" placeholder="비밀번호"></th>
		</tr>
		<tr>
			<th align="left"><button type="button" onclick="location=''">회원가입</button></th>
		</tr>
		
		</table>
	</form>
	</div>
</body>
</html>