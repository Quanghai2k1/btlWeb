<%-- 
    Document   : cart
    Created on : May 15, 2022, 2:35:47 PM
    Author     : QuangHai144
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/cartCss.css">
    <link rel="stylesheet" href="css/reset.css"> 
    <link rel="stylesheet" href="css/grid.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Cart</title>
</head>
<body>
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
    <div class="main">
        <div class="content grid wide">
            <p class="notice dis">Giỏ hàng đã được cập nhật!</p>
            <div class="row row-main">
                
                <div class="col l7 m7 c12 left">
     
                    <div class="cart-wrapper">
                        <table class="table-cart">
                            <thead>
                                <tr>
                                    <th class="product-name" colspan="3">Sản phẩm</th>
                                    <th class="product-price">Giá</th>
                                    <th class="product-quantity">Số lượng</th>
                                    <th class="product-subtotal">Tổng</th>
                                </tr>
                            </thead>

                            <tbody>


                                <c:forEach items="${sessionScope.cart.items}" var="item">
                                <tr class="cart-item">
                                    <td class="product-remove">
                                        <form action="process" method="post">
                                            <input type="hidden" name="id" value="${item.product.id}">
                                            <button class="button-remove" type="submit">
                                                <i class="fa-solid fa-circle-xmark"></i>
                                            </button>
                                            
                                        </form>

                                    </td>
                                    <td class="product-thumbnail">
                                        <a href="" class="thumbnail">
                                            <img src="${item.product.anh}" alt="" class="product-img">
                                        </a>
                                    </td>
                                    <td class="product-name">
                                        <p class="name">${item.product.ten}</p>
                                    </td>
                                    <td class="product-price">
                                        <span class="price">${item.product.gia}</span>
                                    </td>
                                    <td class="product-quantity">
                                        <a class="process" href="process?num=-1&id=${item.product.id}">-</a>
                                        <input type="number" value="${item.quantity}" class="quantity">
                                        <a class="process" href="process?num=1&id=${item.product.id}">+</a>
                                    </td>
                                    <td class="product-sum">
                                        <span class="sum">${item.quantity * item.product.gia}</span>
                                    </td>
                                </tr>
                                </c:forEach>

                            </tbody>
                        </table>
                        <div class="continue-update">
                            <div class="continue-shopping but">
                                <a class="link-continue" href="home.jsp">← Tiếp tục xem sản phẩm    </a>
                            </div>

                            <button  class="button-update" name="update_cart">Cập nhật giỏ hàng</button>
                        </div>

                    </div>
                    
                </div>

                <div class="col l5 m5 c12 right">
                    <div class="cart-sidebar">
                        <p class="name-sidebar">CỘNG GIỎ HÀNG</p>
                        <table>
                            <tr class="cart-subtotal">
                                <th>Tạm tính</th>
                                <td data-title="Tạm tính">${sessionScope.totalMoney}</td>
                            </tr>
                            <tr class="cart-ship">
                                <th>Giao hàng</th>
                                <td data-title="Giao hàng">Giao hàng miễn phí</td>
                            </tr>
                            <tr class="cart-sum">
                                <th>Tổng</th>
                                <td data-title="Tổng">${sessionScope.totalMoney}</td>
                            </tr>
                        </table>
                        <div class="checkout-button continue-shopping">
		
                            <a href="pay.jsp" class="link-checkout link-continue">
                                Tiến hành thanh toán</a>
                        </div>
                    </div>
                </div>

                
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function(){
            $(".button-update").click(function(){
                $(".notice").removeClass("dis");
            })
        })
    </script>
</body>
</html>
