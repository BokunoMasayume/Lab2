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
  background:#000;
  color:#fff;
  /*font-family: 'PT Sans Narrow', Arial, sans-serif;*/
}
a{
  color:#fff;
  text-decoration:none;
}
 .mb_menu{
  position:absolute;
  top:100px;
  left:0px;
  z-index:11;
}
.mb_menu a{
  background-color:#000;
  margin-bottom:2px;
  opacity:0.9;
  display:block;
  width:98px;
  height:98px;
  color:#fff;
  line-height:98px;
  text-align:center;
  text-transform:uppercase;
  outline:none;
  -webkit-transition: all 0.2s ease-in;
  -moz-transition:all 0.2s ease-in;
  -o-transition: all 0.2s ease-in;
  -transition: all 0.2s ease-in;
}
.mb_menu a:hover{
  color:#000;
  background-color:#fff;
}
#bigSearch{
	background-color: red;
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
	left:40%;
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
	<div id="mb_menu" class="mb_menu">
      <a href="search.jsp" data-speed="1000" data-easing="easeOutBack">搜&nbsp;&nbsp;索</a>
      <a href="showBo.action" data-speed="1000" data-easing="easeInExpo">图&nbsp;&nbsp;书</a>
      <a href="showAu.action" data-speed="1000" data-easing="easeOutBack">作&nbsp;&nbsp;家</a>
      <a href="addAuthor.jsp" data-speed="1000" data-easing="easeInExpo">添加作家</a>
      <a href="addBook.jsp" data-speed="1000" data-easing="easeOutBack">添加图书</a>
    </div>


    <div id = "bigSearch">
    	
	<div id="search">
		
		<form action="searchAuthorByName" method="post">
			<input id="searchText" type="text" name="seaStr" value="输入作家"/>
			<input id="searchSubmit" type="image" src="static/sea.png" alt="搜&nbsp;索" width="50" height="50"/>
		</form>
	</div>
    
    <s:if test="isResult">
    <div id="result">
    <s:if test="hasAuthor">
        <s:iterator value="aaaList">
            <form action="authorHome" method="post">
            <input type=hidden name="au.id" value="<s:property value="id"/>"/>
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