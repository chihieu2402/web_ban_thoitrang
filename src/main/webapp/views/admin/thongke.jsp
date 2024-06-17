<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js"></script>
<!DOCTYPE html>
<html lang="en">
<head>
 
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    
</head>
<body>
    <!-- Menu Toggle Button -->
    <button id="menu-toggle" class="btn btn-primary" hidden="" ></button>

    <!-- Wrapper for Toggle Content -->
    <div id="wrapper" class="toggled">
        <div class="container-fluid mt-4">
            <h1 class="mt-12">Thống kê</h1>
            <div class="row">
                <div class="col-md-3 mb-3">
                    <div class="card text-white bg-primary">
                        <div class="card-body">
                            <h5 class="card-title">Tổng số User</h5>
                            <p class="card-text">26K</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 mb-3">
                    <div class="card text-white bg-success">
                        <div class="card-body">
                            <h5 class="card-title">Tổng số Sản phẩm</h5>
                            <p class="card-text">$6,200</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 mb-3">
                    <div class="card text-white bg-warning">
                        <div class="card-body">
                            <h5 class="card-title">Tỷ lệ Chuyển đổi</h5>
                            <p class="card-text">2.49%</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 mb-3">
                    <div class="card text-white bg-danger">
                        <div class="card-body">
                            <h5 class="card-title">Số phiên</h5>
                            <p class="card-text">44K</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card mb-4">
                <div class="card-header">
                    <i class="fas fa-chart-line"></i> Traffic
                </div>
                <div class="card-body">
                    <canvas id="myChart" width="100%" height="30"></canvas>
                </div>
            </div>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            var menuToggle = document.getElementById('menu-toggle');
            var wrapper = document.getElementById('wrapper');
            menuToggle.addEventListener('click', function() {
                wrapper.classList.toggle('toggled');
            });

            // Chart.js setup
            var ctx = document.getElementById('myChart').getContext('2d');
var myChart = new Chart(ctx, {
                type: 'line',
                data: {
                    labels: ['January', 'February', 'March', 'April', 'May', 'June'],
                    datasets: [{
                        label: 'Visits',
                        data: [29370, 24400, 22810, 19700, 23270, 22090],
                        backgroundColor: 'rgba(0, 123, 255, 0.2)',
                        borderColor: 'rgba(0, 123, 255, 1)',
                        borderWidth: 1
                    }, {
                        label: 'Income',
                        data: [1200, 2300, 1800, 1700, 2500, 2700],
                        backgroundColor: 'rgba(40, 167, 69, 0.2)',
                        borderColor: 'rgba(40, 167, 69, 1)',
                        borderWidth: 1
                    }]
                },
                options: {
                    scales: {
                        x: {
                            beginAtZero: true
                        },
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });
        });
    </script>
</body>
</html>