<%-- 
    Document   : quanlysanpham
    Created on : Jun 13, 2022, 8:06:44 PM
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
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/quanlysanphamCss.css">
    <link rel="stylesheet" href="css/grid.css">
    <link rel="stylesheet" href="css/themsanpham.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <script>
        function chooseFile(fileInput){
            if (fileInput.files && fileInput.files[0]){
                var reader = new FileReader();

                reader.onload = function(e) {
                    $('#img').attr('src',e.target.result);
                }
                reader.readAsDataURL(fileInput.files[0]);
            }
        }
    </script>
</head>
<body>
    
    <div class="main">
        <div class="header">
            <div class="trangchu-quanly">
                <a href="" class="trangchu">Trang chủ</a>
            </div>
            
            <p class="themsanpham"><i class="fa-solid fa-plus"></i>Thêm sản phẩm</p>
        </div>
        <div class="grid wide content">
            <div class="row">
                <div class="bentrai col l3 c3">
                    <div class="danhmuc">
                        <h1 class="tieudetrai">
                            DANH MỤC SẢN PHẨM
                        </h1>
                        <ul class="danhsachdanhmuc">
                            <li class="donvidanhmuc">
                                <a href="" class="lienketdanhmuc">Laptop</a>
                            </li>
                            <li class="donvidanhmuc">
                                <a href="" class="lienketdanhmuc">Phụ kiện</a>
                            </li>
                            
                        </ul>
                    </div>
                </div>
                <div class="benphai col l9 c9">
                    <h1 class="tieudephai">DANH SÁCH SẢN PHẨM</h1>

                    <table class="table-product">
                        <thead>
                            <tr>
                                <th class="id">ID</th>
                                <th class="anh">Ảnh</th>
                                <th class="ten">SẢN PHẨM</th>
                                <th class="gia">GIÁ</th>
                                <th class="soluong">SỐ LƯỢNG</th>
                                <th class="hanhdong" colspan="2">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${listLaptop}" var="l">
                            <tr>
                                <td class="id">${l.id}</td>
                                <td class="thumbnail"><img width="50" height="50" src="${l.anh}" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail wp-post-image" alt="" sizes="(max-width: 300px) 100vw, 300px">
                                </td>
                                <td class="name">${l.ten} </td>
                                <td class="price">${l.gia}</td>
                                <td class="quantity">
                                    ${l.soluong}
                                </td>
                                
                                   
                                <td class="edit">
                                    <a href="loadchinhsua?pid=${l.id}&&kind=${l.kind}" class="chinhsua">
                                        <i class="fa-solid fa-pen-to-square"></i>
                                    </a>
                                    
                                </td>
                                    
                                <td class="remove">
                                    <a href="xoasanpham?id=${l.id}" class="xoa">
                                        <i class="fa-solid fa-x"></i>
                                    </a>
                                    
                                </td>
                            </tr>
                            </c:forEach>
                            
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        
        <div class="mucthemsanpham dis">
            <form action="themsanpham" method="post" class="khungthemsanpham" enctype="multipart/form-data">

                <div class="header-themsanpham">
                    <h1 class="tieudethem">Thêm sản phẩm</h1>
                    <i class="fa-solid fa-x" style="cursor: pointer"></i>
                </div>
                <div class="nhapthongtin">
                    <div class="onhap">
                        <label for="ten">Tên</label>
                        
                        <input type="text" id="ten" name="ten" >
                    </div>
                    <div class="onhap">
                        <label for="anh">Ảnh</label>
                        <img src="" alt="" id="img" width="200" height="100" >
                        <input type="file" name="photo" onchange="chooseFile(this)" accept="image/gif , image/jpeg, image/png">
                    </div>
                    <div class="onhap">
                        <label for="gia">Giá</label>
                        <input type="text" id="gia" name="gia">
                    </div>
                    <div class="onhap">
                        <label for="soluong">Số lượng</label>
                        <input type="text" id="soluong" name="soluong">
                    </div>
                    <div class="onhap">
                        <label for="mota">Mô tả</label>
                        <input type="text" id="mota" name="mota">
                    </div>
                    <div class="onhap">
                        <label for="category">Category</label>
                        <select name="category" id="category">
                            <c:forEach items="${category}" var="c">
                            <option value="${c.cid}">${c.name}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                
                <div class="xacnhan">
                    <button type="submit"   height="30">OK</button>
                </div>
                
            </form>
        </div>
    </div>
        
    <script>
        $(document).ready(function(){
            $(".themsanpham").click(function(){
                $(".mucthemsanpham").addClass("active");

            })
        })
    </script>
    <script>
        $(document).ready(function(){
            $(".fa-x").click(function(){
                $(".mucthemsanpham").removeClass("active");

            })
        })
    </script>
</body>
</html>
