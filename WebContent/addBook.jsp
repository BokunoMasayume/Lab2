<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="addBook" method="post">
<label for="isbn">ISBN: </label>
<input type="text" id="isbn" name="isbn"/>

<label for="title">书名: </label>
<input id="title" name="title" type="text"  />
    
<label for="AID">作者: </label>
<input id="AID" name="authorName" type="text"/>

<label for="publisher">出版社: </label>
<input type="text" name="publisher" id="publisher"/>

<label for="price">价格: </label>
<input type="text" id="price" name="price"/>

<label for="pyear">出版日期</label>
<input type="text" id="pyear" name="pyear"/>
<input type="text" name="pmonth"/>
<input type="text" name="pday" />

<input type="submit" value="添&nbsp;加"/>


</form>
</body>
</html>