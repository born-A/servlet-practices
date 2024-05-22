<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="guestbook.dao.GuestbookDao" %>
<%@ page import="guestbook.vo.GuestbookVo" %>
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String contents = request.getParameter("contents");
	
	GuestbookVo vo = new GuestbookVo();
	vo.setName(name);
	vo.setPassword(password);
	vo.setContents(contents);
	
	new GuestbookDao().insert(vo);
	
	response.sendRedirect(request.getContextPath());
%>