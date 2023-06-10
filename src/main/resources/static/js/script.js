var menu = document.querySelector(".header__actions");
var burger = document.querySelector(".burger");

burger.addEventListener("click", () => {
  menu.classList.toggle("open");
});

const swiper = new Swiper(".swiper", {
  spaceBetween: 40,
  slidesPerView: 4,
  breakpoints: {
    320: {
      slidesPerView: "auto",
      spaceBetween: 10,
    },
    410: {
      slidesPerView: "auto",
      spaceBetween: 20,
    },
    600: {
      slidesPerView: "auto",
      spaceBetween: 30,
    },
    991: {
      slidesPerView: "4",
      spaceBetween: 40,
    },
  },
  pagination: {
    el: ".swiper-pagination",
  },
});
