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
                    <a class="nav-link" href="/service?action=create">Add Service </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><select id="select" class="form-select form-select-sm mb-3"
                                                         aria-label=".form-select-lg example">--%>
                        <option selected>Choose type of search</option>
                        <option value="1">Id</option>
                        <option value="2">Name</option>
                        <option value="3">Date of birth</option>
                        <option value="4">Gender</option>
                        <option value="5">ID Card</option>
                        <option value="6">Number Phone</option>
                        <option value="7">Email</option>
                        <option value="8">Address</option>
                        <option value="9">Type of Customer</option>
                    </select> </a>
                </li>
                <li class="nav-item">
                    <form class="d-flex">
                        <input type="hidden" name="action" value="search">
                        <input type="hidden" name="idSearch" value="" id="idSearch">
                        <%--               <input type="hidden" name="content_search" value="" id="content_search">--%>
                        <input class="form-control me-2" name="search" id="search" type="search" placeholder="Search"
                               aria-label="Search">
                        <input onclick="onSearch()" type="submit" class="btn btn-outline-primary" value="Search">
                    </form>
                </li>
            </ul>
        </div>
    </div>
    <div class="row text-center bg-primary">
        <div class=col-12><h2>List of Service</h2></div>
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
                    <th>Area</th>
                    <th>Cost</th>
                    <th>Max People</th>
                    <th>Rent Type</th>
                    <th>Service Type</th>
                    <th>Standard Room</th>
                    <th>Description Other Convenience</th>
                    <th>Pool</th>
                    <th>Number Of Floor</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="service" items="${serviceList}">
                    <tr>
                        <td><c:out value="${service.serviceId}"/></td>
                        <td><c:out value="${service.serviceCode}"/></td>
                        <td><c:out value="${service.serviceName}"/></td>
                        <td><c:out value="${service.serviceArea}"/></td>
                        <td><c:out value="${service.serviceCost}"/></td>
                        <td><c:out value="${service.serviceMaxPeople}"/></td>
                        <td>
                            <c:choose>
                                <c:when test="${service.rentTypeId==1}">Năm</c:when>
                                <c:when test="${service.rentTypeId==2}">Tháng</c:when>
                                <c:when test="${service.rentTypeId==3}">Ngày</c:when>
                                <c:when test="${service.rentTypeId==4}">Giờ</c:when>
                                <c:otherwise>Other</c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${service.serviceType==1}">Villa</c:when>
                                <c:when test="${service.serviceType==2}">House</c:when>
                                <c:when test="${service.serviceType==3}">Room</c:when>
                                <c:otherwise>Type</c:otherwise>
                            </c:choose>
                        </td>
                        <td><c:out value="${service.standardRoom}"/></td>
                        <td><c:out value="${service.descriptionConvenience}"/></td>
                        <td><c:out value="${service.poolArea}"/></td>
                        <td><c:out value="${service.numberFloor}"/></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <h1 class="text-primary text-center">${messageFind}</h1>

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

    // function onSearch() {
    //     let a = document.getElementById("select").value;
    //     let b = document.getElementById("search").value;
    //     document.getElementById("idSearch").value = a;
    //     document.getElementById("content_search").value = b;
    // }

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