var countDownDate = new Date().getTime() + (2 * 24 * 60 * 60 * 1000);
var x = setInterval(function() {
	var now = new Date().getTime();
	var distance = countDownDate - now;
	// Tính toán thời gian còn lại: giờ, phút và giây
	var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
	var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
	var seconds = Math.floor((distance % (1000 * 60)) / 1000);
	document.getElementById("countdown").innerHTML =
		"<span class='time'>" + (hours < 10 ? '0' : '') + hours + "h</span> : " +
		"<span class='time'>" + (minutes < 10 ? '0' : '') + minutes + "m</span> : " +
		"<span class='time'>" + (seconds < 10 ? '0' : '') + seconds + "s</span>";
	if (distance < 0) {
		clearInterval(x);
		document.getElementById("countdown").innerHTML = "FLASH SALE KẾT THÚC";
	}
}, 1000);