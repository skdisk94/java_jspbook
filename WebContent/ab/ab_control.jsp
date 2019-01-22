<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="ab_error.jsp" import="jspbook.addrbook.*, java.util.*"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="abDao" scope="page" class="jspbook.addrbook.AddrBean"/>
<jsp:useBean id="abDto" class="jspbook.addrbook.AddrBook"/>
<jsp:setProperty name="abDto" property="*"/>
<%
	String action = request.getParameter("action");
	
	switch(action){
	
		case "list":
			ArrayList<AddrBook> dataList = abDao.getDBList();
			request.setAttribute("abList", dataList);
			pageContext.forward("ab_list.jsp");
			break;
			
		case "insert":
			if(abDao.insertDB(abDto)){
				response.sendRedirect("ab_control.jsp?action=list");
			}
			else
				throw new Exception("DB 입력 오류");
			break;
			
		case "edit":
			AddrBook abook = abDao.getDB(abDto.getAbId());
			if(!request.getParameter("upasswd").equals("1234")){
				out.println("<script>alert('비밀번호가 틀렸습니다.!!'); history.go(-1);</script>");
			}
			else{
				
				request.setAttribute("abDto", abook);
				pageContext.forward("ab_modi.jsp");
			}
			break;
			
		case "update":
			if(abDao.updateDB(abDto)){
				response.sendRedirect("ab_control.jsp?action=list");
			}
			else
				throw new Exception("DB 갱신 오류");
			break;
			
		case "delete":
			abook = abDao.getDB(abDto.getAbId());
			if(!request.getParameter("upasswd").equals("1234")){
				out.println("<script>alert('비밀번호가 틀렸습니다.!!'); history.go(-1);</script>");
			}
			else{
				if(abDao.deleteDB(abDto.getAbId())){
					response.sendRedirect("ab_control.jsp?action=list");
				}
				else
					throw new Exception("DB 삭제 오류");
			}
			break;
			
		case "select":
			abook = abDao.getDB(abDto.getAbId());
			request.setAttribute("abDto", abook);
			pageContext.forward("ab_select.jsp");
			break;
			
		default : out.println("<script>alert('action 파라미터를 확인해 주세요!!!')</script>");
	}
%>
