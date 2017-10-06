<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="com.testbushu.beans.BookBean" %>
<%@ page import="com.testbushu.beans.AuthorBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>作家主页</title>
<style type="text/css">
  body{
    margin: 0 0;
    padding: 0 0;
  }
  #author{
    position:fixed;
    border-radius: 4px;
    width:15%;
    height:auto;
    padding: 1% 1%;
    border: 1px solid #ccc;
    margin: 10px 10px;
    margin-left: 5%;
    margin-top: 5%;
  }

  #works-box{
    position:absolute;
    left:25%;
    width:55%;
    height:100%;
    padding: 5% 1%;
    /*border: 1px solid #ccc;*/
    margin: 10px 10px;
  }
  .work{
    float:left;
    border: 1px solid #ccc;
    padding: 3% 6%;
    margin-left: 13%;
    margin-top: 40px;
    border-radius: 4px;
  }
</style>
</head>
<body>
<div id="author">
	name:<s:property value="au.name"/><br/>
	age:<s:property value="au.age"/><br/>
	country:<s:property value="au.country"/>
</div>
<div id="works-box">
<s:iterator value="boList">
	<div class="work" id="<s:property value="isbn"/>">
	isbn:<s:property value="isbn"/><br/>
	title:<s:property value="title"/><br/>
	publisher:<s:property value="publisher"/>
	</div>
</s:iterator>
</div>
</body>
</html>