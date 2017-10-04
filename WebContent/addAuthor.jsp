<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加作家</title>
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

<form action="addAuthor" method="post" onsubmit="return formCheck()">
	<div class="input-group">
		<label for="name">姓&nbsp;&nbsp;名</label>
		<input id="name" class="input" type="text"  name="name" value="<s:property value="authorName"/>"/>
		<span id="name-warn"></span>
    </div>

    <div class="input-group">
    	<label for="age">年&nbsp;&nbsp;龄</label>
		<input id="age" class="input" type="text" name="age" />
		<span id="age-warn"></span>
	</div>

	<div class="input-group">
		<label for="country">国&nbsp;&nbsp;籍</label>
		<input id="country" class="input" type="text" name="country"/>
		<span id="country-warn"></span>
	</div>
		<input type="submit" id="submit" value="添&nbsp;&nbsp;加"/>
</form>
 
	<script src="static/js/addAuthorCheck.js"></script>

</body>
</html>