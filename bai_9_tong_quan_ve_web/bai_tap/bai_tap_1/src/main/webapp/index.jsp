<%--
  Created by IntelliJ IDEA.
  User: Alex
  Date: 10/7/2021
  Time: 10:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Product Discount Calculator</title>
  </head>
  <body>
  <h1> PRODUCT DISCOUNT CALCULATOR</h1>
  <form action="/discount" method="post">
    <h3>Product Description:</h3>
    <input type="text" name="productDes" placeholder="Enter product description "/>
    <h3>List Price:</h3>
    <input type="text" name="listPrice" placeholder="Enter list product"/>
    <h3>Discount Percent</h3>
    <input type="text" name="discount" placeholder="Enter discount percent"/>
    <button type="submit">Submit</button>
  </form>
  </body>
</html>
