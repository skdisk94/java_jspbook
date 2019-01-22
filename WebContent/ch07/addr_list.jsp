<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.ch07.*"%>
<jsp:useBean id="am" class="jspbook.ch07.AddrManager" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addr_list</title>
</head>
<body>
<div align=center>
<h2>주소록</h2>
<hr>
<a href="addr_form.html">주소추가</a><p>
<form action="addr_search.jsp">
이름 검색 : <input type=text name=sname><input type=submit value="검색">
</form>
<table border=1 width=500>
<tr><td>이름</td><td>전화번호</td><td>이메일</td><td>성별</td><td>메뉴</td></tr>
<%
	for(AddrBean ab : am.getAddrList()){
%>
<tr>
<td><%=ab.getUsername() %></td>
<td><%=ab.getTel() %></td>
<td><%=ab.getEmail() %></td>
<td><%=ab.getSex() %></td>
<td><font size=-1>[<a href="addr_mod_form.jsp?sname=<%=ab.getUsername()%>">수정</a>]
				[<a href="addr_del.jsp?sname=<%=ab.getUsername()%>">삭제</a>]</font></td></tr>
		<%	
			}
		%>
</table>
</div>

</body>
</html>