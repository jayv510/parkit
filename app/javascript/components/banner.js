import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Where do you want to park?"],
    typeSpeed: 60,
    startDelay: 10,
    showCursor: true,

  });
}

export { loadDynamicBannerText };
