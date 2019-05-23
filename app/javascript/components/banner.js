import Typed from 'typed.js';

const subHeading = document.querySelector('.title-hp');

const fade = () => {
  $(subHeading).fadeIn(5000)
}

const loadDynamicBannerText = () => {
  new Typed('.banner-typed-text', {
    strings: ["Time to play?"],
    typeSpeed: 40,
    loop: false,
  });
}

export { loadDynamicBannerText };

