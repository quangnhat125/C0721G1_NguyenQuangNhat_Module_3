<%--
  Created by IntelliJ IDEA.
  User: Alex
  Date: 10/7/2021
  Time: 10:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Simple Dictionary</title>
  </head>
  <body>
  <h2>Vietnamese Dictionary</h2>
  <form action="/translate" method="post">
    <input type="text" name="wordSearch" placeholder="Enter your word: "/>
    <button type="submit" id="submit">Submit</button>
  </form>
  </body>
</html>
