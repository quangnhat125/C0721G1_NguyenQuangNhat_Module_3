<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: Administrator--%>
<%--  Date: 11/10/2021--%>
<%--  Time: 8:47 CH--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<!doctype html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <title>Furama Resort</title>--%>
<%--    <!-- Required meta tags -->--%>
<%--    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">--%>

<%--    <!-- Bootstrap CSS -->--%>
<%--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"--%>
<%--          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"--%>
<%--          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">--%>
<%--    <link rel="stylesheet" href="/assert/bootstrap413/css/bootstrap.min.css">--%>
<%--    <link rel="stylesheet" href="/assert/datatables/css/dataTables.bootstrap4.min.css">--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="row">--%>
<%--    <div class="col-12">--%>
<%--        <jsp:include page="/common/header.jsp"></jsp:include>--%>
<%--    </div>--%>
<%--</div>--%>
<%--<div class="row ">--%>
<%--    <div class="col-12 ">--%>
<%--        <nav class="navbar navbar-expand-lg navbar-light bg-warning">--%>
<%--            <a class="navbar-brand" href="#">C0721G1</a>--%>
<%--            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"--%>
<%--                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">--%>
<%--                <span class="navbar-toggler-icon"></span>--%>
<%--            </button>--%>

<%--            <div class="collapse navbar-collapse" id="navbarSupportedContent">--%>
<%--                <ul class="navbar-nav mr-auto">--%>
<%--                    <li class="nav-item active">--%>
<%--                        <a class="nav-link" href="/">Home</a>--%>
<%--                    </li>--%>
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link" href="/employee?action=employee">Employee</a>--%>
<%--                    </li>--%>
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link" href="/customers?action=customer">Customer</a>--%>
<%--                    </li>--%>
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link" href="/service?action=service">Service</a>--%>
<%--                    </li>--%>
<%--                    <li class="nav-item dropdown">--%>
<%--                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"--%>
<%--                           aria-haspopup="true" aria-expanded="false">--%>
<%--                            Contract--%>
<%--                        </a>--%>
<%--                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">--%>
<%--                            <a class="dropdown-item" href="/contract?action=contract">Contract List</a>--%>
<%--                            <a class="dropdown-item" href="/contract_detail?action=contract_detailt">Contract Detail List</a>--%>
<%--                            &lt;%&ndash;                            <div class="dropdown-divider"></div>&ndash;%&gt;--%>
<%--                            <a class="dropdown-item" href="/customer_using?action=customer_using">List of Customer Using Service</a>--%>
<%--                        </div>--%>
<%--                    </li>--%>

<%--                </ul>--%>
<%--                <form class="form-inline my-2 my-lg-0">--%>
<%--                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">--%>
<%--                    <button class="btn btn-outline-light my-2 my-sm-0" >Search</button>--%>
<%--                </form>--%>
<%--            </div>--%>
<%--        </nav>--%>

<%--    </div>--%>
<%--    &lt;%&ndash;</div>&ndash;%&gt;--%>
<%--    &lt;%&ndash;<div class="row bg-secondary">&ndash;%&gt;--%>
<%--    &lt;%&ndash;    <div class="col-12">&ndash;%&gt;--%>
<%--    &lt;%&ndash;        <ul class="nav justify-content-center">&ndash;%&gt;--%>
<%--    &lt;%&ndash;            <li class="nav-item">&ndash;%&gt;--%>
<%--    &lt;%&ndash;                <a class="nav-link active" aria-current="page" href="/">Home</a>&ndash;%&gt;--%>
<%--    &lt;%&ndash;            </li>&ndash;%&gt;--%>
<%--    &lt;%&ndash;            <li class="nav-item">&ndash;%&gt;--%>
<%--    &lt;%&ndash;                <a class="nav-link" href="/employee?action=employee">Employee</a>&ndash;%&gt;--%>
<%--    &lt;%&ndash;            </li>&ndash;%&gt;--%>
<%--    &lt;%&ndash;            <li class="nav-item">&ndash;%&gt;--%>
<%--    &lt;%&ndash;                <a class="nav-link" href="/customers?action=customer">Customer</a>&ndash;%&gt;--%>
<%--    &lt;%&ndash;            </li>&ndash;%&gt;--%>
<%--    &lt;%&ndash;            <li class="nav-item">&ndash;%&gt;--%>
<%--    &lt;%&ndash;                <a class="nav-link" href="/service?action=service">Service</a>&ndash;%&gt;--%>
<%--    &lt;%&ndash;            </li>&ndash;%&gt;--%>
<%--    &lt;%&ndash;            <li class="nav-item">&ndash;%&gt;--%>
<%--    &lt;%&ndash;                <a class="nav-link" href="/contract?action=contract">Contract</a>&ndash;%&gt;--%>
<%--    &lt;%&ndash;            </li>&ndash;%&gt;--%>
<%--    &lt;%&ndash;            <li class="nav-item">&ndash;%&gt;--%>
<%--    &lt;%&ndash;                <a class="nav-link" href="/customer_using?action=customer_using">List Customer Using Service</a>&ndash;%&gt;--%>
<%--    &lt;%&ndash;            </li>&ndash;%&gt;--%>
<%--    &lt;%&ndash;            <li class="nav-item">&ndash;%&gt;--%>
<%--    &lt;%&ndash;                <a class="nav-link" href="/contract_detail?action=contract_detailt">Contract Detail</a>&ndash;%&gt;--%>
<%--    &lt;%&ndash;            </li>&ndash;%&gt;--%>
<%--    &lt;%&ndash;            <li class="nav-item">&ndash;%&gt;--%>
<%--    &lt;%&ndash;                <form class="d-flex">&ndash;%&gt;--%>
<%--    &lt;%&ndash;                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">&ndash;%&gt;--%>
<%--    &lt;%&ndash;                    <button class="btn btn-outline-primary" type="submit">Search</button>&ndash;%&gt;--%>
<%--    &lt;%&ndash;                </form>&ndash;%&gt;--%>
<%--    &lt;%&ndash;            </li>&ndash;%&gt;--%>
<%--    &lt;%&ndash;        </ul>&ndash;%&gt;--%>
<%--    &lt;%&ndash;    </div>&ndash;%&gt;--%>
<%--    &lt;%&ndash;</div>&ndash;%&gt;--%>

