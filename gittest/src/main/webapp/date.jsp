<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 a hh:mm:ss");
	SimpleDateFormat df = new SimpleDateFormat("yy.MM.dd");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>오늘의 날짜와 시간</title>
</head>
<body>
<% String startdate = "22.10.12" ; %>
<% String finishdate = "22.11.26" ; %>
<% String nowdate = "22.11.26" ; %>
현재 날짜와 시간은 <%= nowTime %> 입니다.
<br>-------------------------------------------------------------------<br>
현재 날짜와 시간은 <%= sf.format(nowTime) %> 입니다.
<br>-------------------------------------------------------------------<br>
현재 날짜와 시간은 <%= df.format(nowTime) %> 입니다.
<%= startdate.compareTo(df.format(nowTime)) %>
<%= finishdate.compareTo(df.format(nowTime)) %>
<%= nowdate.compareTo(df.format(nowTime)) %>
</body>
</html>