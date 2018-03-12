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
                    <b-tabs v-model="layout_index">
                      <b-tab><template slot="title"><img src="/assets/conf-image.png"></template></b-tab>
                      <b-tab><template slot="title"><img src="/assets/conf-image.png"></template></b-tab>
                      <b-tab><template slot="title"><img src="/assets/conf-image.png"></template></b-tab>
                      <b-tab><template slot="title"><img src="/assets/conf-image.png"></template></b-tab>
                      <b-tab><template slot="title"><img src="/assets/conf-image.png"></template></b-tab>
                      <b-tab><template slot="title"><img src="/assets/conf-image.png"></template></b-tab>
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
                          <input type="checkbox" v-model="improvements" value="eye"><span></span>Глазок
                        </label>
                        <label class="sb-checkbox">
                          <input type="checkbox" v-model="improvements" value="box"><span></span>Утеплитель коробки + 500 р.
                        </label>
                        <label class="sb-checkbox">
                          <input type="checkbox" v-model="improvements" value="cl"><span></span>Доводчик + 1500 р.
                        </label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="calculator-block__wrap-price">
                  <p>{{ total }} р.*</p>
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
  data () {
    var lts = {
      b: {idx:0, name: 'base'},
      bt: {idx:1, name: 'base_top'},
      bs: {idx:2, name: 'base_side'},
      bts: {idx:3, name: 'base_top_side'},
      db: {idx:4, name: 'double_base'},
      dbt: {idx:5, name: 'double_base_top'}
    }

    var q = this.$route.query;
    return {
      width: q.w || 850,
      height: q.h || 2050,
      layout_index: q.lt && lts[q.lt].idx || lts.b.idx,
      open_type: q.ot || 'out',
      improvements: q.imvts && q.imvts.split(',') || [],
      layouts: lts
    }
  },
  computed: {
    total: function () {
      this.setPath();
      return this.width * 5;
    }
  },
  methods: {
    dragEnd: function (event) {},
    setPath: function () {
      var lt_key = 'b';
      for(var key in this.layouts) {
          if (this.layouts[key].idx == this.layout_index) {
              lt_key = key;
              break;
          }
      }
      this.$router.replace({
        path: 'calculator', query: {
          w: this.width,
          h: this.height,
          lt: lt_key,
          ot: this.open_type,
          imvts: this.improvements.length == 0 ? [] : this.improvements.join(',')
        }
      })
    }
  }
}
</script>
