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
  background:#fff;
  color:#000;
  /*font-family: 'PT Sans Narrow', Arial, sans-serif;*/
}
  .book{
    border: 1px solid #ccc;
    border-radius: 5px;
    float:left;
    margin:4%;
    padding:0;
    position:relative;
  }
  a{

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
 .mb_menu a:hover{
  color:#000;
  background-color:#fff;
}
  .focus-show{
    position:absolute;
    width:100%;
    bottom: 0;
    padding-bottom:5%;
    display: none;
  }
  .up{
    padding:5% 10%;
  }
  .down{
    /*background-color:black;*/
    padding:5% 10%;
  }
  .mouseon{
    background-color:black;
  }
  .box{
  z-index:999;
    display: none;
    background-color:rgba(95,95,95,0.8);
    position:fixed;
    left:0;
    top:0;
    height:100%;
    width:100%;
  }
  .details{
    z-index:999;
    display: none;
    background-color: white;
    position:fixed;
    left:20%;
    top:10%;
    width:60%;
    height: auto;
    border:2px solid black;
  }
</style>
</head>
<body>
    <script src="static/js/jquery-1.3.1.js"></script>
  <script src="static/js/book.js"></script>
	<div id="mb_menu" class="mb_menu">
      <a href="search.jsp" data-speed="1000" data-easing="easeOutBack">搜&nbsp;&nbsp;索</a>
      <a href="showBo.action" data-speed="1000" data-easing="easeInExpo">图&nbsp;&nbsp;书</a>
      <a href="showAu.action" data-speed="1000" data-easing="easeOutBack">作&nbsp;&nbsp;家</a>
      <a href="addAuthor.jsp" data-speed="1000" data-easing="easeInExpo">添加作家</a>
      <a href="addBook.jsp" data-speed="1000" data-easing="easeOutBack">添加图书</a>
    </div>
    <s:iterator value="bookList">
       <div class="book" id="<s:property value="isbn"/>">
    <!-- isbn: <s:property value="isbn"/> -->
            <div class="up">
                书&nbsp;&nbsp;名:&nbsp; <s:property value="title"/>

                
            </div>
            <div class="box"></div>
            <div class="details">
                        ISBN:&nbsp;<s:property value="isbn"/><br/>
                        书&nbsp;&nbsp;名:&nbsp; <s:property value="title"/><br/>
                        出版社:&nbsp; <s:property value="publisher"/><br/>
                        出版日期:&nbsp; <s:property value="publishDate"/><br/>
                        价&nbsp;&nbsp;格:&nbsp;<s:property value="price"/>
                        <hr/>
                        <h3>作者信息</h3>
                        姓&nbsp;&nbsp;名:&nbsp;<s:property value="author.name"/><br/>
                        年&nbsp;&nbsp;龄:&nbsp;<s:property value="author.age"/><br/>
                        国&nbsp;&nbsp;籍:&nbsp;<s:property value="author.country"/><br/>
       I&nbsp;&nbsp;D:&nbsp;<s:property value="author.id"/>
                    </div>
            <div class="down">
              
                出版社:&nbsp; <s:property value="publisher"/><br/>
                价&nbsp;&nbsp;格:&nbsp;<s:property value="price"/>
            </div>
            <div class="focus-show"><br/><br/>
                &nbsp;&nbsp;&nbsp;<a href="UpdBook.jsp?isbn=<s:property value="isbn"/>&name=<s:property value="author.id"/>&title=<s:property value="title"/>&price=<s:property value="price"/>&publisher=<s:property value="publisher"/>&publishdate=<s:property value="publishDate"/>" >更新</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                 <a href="deleteBo.action?isbn=<s:property value="isbn"/>" >删除</a>
             </div>
         </div>
   
       
    </s:iterator>
   
</body>
</html>