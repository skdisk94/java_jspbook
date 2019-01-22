<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="addrbook_error.jsp" import="java.util.*, jspbook.addrbook.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<link rel="stylesheet" href="addrbook.css" type="text/css" media="screen"/>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function check(abId) {
		pwd = prompt('수정/삭제 하려면 비밀번호를 넣으세요');
		document.location.href="addrbook_control.jsp?action=edit&abId="+abId+"&upasswd="+pwd;
	}
</script>
<meta charset="UTF-8">
<title>주소록 목록화면</title>
</head>
<jsp:useBean id="datas" scope="request" class="java.util.ArrayList"/>
<body>
<div align="center">
<h2>주소록 목록화면</h2>
<hr>
<form>
<a href="addrbook_add.jsp">주소록 등록</a><p>

<table border="1">
	<tr><th>번호</th><th>이름</th><th>전화번호</th><th>생일</th><th>회사</th><th>메모</th></tr>
	<%
		for(AddrBook ab : (ArrayList<AddrBook>)datas){
	%>
	<tr>
	<td><a href="javascript:check(<%=ab.getAbId()%>)"><%=ab.getAbId() %></a></td>
	<td><%=ab.getAbName() %></td>
	<td><%=ab.getAbTel() %></td>
	<td><%=ab.getAbBirth() %></td>
	<td><%=ab.getAbCompany() %></td>
	<td><%=ab.getAbMemo() %></td>
	</tr>
	<%
		}
	%>
</table>
</form>
</div>
</body>
</html>