<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.ch07.*"%>
<jsp:useBean id="am" class="jspbook.ch07.AddrManager" scope="application"/>
<%
	request.setCharacterEncoding("UTF-8");
	AddrBean addr = am.search((request.getParameter("sname")));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h2>수정 내용</h2>
<form name=form1 method="post" action=addr_mod.jsp>
<input type="hidden" name=username value="<%=addr.getUsername()%>">
			<table border=1 cellspacing="1" cellpadding="5">
				<tr>
					<td>이름</td>
					<td><%=addr.getUsername()%></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type=text size=20 name=tel value=<%=addr.getTel() %>></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type=text size=20 name=email value=<%=addr.getEmail() %>></td>
				</tr>
				<tr>
					<td>성별</td>
					<td><select name=sex>
							<option selected>남</option>
							<option>여</option>
					</select></td>
				</tr>
				<tr>
					<td colspan=2 align=center><input type=submit value="확인">
						<input type=reset value="취소"></td>
				</tr>
			</table>
		</form>
<hr>
<a href="addr_list.jsp">목록 보기</a>
</body>
</html>