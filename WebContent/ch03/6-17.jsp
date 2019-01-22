<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>for 문으로 10px~35px크기 출력</h3>
  <hr>
  <%
  for(int size=10; size<=35; size+=5){
%>	  
	<span style='font-size:<%=size %>px'><%=size %>px</span>		  
<%  
  }
  %>
<!-- <script type="text/javascript">
      for(var size=10;size<=35;size+=5){
        document.write("<span style='font-size:"+size+"px'>");
        document.write(size+"px");
        document.write("</span>")
      }
    </script> -->

</body>
</html>