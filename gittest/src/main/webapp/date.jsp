<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy�� MM�� dd�� a hh:mm:ss");
	SimpleDateFormat df = new SimpleDateFormat("yy.MM.dd");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>������ ��¥�� �ð�</title>
</head>
<body>
<% String startdate = "22.10.12" ; %>
<% String finishdate = "22.11.26" ; %>
<% String nowdate = "22.11.26" ; %>
���� ��¥�� �ð��� <%= nowTime %> �Դϴ�.
<br>-------------------------------------------------------------------<br>
���� ��¥�� �ð��� <%= sf.format(nowTime) %> �Դϴ�.
<br>-------------------------------------------------------------------<br>
���� ��¥�� �ð��� <%= df.format(nowTime) %> �Դϴ�.
<%= startdate.compareTo(df.format(nowTime)) %>
<%= finishdate.compareTo(df.format(nowTime)) %>
<%= nowdate.compareTo(df.format(nowTime)) %>
</body>
</html>