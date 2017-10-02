<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String id=request.getParameter("id");
   String name=request.getParameter("name");
   String age=request.getParameter("age");
   String country=request.getParameter("country");
%>

此为ID=<%=id %>的书：<br/>
<form action="updataAu" method="post">
	<div>
		<label for="name">名字：</label>
		<input type="text" id="name" name="authorMsg.name" value="<%=name %>"/>
		
	</div>
	<div>
		<label for="age">年龄：：</label>
		<input type="text" id="age" name="authorMsg.age" value="<%=age %>"/>
		
	</div>
	<div>
		<label for="country">国籍：</label>
		<input type="text" id="country" name="authorMsg.country" value="<%=country %>"/>
		
	</div>
	<div>
		<input type="hidden" name="authorMsg.id" value="<%=id %>"/>
		<input type="submit" value="更新"/>
	</div>
</form>
</body>
</html>