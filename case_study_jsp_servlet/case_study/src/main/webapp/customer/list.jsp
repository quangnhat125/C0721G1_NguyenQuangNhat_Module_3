<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 13/10/2021
  Time: 8:40 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Customer Page</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF" crossorigin="anonymous">

    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="/assert/bootstrap413/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assert/datatables/css/dataTables.bootstrap4.min.css">
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <%--        <div class="col-12">--%>
        <%--            <jsp:include page="../common/header.jsp"></jsp:include>--%>
        <%--        </div>--%>
    </div>
    <div class="row bg-secondary">
        <div class="col-12">
            <ul class="nav justify-content-center">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/customer?action=create">Add Customer </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><select id="select" class="form-select form-select-sm mb-3"
                                                         aria-label=".form-select-lg example">--%>
                        <option selected>Choose type of search</option>
                        <option value="1">Name</option>
                        <option value="2">Gender</option>
                        <option value="3">Address</option>
                        <option value="4">Type of Customer</option>
                    </select> </a>
                </li>
                <li class="nav-item">
                    <form class="d-flex">
                        <input type="hidden" name="action" value="search">
                        <input type="hidden" name="idSearch" value="" id="idSearch">
                        <input class="form-control me-2" name="search" id="search" type="search" placeholder="Search"
                               aria-label="Search">
                        <input onclick="onSearch()" type="submit" class="btn btn-outline-primary" value="Search">
                    </form>
                </li>
            </ul>
        </div>
    </div>
    <div class="row text-center bg-primary">
        <div class="col-12"><h2>List of Customer</h2></div>
    </div>
    <div class="row">
        <div class="col-1">
            <p class="text-center">
                <c:if test='${requestScope["message"] != null}'>
                    <span class="message  text-danger">${requestScope["message"]}</span>
                </c:if>
            </p></div>
        <div class="col-11">
            <table id="tableCustomer" style="display: inline-block; width: 100%; overflow-x: auto"
                   class="table table-striped">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Code</th>
                    <th>Name</th>
                    <th>Birthday</th>
                    <th>Gender</th>
                    <th>ID Card</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Customer Type</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="customer" items="${customerList}">
                    <tr>
                        <td><c:out value="${customer.id}"/></td>
                        <td><c:out value="${customer.personCode}"/></td>
                        <td><c:out value="${customer.fullName}"/></td>
                        <td><c:out value="${customer.birthday}"/></td>
                        <td><c:out value="${customer.phoneNumber}"/></td>
                        <td><c:out value="${customer.email}"/></td>
                        <td><c:out value="${customer.address}"/></td>
                        <td>
                            <c:choose>
                                <c:when test="${customer.gender==1}">Male</c:when>
                                <c:when test="${customer.gender==0}">Female</c:when>
                                <c:otherwise>Other</c:otherwise>
                            </c:choose>
                        </td>
                        <td><c:out value="${customer.idCard}"/></td>
                        <td>
                            <c:choose>
                                <c:when test="${customer.customer_type==1}">Diamond</c:when>
                                <c:when test="${customer.customer_type==2}">Platinium</c:when>
                                <c:when test="${customer.customer_type==3}">Gold</c:when>
                                <c:when test="${customer.customer_type==4}">Silver</c:when>
                                <c:when test="${customer.customer_type==5}">Member</c:when>
                            </c:choose>
                        </td>
                        <td>
                            <a href="/customer?action=edit&id_edit=${customer.id}">
                                <button class="btn btn-primary" type="button">Edit
                                </button>
                            </a>
                        </td>
                        <td>
                            <button onclick="onDelete('${customer.id}')" type="button" class="btn btn-danger"
                                    data-toggle="modal" data-target="#modelId">Delete
                            </button>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <h1 class="text-primary text-center">${messageFind}</h1>

    </div>
</div>
<!-- Modal -->
<div class="modal fade" id="modelId" tabindex="-1" role="dialog" aria-labelledby="modelTitleId"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Confirm Delete</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="/customer?action=delete">
                <input type="hidden" name="action" value="delete">
                <input type="hidden" name="idCustomer" id="idCustomer">
                <div class="modal-body">
                    <div class="container-fluid">
                        Are you sure to delete?
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-danger">Delete</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="/assert/jquery/jquery-3.5.1.min.js"></script>
<script src="/assert/bootstrap413/js/popper.min.js"></script>
<script src="/assert/datatables/js/jquery.dataTables.min.js"></script>
<script src="/assert/datatables/js/dataTables.bootstrap4.min.js"></script>
<script src="/assert/bootstrap413/js/bootstrap.min.js"></script>
<script src="/assert/bootstrap413/js/bootstrap.bundle.js"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kQtW33rZJAHjgefvhyyzcGF3C5TFyBQBA13V1RKPf4uH+bwyzQxZ6CmMZHmNBEfJ"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.min.js"
        integrity="sha384-PsUw7Xwds7x08Ew3exXhqzbhuEYmA2xnwc8BuD6SEr+UmEHlX8/MCltYEodzWA4u"
        crossorigin="anonymous"></script>
<script>
    function onDelete(id) {
        document.getElementById("idCustomer").value = id;
    }

    function onSearch() {
        let a = document.getElementById("select").value;
        document.getElementById("idSearch").value = a;
    }

    $(document).ready(function () {
        $('#tableCustomer').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5
        });
    });

    $('#exampleModal').on('show.bs.modal', event => {
        var button = $(event.relatedTarget);
        var modal = $(this);
    });
</script>

</body>
</html>