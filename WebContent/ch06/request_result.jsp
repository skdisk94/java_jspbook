<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request_result.jsp</title>
</head>
<body>
	<center>
		<h2>request 테스트 결과 - 1</h2>
		<hr>
		<table border=1 cellspacing="1" cellpadding="5">
			<tr>
				<td>이름</td>
				<td><%=request.getParameter("username")%></td>
			<tr>
				<td>직업</td>
				<td><%=request.getParameter("job")%></td>
			<tr>
				<td>관심분야</td>
				<td>
					<%
						String favorites[] = request.getParameterValues("favorite");
						for(String favorite : favorites){
							out.println(favorite + "<br>");
						}
				%>
				</td>
		</table>
		<hr>
		<h2>request 테스트 결과 - 2</h2>
		<table border=0>
			<tr>
				<td>1. 클라이언터 IP 주소 : <%=request.getRemoteAddr()%><br> 
					2.요청 메서드 : <%=request.getMethod()%><br> 
					<%Cookie cookie[] = request.getCookies(); %>
					3. <%=cookie[0].getName()%>에 설정된 쿠키값 : <%=cookie[0].getValue()%><br>
					4. 프로토콜 " <%=request.getProtocol()%>"
				</td>
			</tr>
		</table>
	</center>
</body>
</html>