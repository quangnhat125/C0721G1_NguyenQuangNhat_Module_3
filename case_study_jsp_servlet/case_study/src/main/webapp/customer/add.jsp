<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 13/10/2021
  Time: 9:47 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Create Customer</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF" crossorigin="anonymous">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

</head>
<body>

<center>
    <h1 class="text-danger">Create Customer</h1>
</center>
<h2>
    <a href="customer?action=customer"><i class="fas fa-arrow-left"></i> Back to Customer Page</a>
</h2>
<h2>
    <a href="/"><i class="fas fa-arrow-left"></i> Back to Home</a>
</h2>
<p class="text-center">
    <c:if test='${requestScope["message"] != null}'>
        <span class="message  text-success">${requestScope["message"]}</span>
    </c:if>
</p>
<div align="center">
    <form action="/customer?action=create" method="post">
        <table border="1" cellpadding="5">
            <tr>
                <th>Customer Name:</th>
                <td>
                    <input type="text" name="name" id="name" size="45" required/>
                </td>
            </tr>
            <tr>
                <th>Customer Birthday:</th>
                <td>
                    <input type="date" name="birthday" id="birthday" size="45" required/>
                </td>
            </tr>
            <tr>
                <th>Gender:</th>
                <td>
                    <input type="radio" name="gender" value="0" size="15"/>Female
                    <input type="radio" name="gender" value="1" size="15"/>Male
                    <input type="radio" name="gender" value="2" size="15"/>LGBT
                </td>
            </tr>
            <tr>
                <th>Customer Code</th>
                <td>
                    <input type="text" name="personCode" id="customerCode" size="15" required/>
                </td>
            </tr>
            <tr>
                <th>Customer ID Card:</th>
                <td>
                    <input type="text" name="idCard" id="idCard" size="45" required/>
                </td>
            </tr>
            <tr>
                <th>Customer Number Phone:</th>
                <td>
                    <input type="text" name="phone" id="phone" size="45" required/>
                </td>
            </tr>
            <tr>
                <th>Customer Email:</th>
                <td>
                    <input type="text" name="email" id="email" size="45" required/>
                </td>
            </tr>
            <tr>
                <th>Customer Address:</th>
                <td>
                    <input type="text" name="address" id="address" size="45" required/>
                </td>
            </tr>
            <tr>
                <th>Customer Type:</th>
                <td>
                    <select class="form-select" name="customer_type_id" aria-label="Default select example" required>
                        <option selected>Choose type of customer</option>
                        <c:forEach var="type" items="${customerType}">
                            <option value="${type.customerTypeID}">${type.customerTypeName}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input class="bg-success" type="submit" name="action" value="Create"/>
                </td>
            </tr>


        </table>

    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kQtW33rZJAHjgefvhyyzcGF3C5TFyBQBA13V1RKPf4uH+bwyzQxZ6CmMZHmNBEfJ"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.min.js"
        integrity="sha384-PsUw7Xwds7x08Ew3exXhqzbhuEYmA2xnwc8BuD6SEr+UmEHlX8/MCltYEodzWA4u"
        crossorigin="anonymous"></script>

</body>
</html>