<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>操作成功</title>
</head>
<body>
SUCCESS<br/>
<script type="text/javascript"> 
var t=4;//设定跳转的时间 
setInterval("refer()",1000); //启动1秒定时 
function refer(){  
    if(t==0){ 
        location="http://47.104.1.55:8888/test-bushu/";  
    } 
    document.getElementById('show').innerHTML=""+t+"秒后跳转到主页";  
    t--;  
   
} 
</script> 
<span id="show"></span> 
</body>
</html>