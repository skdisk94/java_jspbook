<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="ab_error.jsp" import="jspbook.addrbook.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="ab.css" type="text/css" media="screen"/>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:useBean id="abDto" scope="request" class="jspbook.addrbook.AddrBook" />
<body>
<div align="center">
<h2>주소록 수정화면</h2>
[<a href=ab_control.jsp?action=list>주소록 목록으로</a>]<p>
<form name=form1 method=post action=ab_control.jsp>
<input type=hidden name="abId" value="${abDto.abId}">
<input type=hidden name="action" value="update">

<table border="1">
<tr>
<th>이름</th>
<td><input type="text" name="abName" value="${abDto.abName}"></td>
</tr>
<tr>
<th>email</th>
<td><input type="text" name="abEmail" value="<%=abDto.getAbEmail() %>"></td>
</tr>
<tr>
<th>전화번호</th>
<td><input type="text" name="abTel" value="<%=abDto.getAbTel() %>"></td>
</tr>
<tr>
<th>생일</th>
<td><input type="date" name="abBirth" value="<%=abDto.getAbBirth() %>"></td>
</tr>
<tr>
<th>회사</th>
<td><input type="text" name="abCompany" value="<%=abDto.getAbCompany() %>"></td>
</tr>
<tr>
<th>메모</th>
<td><textarea name="abMemo" rows="5" cols="26" ><%=abDto.getAbMemo() %></textarea></td>
</tr>
<tr>
<td colspan=2 align=center>
<input type=submit value="저장">
<input type=reset value="취소" >
</td>
</tr>
</table>

</form>
</div>
</body>
</html>