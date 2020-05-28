<%@page import="members.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>loginChk.jsp<br>
	<%
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		MemberDTO dto = new MemberDTO();
		dto.setId("test");dto.setPwd("1234");
		if(id.equals(dto.getId()) && pwd.equals(dto.getPwd())){
			out.print(dto.getId() + "님 반갑습니다!");
		}else{
			out.print("회원정보가 존재하지 않습니다!!!");
		}
		
		
	%>
	<button type="button" onclick="history.back()">이전</button>

</body>
</html>