<%--    <div class="row ">--%>
<%--        <div class="col-3 bg-body">--%>
<%--            <div class="row">--%>
<%--                <iframe src="https://www.youtube.com/embed/PgvSSl4jm1U"--%>
<%--                        title="YouTube video player" frameborder="0"--%>
<%--                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"--%>
<%--                        allowfullscreen></iframe>--%>
<%--                <h4>Furama Resort ???? N???ng</h4>--%>

<%--            </div>--%>
<%--            <div class="row">--%>
<%--                <div class="col-12">--%>
<%--                    <iframe src="https://www.youtube.com/embed/VzDrgGaXBjY"--%>
<%--                            title="YouTube video player" frameborder="0"--%>
<%--                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"--%>
<%--                            allowfullscreen></iframe>--%>
<%--                    <h4>FURAMA RESORT DANANG, VIETNAM, 5 SAO BEACH RESORT</h4>--%>

<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="row">--%>
<%--                <div class="col-12">--%>
<%--                    <iframe src="https://www.youtube.com/embed/JbiY06WhjyY"--%>
<%--                            title="YouTube video player" frameborder="0"--%>
<%--                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"--%>
<%--                            allowfullscreen></iframe>--%>
<%--                    <h4>Resort Furama ???? N???ng 2019</h4>--%>

<%--                </div>--%>
<%--            </div>--%>

<%--        </div>--%>
<%--        <div class="col-9 bg-light ">--%>
<%--            <div class="row">--%>
<%--                <div class="col-12 text-center">--%>
<%--                    <img class="img-fluid" src="https://i.imgur.com/iky5E1S.jpg" alt="">--%>
<%--                    <h2 style="font-size: 24px;color: #cbbe73;line-height: 36px;text-align: center;font-family:Playfair Display;font-weight:700;font-style:normal"--%>
<%--                        class="vc_custom_heading">KHU NGH??? D?????NG ?????NG C???P TH??? GI???I, FURAMA ???? N???NG, N???I TI???NG L?? KHU NGH???--%>
<%--                        D?????NG ???M TH???C T???I VI???T NAM.</h2>--%>

<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>

<%--    <div class="row">--%>
<%--        <div class="col-12 bg-secondary text-center text-light">--%>
<%--            COVID 19 UPDATE: The safety and well-being are our utmost priority--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <script src="/assert/jquery/jquery-3.5.1.min.js"></script>--%>
<%--    <script src="/assert/bootstrap413/js/popper.min.js"></script>--%>
<%--    <script src="/assert/datatables/js/jquery.dataTables.min.js"></script>--%>
<%--    <script src="/assert/datatables/js/dataTables.bootstrap4.min.js"></script>--%>
<%--    <script src="/assert/bootstrap413/js/bootstrap.min.js"></script>--%>
<%--    <script src="/assert/bootstrap413/js/bootstrap.bundle.js"></script>--%>
<%--    <!-- Optional JavaScript -->--%>
<%--    <!-- jQuery first, then Popper.js, then Bootstrap JS -->--%>
<%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"--%>
<%--            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"--%>
<%--            crossorigin="anonymous"></script>--%>
<%--    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"--%>
<%--            integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"--%>
<%--            crossorigin="anonymous"></script>--%>
<%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"--%>
<%--            integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"--%>
<%--            crossorigin="anonymous"></script>--%>
<%--</body>--%>
<%--</html>--%>