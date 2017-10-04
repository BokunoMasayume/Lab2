<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="com.testbushu.beans.AuthorBean" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>作&nbsp;家</title>
</head>
<body>
<s:iterator value="authorList" >
<div id="<s:property value="id" />">
 <a href="authorHome?au.id=<s:property value="id" />">name:<s:property value="name"/></a>
 <br/>
 age:<s:property value="age"/>
 <br/>
 country:<s:property value="country"/>
<br/>
<a href="UpdAuthor.jsp?id=<s:property value="id" />&name=<s:property value="name"/>&age=<s:property value="age"/>&country=<s:property value="country"/>">更新</a>
</div>
<hr/>
</s:iterator>

</body>
</html>