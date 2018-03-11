<template>
  <div class="wrapper content-page">
    <nav-top></nav-top>
    <main id="main" role="main">
      <div class="calculator-block">
        <div class="calculator-block__title">Калькулятор двери</div>
        <div class="container">
          <div class='row'>
            <div class='col'>
              <div class="calculator-block__wrap">
                <div class="calculator-block__wrap-info">
                  <div class="info-row">
                    <div class="info-row__col"><span class="stage-title">1.<b>ШИРИНА ПРОЕМА</b></span>
                      <span class="calculator-dimm"><input type="text"  v-model="width"></span>
                      <div class="slider-price"><vue-slider v-model="width" v-on:drag-end="dragEnd" :tooltip="false" :min="650" :max="3000"></vue-slider></div>
                    </div>
                    <div class="info-row__col"><span class="stage-title">2.<b>ВЫСОТА ПРОЕМА</b></span>
                      <span class="calculator-dimm"><input type="text" v-model="height"></span>
                      <div class="slider-price"><vue-slider v-model="height" v-on:drag-end="dragEnd" :tooltip="false" :min="1600" :max="3000"></vue-slider></div>
                    </div>
                  </div>
                  <div class="info-configuration"><span class="stage-title">3.<b>КОНФИГУРАЦИЯ:</b></span>
                    <b-tabs>
                      <b-tab @click="selectTab" active><template slot="title"><img src="/assets/conf-image.png"></template></b-tab>
                      <b-tab @click="selectTab"><template slot="title"><img src="/assets/conf-image.png"></template></b-tab>
                      <b-tab @click="selectTab"><template slot="title"><img src="/assets/conf-image.png"></template></b-tab>
                      <b-tab @click="selectTab"><template slot="title"><img src="/assets/conf-image.png"></template></b-tab>
                      <b-tab @click="selectTab"><template slot="title"><img src="/assets/conf-image.png"></template></b-tab>
                      <b-tab @click="selectTab"><template slot="title"><img src="/assets/conf-image.png"></template></b-tab>
                    </b-tabs>
                  </div>
                  <div class="info-door">
                    <div class="info-door__large active"><span class="stage-title">4.<b>НАРУЖНАЯ ОТДЕЛКА:</b></span>
                      <div class="image"><img src="/assets/conf-door.png"></div><a class="button" href="#">выбрать отделку</a>
                      <p>выбрать отделку</p>
                    </div>
                    <div class="info-door__large"><span class="stage-title">6.<b>ВНУТРЕННЯЯ ОТДЕЛКА:</b></span>
                      <div class="image"><img src="/assets/conf-door.png"></div><a class="button" href="#">выбрать отделку</a>
                      <p>выбрать отделку</p>
                    </div>
                    <div class="info-door__conf"><span class="stage-title">8.<b>ТИП ОТКРЫВАНИЯ:</b></span>
                      <div class="info-door__conf-row">
                        <label class="sb-checkbox sb-checkbox--radio">
                          <input type="radio" v-model="open_type" value="out"><span></span>Наружу
                        </label>
                        <label class="sb-checkbox sb-checkbox--radio">
                          <input type="radio" v-model="open_type" value="in" ><span></span>Во внутрь + 600 р.
                        </label>
                      </div><span class="stage-title">9.<b>ЗАМКИ:</b></span>
                      <select>
                        <option>850mm</option>
                      </select><span class="stage-title">10.<b>УЛУЧШЕНИЯ:</b></span>
                      <div class="info-door__conf-col">
                        <label class="sb-checkbox">
                          <input type="checkbox" v-model="improvements" value="eyehole"><span></span>Глазок
                        </label>
                        <label class="sb-checkbox">
                          <input type="checkbox" v-model="improvements" value="heater_box"><span></span>Утеплитель коробки + 500 р.
                        </label>
                        <label class="sb-checkbox">
                          <input type="checkbox" v-model="improvements" value="closer"><span></span>Доводчик + 1500 р.
                        </label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="calculator-block__wrap-price">
                  <p>1080 р.*</p>
                  <div class="price-row"><span class="stage-title">11.<b>ДОСТАВКА:</b></span>
                    <select>
                      <option>550mm</option>
                    </select>
                  </div>
                  <div class="price-row"><span class="stage-title">12.<b>УСТАНОВКА:</b></span>
                    <select>
                      <option>550mm</option>
                    </select>
                  </div>
                  <a class="button" href="#">оформить заявку</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
  </div>
</template>

<script>
import vueSlider from 'vue-slider-component';

export default {
  components: {
    vueSlider
  },
  methods: {
    dragEnd: function (event) {},
    selectTab: function (event) {}
  },
  data () {
    return {
      width: 850,
      height: 2050,
      open_type: 'out',
      improvements: []
    }
  }
}
</script>
