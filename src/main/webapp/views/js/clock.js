var h;
var m;
var s;
function init() {
    h = '15';
    m = '15';
    s = '60';
    clock();
}

function clock() {
    s--;
    if (s == 0) {
        s = 59;
        m--;
        if (m == 0) {
            m = 59;
            h--;
            if (h == 0) {
                h = 24;
            }

        }
    }
    change('seconds', s);
    change('minutes', m);
    change('hours', h);
    setTimeout(clock, 1000);
}

function change(id, val) {
    if (val < 10) {
        val = '0' + val;
    }
    document.getElementById(id).innerHTML = val;
}
window.onload = init();


document.addEventListener("DOMContentLoaded", function() {
    const heartIcon = document.getElementById("heart-icon");
    const heartCount = heartIcon.querySelector(".heart-count");
    let isLiked = false;

    heartIcon.addEventListener("click", function() {
        if (isLiked) {
            heartCount.textContent = parseInt(heartCount.textContent) - 1;
            heartIcon.querySelector("i").classList.remove("liked");
        } else {
            heartCount.textContent = parseInt(heartCount.textContent) + 1;
            heartIcon.querySelector("i").classList.add("liked");
        }
        isLiked = !isLiked;
    });
});