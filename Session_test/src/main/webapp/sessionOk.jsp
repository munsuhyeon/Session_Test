<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String pid = request.getParameter("id");
		String ppw = request.getParameter("pw");
		
		if(pid.equals("tiger") && ppw.equals("12345"))
		{
		
		session.setAttribute("member_id", pid);
		session.setAttribute("member_pw", ppw);
		
		out.println("로그인 성공!<br>");
		out.println("[" + pid + "]" + "님 반갑습니다.");
		response.sendRedirect("welcom.jsp");
		}
		else
		{
			response.sendRedirect("sessionCreate.jsp");
		}
	
	%>
</body>
</html>