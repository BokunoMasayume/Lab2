<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加图书</title>
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
#pyear,#pday,#pmonth{
	width: 60px ;
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
.mb_menu a:hover{
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
<form action="addBook" method="post" onsubmit="return formCheck()">
	<div class="input-group">
		<label for="isbn">ISBN: </label>
		<input class="input" type="text" id="isbn" name="isbn"/>
		<span id="isbn-warn"></span>
	</div>
	<div class="input-group">
		<label for="title">书名: </label>
		<input class="input" id="title" name="title" type="text"  />
		<span id="title-warn"></span>
	</div>
	<div class="input-group">
		<label for="name">作者ID: </label>
		<input class="input" id="name" name="authorName" type="text"/>
		<span id="name-warn"></span>
	</div>
	<div class="input-group">
		<label for="publisher">出版社: </label>
		<input class="input" type="text" name="publisher" id="publisher"/>
		<span id="publisher-warn"></span>
	</div>
	<div class="input-group">
		<label for="price">价格: </label>
		<input class="input" type="text" id="price" name="price"/>
		<span id="price-warn"></span>
	</div>
	<div class="input-group">
		<label for="pyear">出版日期&nbsp;&nbsp;&nbsp;年</label>
		<input class="input" type="text" id="pyear" name="pyear"/>

		<label for="pmonth">月</label>
		<input class="input" type="text" id="pmonth" name="pmonth"/>

		<label for="pday">日 </label>
		<input class="input" type="text" id="pday" name="pday" />
		<span id="date-warn"></span>
	</div>

<input type="submit" id="submit" value="添&nbsp;加"/>


</form>
<script src="static/js/addBookCheck.js"></script>
</body>
</html>