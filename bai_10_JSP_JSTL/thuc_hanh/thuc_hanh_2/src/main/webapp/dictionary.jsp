<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: Alex
  Date: 10/10/2021
  Time: 2:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%! Map<String, String> dictionary = new HashMap<>();
%>
<%
    dictionary.put("hello", "Xin chào");
    dictionary.put("book", "quyển sách");
    dictionary.put("love", "tình yêu");
    dictionary.put("computer", "máy tính");
    dictionary.put("how", "thế nào");
    String search = request.getParameter("search");

    String result = dictionary.get(search);
    if (result != null ) {
        System.out.println("Word: " + search);
        System.out.println("Result: " + result);
    } else {
        System.out.println("Not found!");
    }
%>
</body>
</html>
