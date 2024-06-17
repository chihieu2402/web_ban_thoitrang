<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <title>Đăng nhập</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <style type="text/css">
            .head-title {
                color: #FE5621;
                text-decoration: none;
                font-size: 2em;
            }

            .bg-shop {
                background-color: #FE5621;
            }

            .btn-shop {
                background-color: #FE5621;
            }

            .btn-shop:hover {
                background-color: #FE5621;
            }
        </style>
    </head>

    <body>
        <div class="m-3">
            <header>
                <nav class="navbar mb-3">
                    <div class="container">
                        <div class="d-flex gap-2 align-items-center">
                            <img src="/image/logo1.webp" class="img-fluid">
                            <a class="head-title pt-2">ShopBee</a>
                        </div>
                        <div>
                            <a href="#" class="head-title fs-6">Bạn cần giúp đỡ?</a>
                        </div>
                    </div>
                </nav>
            </header>
            <div class="row bg-shop justify-content-between align-items-centers">
                <div class="col-6 text-center align-items-center">
                    <img class="img-fluid" src="/image/logo-body.jpg">
                    <h2 class="pb-5 text-light">ShopBee</h2>
                    <p class="pb-5 text-light fs-3">Nền tảng thương mại điện tử <br>
                        yêu thích ở Đông Nam Á & Đài Loan
                    </p>
                </div>
                <div class="col-6">
                    <form class="col-8 p-5 mt-5" style="background-color: #FEFDFD;" formaction="/index/login" method="post">
                        <h4>Đăng nhập</h4>
                        <div class="mb-3 mt-4">
                            <input type="text" class="form-control rounded-0" name="user"
                                placeholder="Email/Số điện thoại/Tên đăng nhập">
                        </div>
                        <div class="mb-3 mt-4">
                            <input type="password" class="form-control rounded-0" name="password"
                                placeholder="Mật khẩu">
                        </div>
                        <div class="text-danger">${mes}</div>
                        <button type="submit" class="btn btn-shop rounded-0 col-12 text-uppercase text-light mt-3">Đăng
                            nhập</button>

                        <div class="d-flex justify-content-between mt-3">
                            <a href="" class="text-decoration-none fs-7">Quên mật khẩu</a>
                            <a href="" class="text-decoration-none fs-7">Đăng nhập với SMS</a>
                        </div>
                        <hr>
                        <div class="d-flex justify-content-between mt-4">
                            <button class="btn rounded-0 border border-black col-5"><i class="fa-brands fa-facebook"
                                    style="color: #365899;"></i> Facebook</button>
                            <button class="btn rounded-0 border border-black col-5"><i class="fa-brands fa-google"></i>
                                Google</button>
                        </div>

                        <div class="text-center mt-4">
                            <p>Bạn mới biết đến ShopBee? <a href="signup.jsp"
                                    style="color: #FE5621; text-decoration: none;">Đăng ký</a></p>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/68a6aada2a.js" crossorigin="anonymous"></script>

    </html>