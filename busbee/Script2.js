let slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
    showSlides(slideIndex += n);
}

function currentSlide(n) {
    showSlides(slideIndex = n);
}

function showSlides(n) {
    let i;
    let slides = document.getElementsByClassName("mySlides");
    let dots = document.getElementsByClassName("dot");
    if (n > slides.length) { slideIndex = 1 }
    if (n < 1) { slideIndex = slides.length }
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex - 1].style.display = "block";
    dots[slideIndex - 1].className += " active";
}

// Automatic slideshow
let intervalId;

function startSlideShow() {
    intervalId = setInterval(function () {
        plusSlides(1); // Auto-advance to the next slide
    }, 2000); // Change slide every 3 seconds (adjust as needed)
}

// Start the automatic slideshow when the page loads
window.addEventListener("load", startSlideShow);

// Pause the automatic slideshow when clicking previous or next buttons
document.querySelector(".prev").addEventListener("click", function () {
    clearInterval(intervalId);
    startSlideShow(); // Restart after clicking
});
document.querySelector(".next").addEventListener("click", function () {
    clearInterval(intervalId);
    startSlideShow(); // Restart after clicking
});