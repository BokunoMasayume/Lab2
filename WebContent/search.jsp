<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="com.testbushu.beans.AuthorBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8">  
 <title>查询作家</title>
 <style type="text/css">
 body{
 	background-color:black;
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
#query{
	/*background-color: #D4CBCB;*/
	/*border-radius: 2%;*/
	color:white;
	box-shadow: 0 0 5px #D8E3F5;
}
#book{
	/*border-top: 2px solid #D4CBCB;*/
	/*border-bottom:  2px solid #D4CBCB;*/
}
#bigSearch{
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
}
#search{
	/*border :3px solid black;*/
	position:absolute;
	top:100px;
	left:25%;
	width: 50%;
	padding-left:1%;
	padding-top: 10px;
}
#searchText{
	height:40px;
	width:75%;
	/*color:#C1BCBC;*/
	border-radius: 5%;
	font-size: 120%;
}
#searchText:focus{
    border-radius: 5%;
}
#searchSubmit{
	height:44px;
	width:auto;
	border-radius: 50%;
	position:absolute;
	top:11px;
	left:72%;
	/*border-top: 1px solid #BFBDBD;*/
}
#result{
    color:white;
    position:absolute;
    top:400px;
    left:10%;
    /*box-shadow: 0 0 5px #D8E3F5;*/
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
			<a href="#">&nbsp;&nbsp;作&nbsp;家&nbsp;&nbsp;</a>
		</div>
	</div>


    <div id = "bigSearch">
    	
	<div id="search">
		
		<form action="searchAuthorByName" method="post">
			<input id="searchText" type="text" name="seaStr" value="输入作家"/>
			<input id="searchSubmit" type="image" src="static/sea.png" alt="搜&nbsp索" width="50" height="50"/>
		</form>
	</div>
    
    <s:if test="isResult">
    <div id="result">
    <s:if test="hasAuthor">
        <s:iterator value="aaaList">
            <form action="authorHome" method="post">
            <input type=hidden name="id" value="<s:property value="id"/>"/>
            <input type=submit value="<s:property value="name"/>"/>
            </form>
        </s:iterator>
     </s:if>
     
     <s:else>
            米有搜索结果
     </s:else>
    </div>
    </s:if>

    </div>

</body>
</html>