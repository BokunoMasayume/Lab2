<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="com.testbushu.beans.BookBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8">  
 <title>图 书</title>
 <style type="text/css">
 body{
 	background-color: black;
 }
a:link,a:visited,a:active{
	text-decoration: none;
	color:white;

}
a:hover{
	text-decoration: none;
	color:white;
	box-shadow: 0 0 5px #D8E3F5;
}

.navigationBar{
    width:10%;
    height:94%;
    margin:3% 0;
    margin-left: 3%;
    padding: 3% 0;
    font-size: 40px;
    /*border-right:  2px solid white;*/
    float:left;
}

#query ,#book,#author{
	text-align: center;
	border-radius: 5%;
}
#book{
	/*background-color: #D4CBCB;*/
	/*border-radius: 2%;*/
	color:white;
	box-shadow: 0 0 5px #D8E3F5;
}

#bigList{
	/*background-color: #D8E3F5;*/
	background-color: black;
	float:left;
	margin:3% 0;
	margin-right: 3%;
	width:83%;
	height:98%;
	border-radius: 2%;
	position:relative;
	box-shadow: 0 0 5px #D8E3F5;
	color:white;
}


</style>
</head>
<body>
	<div class = "navigationBar">
		<div id = "query">
			<a href="search.html">&nbsp;&nbsp;查&nbsp;询&nbsp;&nbsp;</a>
		</div>

		
		<div id = "book">
			<a href="books.jsp">&nbsp;&nbsp;图&nbsp;书&nbsp;&nbsp;</a>
		</div>

		<div id = "author">
			<a href="showAu.action">&nbsp;&nbsp;s作&nbsp;家&nbsp;&nbsp;</a>
		</div>
	</div>


    <div id = "bigList">
    <s:iterator value="bookList">
       <div id="<s:property value="isbn"/>">
    isbn: <s:property value="isbn"/>
    Title: <s:property value="title"/>
    Price: <s:property value="price"/>
    authorID: <s:property value="authorID"/>
    publisher:  <s:property value="publisher"/>
    publishdate:  <s:property value="publishDate"/>
    <br/>
    作者信息：<br/>
    name: <s:property value="author.name"/>
    <br/>
    <a href="UpdBook.jsp?isbn=<s:property value="isbn"/>&name=<s:property value="author.name"/>&title=<s:property value="title"/>&price=<s:property value="price"/>&publisher=<s:property value="publisher"/>&publishdate=<s:property value="publishDate"/>" >更新</a>
    <br/>
    <a href="deleteBo.action?isbn=<s:property value="isbn"/>" >删除</a>
   
       </div>
       <hr/>
    </s:iterator>
    </div>
</body>
</html>