<template>
  <!-- swiper -->
  <swiper :options="swiperOption">
    <swiper-slide><img src="/assets/banner.png"></swiper-slide>
    <swiper-slide><img src="/assets/banner.png"></swiper-slide>
    <swiper-slide><img src="/assets/banner.png"></swiper-slide>
    <div class="swiper-pagination" slot="pagination"></div>
    <div class="swiper-button-prev swiper-button-white" slot="button-prev"></div>
    <div class="swiper-button-next swiper-button-white" slot="button-next"></div>
  </swiper>
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
          loop: true,
          pagination: {
            el: '.swiper-pagination',
            clickable: true
          },
          navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev'
          }
        }
      }
    }
  }
</script>