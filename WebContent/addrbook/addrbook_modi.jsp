<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="addrbook_error.jsp" import="jspbook.addrbook.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="addrbook.css" type="text/css" media="screen"/>
<script language=JavaScript>
	function delcheck(){
		result=confirm("정말로 삭제하시겠습니까?");
		
		if(result){
			document.form1.action.value="delete";
			document.form1.submit();
		}
		else{
			return;
		}
	}
</script>
<meta charset="UTF-8">
<title>주소록 수정화면</title>
</head>
<jsp:useBean id="ab" scope="request" class="jspbook.addrbook.AddrBook" />
<body>
<div align="center">
<h2>주소록 수정화면</h2>
[<a href=addrbook_control.jsp?action=list>주소록 목록으로</a>]<p>
<form name=form1 method=post action=addrbook_control.jsp>
<input type=hidden name="abId" value="<%=ab.getAbId()%>">
<input type=hidden name="action" value="update">

<table border="1">
<tr>
<th>이름</th>
<td><input type="text" name="abName" value="<%=ab.getAbName()%>"></td>
</tr>
<tr>
<th>email</th>
<td><input type="text" name="abEmail" value="<%=ab.getAbEmail() %>"></td>
</tr>
<tr>
<th>전화번호</th>
<td><input type="text" name="abTel" value="<%=ab.getAbTel() %>"></td>
</tr>
<tr>
<th>생일</th>
<td><input type="date" name="abBirth" value="<%=ab.getAbBirth() %>"></td>
</tr>
<tr>
<th>회사</th>
<td><input type="text" name="abCompany" value="<%=ab.getAbCompany() %>"></td>
</tr>
<tr>
<th>메모</th>
<td><textarea name="abMemo" rows="5" cols="26" ><%=ab.getAbMemo() %></textarea></td>
</tr>
<tr>
<td colspan=2 align=center>
<input type=submit value="저장">
<input type=reset value="취소" >
<input type=button value="삭제" onClick="delcheck()">
</td>
</tr>
</table>

</form>
</div>
</body>
</html>