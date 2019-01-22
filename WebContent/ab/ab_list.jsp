<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="ab_error.jsp" import="java.util.*, jspbook.addrbook.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<link rel="stylesheet" href="ab.css" type="text/css" media="screen"/>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function check(abId) {
		pwd = prompt('수정 하려면 비밀번호를 넣으세요');
		document.location.href="ab_control.jsp?action=edit&abId="+abId+"&upasswd="+pwd;
	}
	function deleted(abId){
		pwd = prompt('삭제 하려면 비밀번호를 넣으세요');
		document.location.href="ab_control.jsp?action=delete&abId="+abId+"&upasswd="+pwd;
	}
	function select(abId){
		document.location.href="ab_control.jsp?action=select&abId="+abId;
	}
</script>
<meta charset="UTF-8">
<title>주소록 목록화면</title>
</head>
<%-- <jsp:useBean id="dataList" scope="request" class="java.util.ArrayList"/> --%>
<body>
<div align="center">
<h2>주소록 목록화면</h2>
<hr>
<form>
<a href="ab_add.jsp">주소록 등록</a><p>

<table border="1">
	<tr><th>번호</th><th>이름</th><th>이메일</th><th>회사</th><th>전화</th><th>생일</th><th>메뉴</th></tr>
	<%-- <%
		for(AddrBook abDto : (ArrayList<AddrBook>)dataList){
	%> --%>
	<c:set var="abList" value="${requestScope.abList}"/>
	<c:forEach var="abDto" items="${abList}">
	<tr>
	<td><a href="javascript:select(${abDto.abId})">${abDto.abId}</a></td>
	<td>${abDto.abName}</td>
	<td>${abDto.abEmail}</td>
	<td>${abDto.abCompany}</td>
	<td>${abDto.abTel}</td>
	<td>${abDto.abBirth}</td>
	<td><a href="javascript:check(${abDto.abId})">[수정]</a><a href="javascript:deleted(${abDto.abId})">[삭제]</a></td>
	</tr>
	<%-- <%
		}
	%> --%>
	</c:forEach>
</table>
</form>
</div>
</body>
</html>