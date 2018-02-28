<template>
  <div class="bestesellers-block">
    <div class="container">
      <div class="bestesellers-block__title">Хиты продаж
        <p>Если у вас возникли сложности с выбором, ознакомьтесь с предложением ниже. Это самые популярные двери, их чаще всего покупают. Список отсортирован по стоимости: от низкой к высокой.</p>
      </div>
      <div class="row">
        <div class="col">
          <div class="bestesellers-block__wrap">
            
            <!-- swiper -->
            <swiper :options="swiperOption">
              <swiper-slide>
                <a class="bestesellers-block__item" href="#">
                  <div class="image"><img src="/assets/doors-two.png"></div>
                  <p class="title">дверь "Оптима"</p>
                  <p class="sub-title">LD552 Металлическая</p>
                  <p class="price">13 000 р.</p><span class="button">купить</span>
                </a>
              </swiper-slide>
              <swiper-slide>
                <a class="bestesellers-block__item" href="#">
                  <div class="image"><img src="/assets/doors-two.png"></div>
                  <p class="title">дверь "Оптима"</p>
                  <p class="sub-title">LD552 Металлическая</p>
                  <p class="price">13 000 р.</p><span class="button">купить</span>
                </a>
              </swiper-slide>
              <swiper-slide>
                <a class="bestesellers-block__item" href="#">
                  <div class="image"><img src="/assets/doors-two.png"></div>
                  <p class="title">дверь "Оптима"</p>
                  <p class="sub-title">LD552 Металлическая</p>
                  <p class="price">13 000 р.</p><span class="button">купить</span>
                </a>
              </swiper-slide>
              <swiper-slide>
                <a class="bestesellers-block__item" href="#">
                  <div class="image"><img src="/assets/doors-two.png"></div>
                  <p class="title">дверь "Оптима"</p>
                  <p class="sub-title">LD552 Металлическая</p>
                  <p class="price">13 000 р.</p><span class="button">купить</span>
                </a>
              </swiper-slide>
              <div class="swiper-button-prev swiper-button-black" slot="button-prev"></div>
              <div class="swiper-button-next swiper-button-black" slot="button-next"></div>
            </swiper>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    data() {
      return {
        swiperOption: {
          slidesPerView: 3,
          spaceBetween: 55,
          speed: 500,
          loop: true,
          navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev'
          },
          breakpoints: {
            // when window width is <= 640px
            991: {
              slidesPerView: 2,
              spaceBetween: 55
            }
          }
        }
      }
    },
    methods: {
      handleResize: function(ev) {
        //this.swiperOption.slidesPerView = 2;
        //this.$set(this, 'slidesPerView', 2);
      }
    },
    mounted() {
      window.addEventListener('resize', this.handleResize);
    },
    beforeDestroy: function () {
      window.removeEventListener('resize', this.handleResize)
    }
  }
</script>