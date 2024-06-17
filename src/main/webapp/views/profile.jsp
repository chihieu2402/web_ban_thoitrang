<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        .btn-save {
            background-color: #FE5621;
        }
        .btn-save:hover {
            background-color: #FE5621;
        }
    </style>
</head>
<body class="container">
    <div class="d-flex">
        <div class="accordion accordion-flush mt-5 col-2" id="accordionFlushExample">
            <div class="accordion-item">
                <h2 class="accordion-header">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                        data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                        Tài khoản của tôi
                    </button>
                </h2>
                <div id="flush-collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">
                        <div class="d-flex align-items-start">
                            <div class="nav flex-column nav-tabs me-3 gap-1" id="v-pills-tab" role="tablist"
                                aria-orientation="vertical">
                                <button class="nav-link" id="v-pills-home-tab" data-bs-toggle="pill"
                                    data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home"
                                    aria-selected="true">Hồ sơ</button>
                                <button class="nav-link" id="v-pills-profile-tab" data-bs-toggle="pill"
                                    data-bs-target="#v-pills-profile" type="button" role="tab"
                                    aria-controls="v-pills-profile" aria-selected="false">Profile</button>
                                <button class="nav-link" id="v-pills-messages-tab" data-bs-toggle="pill"
                                    data-bs-target="#v-pills-messages" type="button" role="tab"
                                    aria-controls="v-pills-messages" aria-selected="false">Messages</button>
                                <button class="nav-link" id="v-pills-settings-tab" data-bs-toggle="pill"
                                    data-bs-target="#v-pills-settings" type="button" role="tab"
                                    aria-controls="v-pills-settings" aria-selected="false">Settings</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                        data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                        Accordion Item #3
                    </button>
                </h2>
                <div id="flush-collapseThree" class="accordion-collapse collapse"
                    data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate
                        the
                        <code>.accordion-flush</code> class. This is the third item's accordion body. Nothing more
                        exciting
                        happening here in terms of content, but just filling up the space to make it look, at least at
                        first
                        glance, a bit more representative of how this would look in a real-world application.
                    </div>
                </div>
            </div>
        </div>
        <div class="tab-content col-10 mt-5 mx-3" id="v-pills-tabContent">
            <div class="tab-pane fade" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab"
                tabindex="0">
                <h5>Hồ sơ của tôi</h5>
                <p>Quản lý thông tin hồ sơ để bảo mật tài khoản</p>
                <hr>

                <div class="row">
                    <form class="col-7 offset-1">
                        <div class="row mb-3">
                            <label class="col-sm-4 col-form-label">Tên đăng nhập</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-4 col-form-label">Password</label>
                            <div class="col-sm-8">
                                <input type="password" class="form-control">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-4 col-form-label">Email</label>
                            <div class="col-sm-8">
                                <div class="mt-2">chihieu2402@gmail.com</div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-4 col-form-label">Số điện thoại</label>
                            <div class="col-sm-8">
                                <div class="mt-2">076583927</div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-4 col-form-label">Giới tính</label>
                            <div class="col-sm-8 mt-2 d-flex gap-2">
                                <input class="form-check-input" type="radio" name="gender" id="">Nam
                                <input class="form-check-input" type="radio" name="gender" id="">Nữ
                                <input class="form-check-input" type="radio" name="gender" id="">Khác
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-4 col-form-label">Ngày sinh</label>
                            <div class="col-sm-8">
                                <input class="form-control" type="date" name="" id="">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-sm-8 offset-4">
                                <button class="btn btn-save">Lưu</button>
                            </div>
                        </div>
                    </form>
                    <div class="col-4 text-center align-middle gap-2">
                        <img src="image/logo-body.jpg" class="img-fluid w-50">
                        <p><button class="btn btn-light mt-2">Chọn ảnh</button></p>
                        <p>Dụng lượng file tối đa 1 MB <br>
                            Định dạng:.JPEG, .PNG</p>
                    </div>
                </div>

            </div>
            <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab"
                tabindex="0">2</div>
            <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab"
                tabindex="0">4</div>
            <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab"
                tabindex="0">5</div>
        </div>
    </div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
</html>