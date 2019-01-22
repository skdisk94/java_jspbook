<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="addrbook_error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록 작성화면</title>
<link rel="stylesheet" href="addrbook.css" type="text/css" media="screen"/>
</head>
<body>
<div align="center">
<h2>주소록 작성화면</h2>
<hr>
[<a href=addrbook_control.jsp?action=list>주소록 목록으로</a>]<p>
<form name=form1 method=post action=addrbook_control.jsp>
<input type=hidden name="action" value="insert">
<table border="1">
<tr>
<th>이름</th>
<td><input type="text" name="abName" maxlength="15"></td>
</tr>
<tr>
<th>email</th>
<td><input type="text" name="abEmail" maxlength="50"></td>
</tr>
<tr>
<th>전화번호</th>
<td><input type="text" name="abTel" maxlength="20"></td>
</tr>
<tr>
<th>생일</th>
<td><input type="date" name="abBirth" ></td>
</tr>
<tr>
<th>회사</th>
<td><input type="text" name="abCompany" maxlength="20"></td>
</tr>
<tr>
<th>메모</th>
<td><textarea name="abMemo" rows="5" cols="26"></textarea></td>
</tr>
<tr>
<td colspan=2 align=center>
<input type=submit value="저장">
<input type=reset value="취소">
</td>
</tr>
</table>
</form>

</div>
</body>
</html>