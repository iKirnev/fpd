<template>
  <div class="wrapper content-page">
    <nav-top></nav-top>
    <main id="main" role="main">
      <div class="container">
        <div class='row'>
          <div class='col'>
            <div class="calculator-block">
              <div class="calculator-block__title">Калькулятор двери</div>
              <div class="calculator-block__wrap">
                <div class="calculator-block__wrap-info">
                  <div class="info-row">
                    <div class="info-row__col"><span class="stage-title">1.<b>ШИРИНА ПРОЕМА</b></span>
                      <input type="text">
                      <div class="slider-price"></div>
                    </div>
                    <div class="info-row__col"><span class="stage-title">2.<b>ШИРИНА ПРОЕМА</b></span>
                      <input type="text">
                      <div class="slider-price"></div>
                    </div>
                  </div>
                  <div class="info-configuration"><span class="stage-title">3.<b>КОНФИГУРАЦИЯ:</b></span>
                    <ul>
                      <li class="active"><a href="#"><img src="/assets/conf-image.png"></a></li>
                      <li><a href="#"><img src="/assets/conf-image.png"></a></li>
                      <li><a href="#"><img src="/assets/conf-image.png"></a></li>
                      <li><a href="#"><img src="/assets/conf-image.png"></a></li>
                      <li><a href="#"><img src="/assets/conf-image.png"></a></li>
                    </ul>
                  </div>
                  <div class="info-door">
                    <div class="info-door__large active"><span class="stage-title">3.<b>КОНФИГУРАЦИЯ:</b></span>
                      <div class="image"><img src="/assets/conf-door.png"></div><a class="button" href="#">выбрать отделку</a>
                      <p>выбрать отделку</p>
                    </div>
                    <div class="info-door__large"><span class="stage-title">3.<b>КОНФИГУРАЦИЯ:</b></span>
                      <div class="image"><img src="/assets/conf-door.png"></div><a class="button" href="#">выбрать отделку</a>
                      <p>выбрать отделку</p>
                    </div>
                    <div class="info-door__conf"><span class="stage-title">3.<b>КОНФИГУРАЦИЯ:</b></span>
                      <div class="info-door__conf-row">
                        <label class="sb-checkbox sb-checkbox--radio">
                          <input type="radio"><span></span>Наружу
                        </label>
                        <label class="sb-checkbox sb-checkbox--radio">
                          <input type="radio"><span></span>Наружу
                        </label>
                      </div><span class="stage-title">3.<b>КОНФИГУРАЦИЯ:</b></span>
                      <select>
                        <option>850mm</option>
                      </select><span class="stage-title">3.<b>КОНФИГУРАЦИЯ:</b></span>
                      <div class="info-door__conf-col">
                        <label class="sb-checkbox">
                          <input type="checkbox"><span></span>Доводчик + 1500 р
                        </label>
                        <label class="sb-checkbox">
                          <input type="checkbox"><span></span>Доводчик + 1500 р
                        </label>
                        <label class="sb-checkbox">
                          <input type="checkbox"><span></span>Доводчик + 1500 р
                        </label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="calculator-block__wrap-price">
                  <p>1080 р.*</p>
                  <div class="price-row"><span class="stage-title">3.<b>КОНФИГУРАЦИЯ:</b></span>
                    <select>
                      <option>550mm</option>
                    </select>
                  </div>
                  <div class="price-row"><span class="stage-title">3.<b>КОНФИГУРАЦИЯ:</b></span>
                    <select>
                      <option>550mm</option>
                    </select>
                  </div><a class="button" href="#">оформить заявку</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
  </div>
</template>
