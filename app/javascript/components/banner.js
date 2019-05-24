import Typed from 'typed.js';

const timedFade = () => {
  $("#subtitle-hp").delay(7900).fadeTo(2200, 0.7);
}

const loadDynamicBannerText = () => {
  new Typed('.banner-typed-text', {
    strings: ["Time to play guitar?", "Time to play saxophone?", "Time to play drums?", "Time to play piano?", "Time to play violin?", "Time to play trumpet?", "Play anything you want with GuitHub!"],
    smartBackspace: true,
    typeSpeed: 30,
    loop: false,
  });
}

export { loadDynamicBannerText, timedFade };
