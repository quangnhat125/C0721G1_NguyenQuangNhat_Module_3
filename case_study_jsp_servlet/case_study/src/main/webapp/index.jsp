<%--
  Created by IntelliJ IDEA.
  User: Alex
  Date: 10/17/2021
  Time: 9:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>FURAMA RESORT MAIN PAGE</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
        .row.content {
            height: 1500px
        }

        /* Set gray background color and 100% height */
        .sidenav {
            background-color: #f1f1f1;
            height: 100%;
        }

        /* Set black background color, white text and some padding */
        footer {
            background-color: #555;
            color: white;
            padding: 15px;
        }

        /* On small screens, set height to 'auto' for sidenav and grid */
        @media screen and (max-width: 767px) {
            .sidenav {
                height: auto;
                padding: 15px;
            }

            .row.content {
                height: auto;
            }
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row content">
        <div class="col-sm-3 sidenav">
            <h4>FURAMA RESORT</h4>
            <ul class="nav nav-pills nav-stacked">
                <li class="active"><a href="#section1">HOME</a></li>
                <li><a href="/customer?action=customer">CUSTOMER</a></li>
                <li><a href="/employee?action=employee">EMPLOYEE</a></li>
                <li><a href="/service?action=service">SERVICE</a></li>
                <li><a href="#section3">CONTRACT</a></li>
            </ul>
            <br>
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Search...">
                <span class="input-group-btn">
          <button class="btn btn-default" type="button">
            <span class="glyphicon glyphicon-search"></span>
          </button>
        </span>
            </div>
        </div>

        <div class="col-sm-9">
            <h4><small>FURAMA RESORT INFORMATION</small></h4>
            <hr>
            <h2>KHU NGHỈ DƯỠNG ĐẲNG CẤP THẾ GIỚI FURAMA ĐÀ NẴNG, TỰ HÀO LÀ KHU NGHỈ DƯỠNG ẨM THỰC TẠI VIỆT NAM</h2>
            <p>Hướng ra bãi biển Đà Nẵng trải dài cát trắng, Furama Resort Đà Nẵng là cửa ngõ đến với 3 di sản văn hoá
                thế giới: Hội An (20 phút), Mỹ Sơn (90 phút) và Huế (2 tiếng. 196 phòng hạng sang cùng với 70 căn biệt
                thự từ hai đến bốn phòng ngủ có hồ bơi riêng đều được trang trí trang nhã, theo phong cách thiết kế truyền
                thống của Việt Nam và kiến trúc thuộc địa của Pháp, biến Furama thành khu nghỉ dưỡng danh giá nhất tại Việt
                Nam – vinh dự được đón tiếp nhiều người nổi tiếng, giới hoàng gia, chính khách, ngôi sao điện ảnh và các nhà
                lãnh đạo kinh doanh quốc tế.</p>
            <br><br>

            <hr>
            <h2>Tiện ích Furama Resort Đà Nẵng</h2>
            <p>Giới thiệu về Furama Resort có nhiều tiện ích xứng đáng là resort 5 sao sang trọng hiện đại.

                Chỉ vài bước chân có thể ra bờ biển trong xanh lộng gió. Hoặc có thể nghỉ ngơi tại khu bể bơi mát lành,
                dễ chịu. Bạn có thể thưởng thức bữa sáng ngon miệng ngay tại Nhà hàng của resort. Đa dạng phong phú món ăn Âu, Á phù hợp khẩu vị.

                Đến với nơi đây các bạn có thể nghỉ dưỡng với các hoạt động yoga, đạp xe nhẹ nhàng. Hoặc các hoạt động
                sôi nổi thú vị như lướt sóng, thể thao dưới nước, cầu lông, chèo thuyền, lặn,… Nếu không thích ngoài trời hoặc điều kiện thời tiết không cho phép bạn cũng có thể tập thể dục tại phòng tập tiện ích.

                Tối về tiến hành mát xa, xông hơi thư giãn, bạn cũng có thể làm ván bida hoặc giải trí nhẹ nhàng với đi
                bộ ngắm cảnh xung quanh resort.</p>
            <hr>



                </div>
            </div>
        </div>
    </div>
</div>

<footer class="container-fluid">
    <p>Footer Text</p>
</footer>

</body>
</html>


<script src="/assert/jquery/jquery-3.5.1.min.js"></script>
<script src="/assert/bootstrap413/js/popper.min.js"></script>
<script src="/assert/datatables/js/jquery.dataTables.min.js"></script>
<script src="/assert/datatables/js/dataTables.bootstrap4.min.js"></script>
<script src="/assert/bootstrap413/js/bootstrap.min.js"></script>
<script src="/assert/bootstrap413/js/bootstrap.bundle.js"></script>
</body>


</html>
