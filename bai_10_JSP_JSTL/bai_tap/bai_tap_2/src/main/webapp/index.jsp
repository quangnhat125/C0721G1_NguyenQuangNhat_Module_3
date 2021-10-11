<%--
  Created by IntelliJ IDEA.
  User: Alex
  Date: 10/10/2021
  Time: 3:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>model.Calculator</title>
</head>
<body>
<h1>SIMPLE CALCULATOR</h1>
<form action="/calculate" method="post">
    <fieldset>
        <legend>model.Calculator</legend>
        <table>
            <tr>
                <td>First Operand:</td>
                <td><input type="text" name="number-1"/></td>
            </tr>
            <tr>
                <td>Operator: </td>
                <td>
                    <select name="operator">
                        <option value="+">Addition</option>
                        <option value="-">Subtraction</option>
                        <option value="*">Multiplication</option>
                        <option value="/">Division</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Second Operand: </td>
                <td><input type="text" name="number-2"></td>
            </tr>
            <tr>
                <td></td>
                <td><button type="submit">Calculate</button> </td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
