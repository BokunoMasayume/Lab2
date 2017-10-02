<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="com.testbushu.beans.BookBean" %>
<%@ page import="com.testbushu.beans.AuthorBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="author">
	name:<s:property value="au.name"/><br/>
	age:<s:property value="au.age"/><br/>
	country:<s:property value="au.country"/>
</div>

<s:iterator value="boList">
	<div id="<s:property value="isbn"/>">
	isbn:<s:property value="isbn"/><br/>
	title:<s:property value="title"/><br/>
	publisher:<s:property value="publisher"/>
	</div>
</s:iterator>
</body>
</html>