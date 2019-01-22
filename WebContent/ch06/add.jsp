<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList"  import="java.util.List"%>
<%@ page import ="jspbook.ch06.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>add.jsp</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	CartDTO cDto = new CartDTO();
	
	/* String productname=request.getParameter("product")+" "+request.getParameter("number")+"개";
	ArrayList list = (ArrayList)session.getAttribute("productlist");
	if(list == null){
		list = new ArrayList();
		session.setAttribute("productlist", list);
	}
	list.add(productname); */
	String productname=request.getParameter("product");
	int quantity = Integer.parseInt(request.getParameter("quantity"));
	
	List<CartDTO> productList = new ArrayList<CartDTO>();
	productList = (ArrayList)session.getAttribute("productlist");
	if(productList == null){
		productList = new ArrayList();
		session.setAttribute("productlist", productList);
	}
	cDto.setProductName(productname);
	cDto.setQuantity(quantity);
	productList.add(cDto);
	

	
%>
<script>
alert("<%=productname %>이(가) <%=quantity %>개가 추가되었습니다!!");
history.go(-1);
</script>

</body>
</html>