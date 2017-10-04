<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>欢迎--主页</title>
 <style type="text/css">
 body{
 	background-color:black;

 }
#welcome{
	font-size:100px;
	color:#BEBCC7;
	padding-left: 5%;
	/*text-shadow: 5px 5px 3px white;*/

}
#query,#books,#authors{
	font-size:75px;
	padding:1%;
	background-color:#B2CDDB;
	margin:4%;
	width: 20%;
	height:50%;
	float:left;
	/*border:3px solid white;*/
	border-radius: 3%;
	box-shadow: 0 0 8px white;
    text-align: center;
    line-height: 200%;
}
#query{
	margin-left: 8%;
}
hr{
	width:90%;
}
a:link,a:visited,a:active{
	text-decoration: none;
	color:black;

}
a:hover{
	text-decoration: none;
	color:#5E5C5C;
}
</style>

</head>
<body>
	<!-- welcome words -->
	<div id = "welcome">
		Welcome!
	</div>

    <hr/>
<a href="addAuthor.jsp">添加user </a>
	<div id = "query">
		<a href="search.jsp">查<br/>询</a>
	</div>
	<div id = "books">
		<a href="showBo.action">图<br/>书</a>
	</div>
	<div id = "authors">
		<a href="showAu.action">作<br/>家</a>
	</div>
</body>
</html>