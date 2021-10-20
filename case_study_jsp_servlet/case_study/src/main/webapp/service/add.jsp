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
    <h1 class="text-danger">Add Service</h1>
</center>
<h2>
    <a href="service?action=service"><i class="fas fa-arrow-left"></i> Back to Service Page</a>
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
    <form action="/service?action=create" method="post">
        <table border="1" cellpadding="5">
            <tr>
                <th>Service Code:</th>
                <td>
                    <input type="text" name="serviceCode" id="serviceCode" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Service Name:</th>
                <td>
                    <input type="text" name="name" id="name" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Service Area:</th>
                <td>
                    <input type="text" name="area" id="area" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Service Cost:</th>
                <td>
                    <input type="text" name="cost" id="cost" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Service Max People:</th>
                <td>
                    <input type="text" name="maxPeople" id="maxPeople" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Rent Type:</th>
                <td>
                    <input type="radio" name="rentType" value="1" size="15"/>Năm
                    <input type="radio" name="rentType" value="2" size="15"/>Tháng
                    <input type="radio" name="rentType" value="3" size="15"/>Ngày
                    <input type="radio" name="rentType" value="4" size="15"/>Giờ
                </td>
            </tr>
            <tr>
                <th>Service Type:</th>
                <td>
                    <input type="radio" name="serviceType" value="1" size="15"/>Villa
                    <input type="radio" name="serviceType" value="2" size="15"/>House
                    <input type="radio" name="serviceType" value="3" size="15"/>Room
                </td>
            </tr>
            <tr>
                <th>Standard Room</th>
                <td>
                    <input type="text" name="standardRoom" id="standardRoom" size="15"/>
                </td>
            </tr>
            <tr>
                <th>Description other convenience</th>
                <td>
                    <input type="text" name="description" id="description" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Pool Area:</th>
                <td>
                    <input type="text" name="pool" id="pool" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Number Of Floor:</th>
                <td>
                    <input type="text" name="floor" id="floor" size="45"/>
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
        integrity="sha384-kQtW33rZJAHjgefvhyyzcGF3C5TFyBQBA13V1RKPf4uH+bwyzQxZ6CmMZHmNBEfJ"s
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.min.js"
        integrity="sha384-PsUw7Xwds7x08Ew3exXhqzbhuEYmA2xnwc8BuD6SEr+UmEHlX8/MCltYEodzWA4u"
        crossorigin="anonymous"></script>

</body>
</html>