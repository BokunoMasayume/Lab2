<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加作家</title>
</head>
<body>
<form action="addAuthor" method="post" >
<input type="text"  name="name" value="<s:property value="authorName"/>"/>
<input type="text" value="年龄" name="age"/>
<input type="text" value="国籍" name="country"/>
<input type="submit" value="添加"/>
</form>
</body>
</html>