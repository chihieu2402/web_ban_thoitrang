document.addEventListener('DOMContentLoaded', function() {
  var mainImages = document.querySelectorAll('.mainImage');
  var zoomedImage = document.getElementById('zoomedImage');
  var originalSrc = zoomedImage.src;

  mainImages.forEach(function(image) {
    image.addEventListener('mouseover', function() {
      zoomedImage.src = image.src;
    });

    image.addEventListener('mouseout', function() {
      zoomedImage.src = originalSrc;
    });
  });
});