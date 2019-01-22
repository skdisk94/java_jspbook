<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, jspbook.addrbook.*"%>
<% request.setCharacterEncoding("UTF-8"); %>
<link rel="stylesheet" href="ab.css" type="text/css" media="screen"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록 선택 화면</title>
</head>
<jsp:useBean id="abDto" scope="request" class="jspbook.addrbook.AddrBook" />
<body>
<div align="center">
<h2>주소록 목록화면</h2>
<hr>
[<a href=ab_control.jsp?action=list>주소록 목록으로</a>]<p>
<form>
<input type=hidden name="abId" value="${abDto.abId}">
<table border="1">
<tr>
<th>Id</th>
<td>${abDto.abId}</td>
</tr>
<tr>
<th>이름</th>
<td>${abDto.abName}</td>
</tr>
<tr>
<th>email</th>
<td><%=abDto.getAbEmail() %></td>
</tr>
<tr>
<th>전화번호</th>
<td><%=abDto.getAbTel() %></td>
</tr>
<tr>
<th>생일</th>
<td><%=abDto.getAbBirth() %></td>
</tr>
<tr>
<th>회사</th>
<td><%=abDto.getAbCompany() %></td>
</tr>
<tr height="100">
<th>메모</th>
<td width="150" ><textarea><%=abDto.getAbMemo() %></textarea></td>
</tr>
</table>
</form>
</div>
</body>
</html>