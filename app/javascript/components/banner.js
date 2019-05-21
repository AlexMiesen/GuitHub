import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('.banner-typed-text', {
    strings: ["Time to play ?"],
    typeSpeed: 60,
    loop: false
  });
}

export { loadDynamicBannerText };
