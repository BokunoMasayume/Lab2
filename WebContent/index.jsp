<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>欢迎--主页</title>
 <style type="text/css">
body{
  background:#000;
  color:#fff;
  /*font-family: 'PT Sans Narrow', Arial, sans-serif;*/
}
#welcome{
	font-size:100px;
	color:#BEBCC7;
	padding-left: 5%;
	/*text-shadow: 5px 5px 3px white;*/

}
  a{
  color:#fff;
  text-decoration:none;
}
 .mb_menu{
  position:fixed;
  top:60px;
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
.mb_heading h1{
	position:absolute;
	top:10px;
	left:90px;
	font-size:86px;
	color:#000;
	text-shadow:0px 0px 1px #fff;
	font-family:"Astloch", Arial, sans-serif;
	z-index:4;
}
img.mb_bgimage{
	position:fixed;
	left:0px;
	top:0px;
	width:100%;
	opacity:0.8;
	z-index:1;
}
.mb_overlay{
	width:100%;
	height:100%;
	position:fixed;
	top:0px;
	left:0px;
	background:transparent url(../images/pattern.png) repeat top left;
	z-index:2;
}
/*.readme{
position:fixed;
bottom:10px;
right:10px;
z-index:999;}*/
</style>

</head>
<body>
<div id="mb_background" class="mb_background">
			<img class="mb_bgimage" src="static/default.jpg" alt="Background"/>
			<div class="mb_overlay"></div>
			<div class="mb_loading"></div>
		</div>
	<!-- welcome words -->
	<div class="mb_heading">
			<h1>Welcome!</h1>
		</div>

   <div id="mb_menu" class="mb_menu">
      <a href="search.jsp" data-speed="1000" data-easing="easeOutBack">搜&nbsp;&nbsp;索</a>
      <a href="showBo.action" data-speed="1000" data-easing="easeInExpo">图&nbsp;&nbsp;书</a>
      <a href="showAu.action" data-speed="1000" data-easing="easeOutBack">作&nbsp;&nbsp;家</a>
      <a href="addAuthor.jsp" data-speed="1000" data-easing="easeInExpo">添加作家</a>
      <a href="addBook.jsp" data-speed="1000" data-easing="easeOutBack">添加图书</a>
    </div>
    
    <!--<div class="readme"><a href="readme.jsp">说明文档</a></div>-->
</body>
</html>