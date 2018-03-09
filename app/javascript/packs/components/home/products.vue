<template>
  <div class="wrapper content-page">
    <nav-top></nav-top>
    <main id="main" role="main">
      <div class="container">
        <div class="row">
          <nav-left></nav-left>
          <div class="col">
            <div class="gallery__title">Продукция
              <p></p>
            </div>
            <div class="gallery">
                <router-link :to="{name: 'doors_path'}" class="gallery-content-item">
                  <div class="image"><img src="/assets/img_storage/doors/gallery/IMG_5623.JPG"></div>
                  <p>Двери</p><span>от 7600 руб.</span>
                </router-link>
                <a class="gallery-content-item" href="#">
                <div class="image"><img src="/assets/img_storage/gates/IMG_5696.JPG"></div>
                <p>Ворота</p><span>от 7600 руб.</span></a>
                <a class="gallery-content-item" href="#">
                <div class="image"><img src="/assets/img_storage/hover/ekr.png"></div>
                <p>Козырьки</p><span>от 7600 руб.</span></a>
                <a class="gallery-content-item" href="#">
                <div class="image"><img src="/assets/img_storage/bars/reshetka1-b.jpg"></div>
                <p>Решетки</p><span>от 7600 руб.</span></a>
                <a class="gallery-content-item" href="#">
                <div class="image"><img src="/assets/img_storage/grill/Мк.19.jpg"></div>
                <p>Мангалы</p><span>от 7600 руб.</span></a>
                <a class="gallery-content-item" href="#">
                <div class="image"><img src="/assets/img_storage/stairs/screw/IMG_4436.jpeg"></div>
                <p>Лестницы</p><span>от 7600 руб.</span></a>
            </div>
          </div>
        </div>
      </div>
    </main>
  </div>
</template>
