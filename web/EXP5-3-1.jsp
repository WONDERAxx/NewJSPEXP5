<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Map<String,String> map=new HashMap();
map.put("baidu","http://baidu.com");
map.put("yahoo","http://cn.yahoo.com");
map.put("google","http://google.com");
request.setAttribute("map",map);
%>
<table border="1">
<c:forEach items="${map }" var="entry">
<c:out value="${entry.key }" />
<c:out value="${entry.value }" />
<br/>
</c:forEach></table>
</body>
</html>