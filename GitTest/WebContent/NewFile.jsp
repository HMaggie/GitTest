<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript">
<script>
function loadXMLDoc()
{
  var xmlhttp;
  if (window.XMLHttpRequest)
  {
    // IE7, Firefox, Chrome, Opera, Safari 浏览器执行代码
    xmlhttp=new XMLHttpRequest();
  }
  else
  {
    // IE6, IE5 浏览器执行代码
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
  xmlhttp.open("GET","http://tingapi.ting.baidu.com/v1/restserver/ting?from=android&version=5.6.5.0&method=baidu.ting.search.catalogSug&format=json&query=告白气球",false);
  xmlhttp.send();
  document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
}
</script>
</head>
<body>

<div id="myDiv"><h2>使用 Ajax 修改内容</h2></div>
<button type="button" onclick="loadXMLDoc()">修改内容</button>

</body>
</html>