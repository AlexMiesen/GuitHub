import "bootstrap";
import { loadDynamicBannerText, timedFade } from '../components/banner.js';

if (document.querySelector('.banner-typed-text') !== null) {
  loadDynamicBannerText();
};

import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
initMapbox();
timedFade();
