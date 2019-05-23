import "bootstrap";
import { loadDynamicBannerText } from '../components/banner.js';
import { myFunc } from '../components/dashboard.js';
myFunc();

if (document.querySelector('.banner-typed-text') !== null) {
  loadDynamicBannerText();
};

import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
initMapbox();
