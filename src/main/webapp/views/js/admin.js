    // Lấy phần tử input type="file"
        var fileInput = document.getElementById('photo');
        // Lấy phần tử input type="text"
        var textInput = document.getElementById('fileName');
        
        // Thêm sự kiện change vào input type="file"
        fileInput.addEventListener('change', function() {
            // Lấy danh sách các tệp được chọn
            var files = fileInput.files;

            // Kiểm tra nếu có tệp được chọn
            if (files.length > 0) {
                // Lấy tên của tệp đầu tiên trong danh sách
                var fileName = files[0].name;
                // Đặt tên tệp vào ô input type="text"
                textInput.value = fileName;
            } else {
                // Nếu không có tệp nào được chọn, xóa nội dung của ô input type="text"
                textInput.value = '';
            }
        });
        // thống ke
   // Custom JavaScript
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

