<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>更新图书</title>
<style type="text/css">
	* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

.input-group {
    position: relative;
    margin: 30px auto;
    max-width: 960px;
}

.input-group .input {
    width: 400px;
    margin: 0 30px;
    border-radius: 4px;
    height: 36px;
    font-size: 14px;
    color: #555;
    background-color: #FFF;
    border: 1px solid #ccc;
    outline: none;
}

.input-group .error {
   border: 1px solid red; 
}

.input-group .success {
   border: 1px solid green; 
}

#submit {
    margin-left: 600px;
    height: 36px;
    padding: 0 14px;
    background-color: #5a98de;
    border:1px solid #5a98de;
    border-radius: 4px;
    cursor: pointer;
}

.input-group span {
    display: block;
    margin-left: 100px;
    color: #aaa;
}

</style>
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

<form action="updataBo" method="post" onsubmit="return formCheck()">
	<div class="input-group">
		<label for="title">标题： </label>
		<input  class="input" type="text" id="title" name="bookMsg.title" value="<%=title %>" />
		<span id="title-warn"></span>
	</div>
	<div class="input-group">
		<label for="name">作者ID： </label>
		<input  class="input" type="text" id="name" name="name" value="<%=name %>" />
		<span id="name-warn"></span>
	</div>
	<div class="input-group">
		<label for="publisher">出版社： </label>
		<input  class="input" type="text" id="publisher" name="bookMsg.publisher" value="<%=publisher %>" />
		<span id="publisher-warn"></span>
	</div class="input-group">
	<div class="input-group">
		<label for="pdate">出版日期： </label>
		<input  class="input" type="text" id="pdate" name="bookMsg.publishDate" value="<%=publishdate %>"/>
		<span id="date-warn"></span>
	</div>
	<div class="input-group">
		<label for="price">价格： </label>
		<input  class="input" type="text" id="price" name="bookMsg.price" value="<%=price %>"/>
		<span id="price-warn"></span>
	</div>
	
		<input type="hidden" name="bookMsg.isbn" value="<%=isbn %>"/>
		<input type="submit" id="submit" value="更&nbsp;新"/>
	
</form>
<script src="static/js/updateBookCheck.js"></script>
</body>
</html>