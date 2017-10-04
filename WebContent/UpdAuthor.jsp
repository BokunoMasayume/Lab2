<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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


.input-group span {
    display: block;
    margin-left: 100px;
    color: #aaa;
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
form{
    position:absolute;
    top:20%;
    left:30%;
}
</style>
</head>
<body>
<% String id=request.getParameter("id");
   String name=request.getParameter("name");
   String age=request.getParameter("age");
   String country=request.getParameter("country");
%>

此为ID=<%=id %>的书：<br/>
<form action="updataAu" method="post" onsubmit="return formCheck()">
	<div class="input-group">
		<label for="name">名字：</label>
		<input class="input" type="text" id="name" name="authorMsg.name" value="<%=name %>"/>
		<span id="name-warn"></span>
	</div>
	<div class="input-group">
		<label for="age">年龄：：</label>
		<input class="input" type="text" id="age" name="authorMsg.age" value="<%=age %>"/>
		<span id="age-warn"></span>
	</div>
	<div class="input-group">
		<label for="country">国籍：</label>
		<input class="input" type="text" id="country" name="authorMsg.country" value="<%=country %>"/>
		<span id="country-warn"></span>
	</div>
	
		<input type="hidden" name="authorMsg.id" value="<%=id %>"/>
		<input id="submit" type="submit" value="更新"/>
	
</form>
<script src="static/js/updateAuthorCheck.js"></script>
</body>
</html>