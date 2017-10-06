<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="com.testbushu.beans.AuthorBean" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>作&nbsp;家</title>
<style type="text/css">
  body{
  background:#000;
  color:#fff;
  /*font-family: 'PT Sans Narrow', Arial, sans-serif;*/
}
  .author{
    border: 1px solid #ccc;
    border-radius: 5px;
    float:left;
    margin:4%;
    padding:4%;
  }
    a{
  color:#fff;
  text-decoration:none;
}
 .mb_menu{
  position:fixed;
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
 a:hover{
  color:#000;
  background-color:#fff;
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
<s:iterator value="authorList" >
<div class="author" id="<s:property value="id" />">
 <a href="authorHome?au.id=<s:property value="id" />">姓&nbsp;名:&nbsp;<s:property value="name"/></a>
 <br/>
年&nbsp;龄:&nbsp;<s:property value="age"/>
 <br/>
 国&nbsp;籍:&nbsp;<s:property value="country"/>
<br/>
I&nbsp;D:&nbsp;<s:property value="id"/>
<br/>
<a href="UpdAuthor.jsp?id=<s:property value="id" />&name=<s:property value="name"/>&age=<s:property value="age"/>&country=<s:property value="country"/>">&nbsp;&nbsp;&nbsp;&nbsp;更新>></a>
</div>

</s:iterator>

</body>
</html>