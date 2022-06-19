<%-- 
    Document   : edit
    Created on : Jun 15, 2022, 7:58:54 PM
    Author     : QuangHai144
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css/chinhsua.css">
        <title>JSP Page</title>
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
                <a href="" class="trangchu">Trang chủ</a>
                <p class="tieude">Chỉnh sửa sản phẩm</p>
                <h2 class="id">#${p.id}</h2>
            </div>
            <form action="edit" method="post" class="form" enctype="multipart/form-data">
                <div class="img-product">
                    <input type="hidden" name="id" value="${p.id}">
                    <label for="ten">Tên sản phẩm</label>
                    <input type="text" id="ten" name="ten" value="${p.ten}">
                    <label for="gia">Giá</label>
                    <input type="text" id="gia" name="gia" value="${p.gia}">
                    <img src="${p.anh}" alt="" id="img" width="400" height="300" >
                    <input type="file" name="photo" onchange="chooseFile(this)" accept="image/gif , image/jpeg, image/png">
                </div>
                <div class="detail">

                    <label for="mota">Mô tả</label>
                    <input type="text" id="mota" name="mota" value="${p.mota}">


                    <div class="thongso">
                        <p>Thông số kỹ thuật</p>
                        <div class="nhapthongso">
                            <div class="onhap">
                                <label for="manhinh" class="manhinh">Màn hình</label>
                                <input type="text" id="manhinh" name="manhinh" value="${detail.manhinh}">
                            </div>
                            <div class="onhap">
                                <label for="cpu" class="cpu">CPU</label>
                                <input type="text" id="cpu" name="cpu" value="${detail.cpu}">
                            </div>
                            <div class="onhap">
                                <label for="ram" class="ram">Ram</label>
                                <input type="text" id="ram" name="ram" value="${detail.ram}">
                            </div>
                            <div class="onhap">
                                <label for="ocung" class="ocung">Ổ cứng</label>
                                <input type="text" id="ocung" name="ocung" value="${detail.ocung}">
                            </div>
                            <div class="onhap">
                                <label for="dohoa" class="dohoa">Đồ họa</label>
                                <input type="text" id="dohoa" name="dohoa" value="${detail.dohoa}">
                            </div>
                            <div class="onhap">
                                <label for="trongluong" class="trongluong">Khối lượng</label>
                                <input type="text" id="trongluong" name="trongluong" value="${detail.trongluong}"> 
                            </div>
                            <div class="onhap">
                                <label for="kichthuoc" class="kichthuoc">Kích thước</label>
                                <input type="text" id="kichthuoc" name="kichthuoc" value="${detail.kichthuoc}"> 
                            </div>
                        </div>
                    </div>

                    <input type="submit" class="btn" value="Xác nhận">
                </div>
            </form>
        </div>
    </body>
</html>
