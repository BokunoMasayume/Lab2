<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String isbn=request.getParameter("isbn");
   String name=request.getParameter("name");
   String title=request.getParameter("title");
   String price=request.getParameter("price");
   String publisher=request.getParameter("publisher");
   String publishdate=request.getParameter("publishdate");
%>
   

ISBN：<%=isbn %>

<form action="updataBo" method="post">
	<div>
		<label for="title">标题： </label>
		<input id="title" name="bookMsg.title" value="<%=title %>" />
	</div>
	<div>
		<label for="name">作者： </label>
		<input id="name" name="name" value="<%=name %>" />
	</div>
	<div>
		<label for="publisher">出版社： </label>
		<input id="publisher" name="bookMsg.publisher" value="<%=publisher %>" />
		
	</div>
	<div>
		<label for="pdate">出版日期： </label>
		<input id="pdate" name="bookMsg.publishDate" value="<%=publishdate %>"/>
		
	</div>
	<div>
		<label for="price">价格： </label>
		<input id="price" name="bookMsg.price" value="<%=price %>"/>
	</div>
	<div>
		<input type="hidden" name="bookMsg.isbn" value="<%=isbn %>"/>
		<input type="submit" value="更&nbsp;新"/>
	</div>
</form>
</body>
</html>