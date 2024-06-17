// script.js
document.addEventListener('DOMContentLoaded', function() {
    var counterElement = document.getElementById('soluong');
    var increaseBtn = document.getElementById('tangSL');
    var decreaseBtn = document.getElementById('giamSL');
  
    // Lấy giá trị hiện tại của bộ đếm
    var count = parseInt(counterElement.value);
  
    // Hàm tăng số lượng
    function increaseCount() {
      count++;
      counterElement.value = count;
    }
  
    // Hàm giảm số lượng
    function decreaseCount() {
      if (count > 1) {
        count--;
        counterElement.value = count;
      }
    }
  
    // Gắn sự kiện click cho các nút
    increaseBtn.addEventListener('click', increaseCount);
    decreaseBtn.addEventListener('click', decreaseCount);
  });
  