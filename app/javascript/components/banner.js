import Typed from 'typed.js';

const timedFade = () => {
  $("#subtitle-hp").delay(700).fadeTo(2200, 0.7);
}

const loadDynamicBannerText = () => {
  new Typed('.banner-typed-text', {
    strings: ["Time to play?"],
    typeSpeed: 40,
    loop: false,
  });
}

export { loadDynamicBannerText, timedFade };

