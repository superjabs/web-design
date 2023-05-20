function autoSlide() {
  const slidesContainer = document.querySelector(".slides-container");
  const slides = Array.from(document.querySelectorAll(".slide"));
  const slideWidth = slides[0].offsetWidth;
  let currentIndex = 0;

  setInterval(() => {
    currentIndex = (currentIndex + 1) % slides.length;
    slidesContainer.style.transform = `translateX(-${
      currentIndex * slideWidth
    }px)`;
  }, 3000);
}

autoSlide();
