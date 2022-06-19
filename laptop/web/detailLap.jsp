<%-- 
    Document   : Detail
    Created on : Apr 19, 2022, 10:53:24 AM
    Author     : QuangHai144
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./css/reset.css"> 
        <link rel="stylesheet" href="./css/detail.css">  
        <link rel="stylesheet" href="./css/grid.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <title>Detail</title>
    </head>
    <body>
        <div class="wrapper">
            <div class="header-slider">
            
                <div class="logo-header">
                    <a href="home" class="logo-link">
                        HARIN
                    </a>
                </div>

                <div class="menu-header">
                    <ul class="list-header">
                        <li class="item-header "><a href="#" class="link-header br">GIỚI THIỆU</a></li>
                        <li class="item-header "><a href="#" class="link-header br">LAPTOP</a></li>
                        <li class="item-header "><a href="" class="link-header br">PHỤ KIỆN</a></li>
                        <li class="item-header "><a href="" class="link-header br">TIN TỨC</a></li>
                        <li class="item-header"><a href="" class="link-header">LIÊN HỆ</a></li>
                    </ul>
                </div>



                <div class="search-cart-account">
                    <div class="sca" id="cart">
                        <a href="" class="link-cart">
                            <i class="fa-solid fa-cart-shopping"></i>
                        </a>
                    </div>

                    <div class="sca" id="account">
                        <a href="" class="link-account">
                            <i class="fa-solid fa-circle-user"></i>
                            <h3 class="name-user">Quang Hai</h3>
                        </a>

                        <!-- <div class="div-infor">
                            <a href="" class="cart-shop">Giỏ hàng</a>
                            <a href="" class="logout">Log out</a>
                        </div> -->
                    </div>  
                </div>

            </div>
            
            
            <div class="img-product">
                <h2 class="name">${sessionScope.p.ten}</h2>
                <h2 class="price">$${sessionScope.p.gia}</h2>
                <img src="${p.anh}" alt="">
            </div>
            <div class="detail">

                <p class="description overflow">${sessionScope.p.mota}
                </p>
                <button  class="more">Xem Thêm</button>
                <button  class="less dis">Ẩn Bớt</button>

                <div class="infor">
                    <p>Thông số kỹ thuật</p>
                    <table>
                        <tr>
                          <td>Màn hình</td>
                          <td>${sessionScope.detail.manhinh}</td>
                        </tr>
                        <tr>
                          <td>CPU</td>
                          <td>${sessionScope.detail.cpu}</td>
                        </tr>
                        <tr>
                          <td>RAM</td>
                          <td>${sessionScope.detail.ram}</td>
                        </tr>
                        <tr>
                          <td>Ổ cứng</td>
                          <td>${sessionScope.detail.ocung}</td>
                        </tr>
                        <tr>
                          <td>Đồ họa</td>
                          <td>${sessionScope.detail.dohoa}</td>
                        </tr>
                        <tr>
                          <td>Trọng lượng</td>
                          <td>${sessionScope.detail.trongluong}</td>
                        </tr>
                        <tr>
                          <td>kích thước</td>
                          <td>${sessionScope.detail.kichthuoc}</td>
                        </tr>
                      </table>
                </div>
                <div class="cart">
                    <button class="add">
                        <a class="link-add" href="addToCart?pid=${p.id}">Thêm vào giỏ hàng</a>
                    </button>
                    <button class="buy">Mua ngay</button>
                </div>
            </div>
        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

        <script>
            $(document).ready(function(){
                $(".more").click(function(){
                    $('.description').removeClass('overflow');
                    $('.more').addClass('dis');
                    $('.less').removeClass('dis');
                })
            })
        </script>

        <script>
            $(document).ready(function(){
                $(".less").click(function(){
                    $('.description').addClass('overflow');
                    $('.less').addClass('dis');
                    $('.more').removeClass('dis');
                })
            })
        </script>
    </body>
</html>
