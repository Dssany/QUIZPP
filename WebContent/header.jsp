<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	
	header {margin:0 0 0 0;}
	div.a{color:brown;font-family:'나눔명조 ExtraBold'}
	div.label{text-align:right; float: right;}
</style>
</head>
<body>
	<header>
	<div class="a"><b class="headerLogo">CARE LAB</b></div>

	<div class="b">
	
	<label><a href="index.jsp">HOME</a></label>
	<label><a href="#">회원정보</a></label>
	
	<%if(session.getAttribute("id")!=null){ %>
	<label><a href="#" onclick="logout()">로그아웃</a></label>
	<%}else{ %>
	<label><a href="#" >로그인</a></label>
	<%} %>
	</div>
	<hr>
	</header>
	
	<script type="text/javascript">
		function logout(){
			<%session.invalidate(); %>
			alert("로그아웃 되었습니다.")
			location.href="login.jsp";
		}
		
	</script>

</body>
</html>