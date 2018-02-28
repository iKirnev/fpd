<template>
  <div class="main-slider">
    <div class="container">
      <!-- swiper -->
      <swiper :options="swiperOption">
        <swiper-slide><img src="/assets/banner.png"></swiper-slide>
        <swiper-slide><img src="/assets/banner.png"></swiper-slide>
        <swiper-slide><img src="/assets/banner.png"></swiper-slide>
        <div class="swiper-button-prev swiper-button-white" slot="button-prev"></div>
        <div class="swiper-button-next swiper-button-white" slot="button-next"></div>
      </swiper>
    </div>
  </div>
</template>

<script>
  export default {
    data() {
      return {
        swiperOption: {
          autoplay: {
            delay: 5000,
            disableOnInteraction: false
          },
          speed: 1000,
          loop: true,
          navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev'
          }
        }
      }
    }
  }
</script>