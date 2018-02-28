import Vue from 'vue/dist/vue.esm';
import VueI18n from 'vue-i18n';
import store from './vuex';
import router from './routes.js';
import './filters/strings.js';
import helpers from './helpers';
import BootstrapVue from 'bootstrap-vue'
Vue.use(BootstrapVue);
import VueAwesomeSwiper from 'vue-awesome-swiper'
Vue.use(VueAwesomeSwiper, /* { default global options } */)
import VmBackTop from 'vue-multiple-back-top'
Vue.component(VmBackTop.name, VmBackTop)
import NavTop from './components/shared/_nav_top';
Vue.component('nav-top', NavTop);
import NavLeft from './components/shared/_nav_left';
Vue.component('nav-left', NavLeft);
import MyFooter from './components/shared/_my_footer';
Vue.component('my-footer', MyFooter);
import Banners from './components/shared/_banners';
Vue.component('banners', Banners);
import Bestsellers from './components/shared/_bestsellers';
Vue.component('bestsellers', Bestsellers);
/*
$.ajaxSetup({
  beforeSend: function(xhr) {
    xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'));
  }
})
$.ajaxPrefilter(function( options ) {
  options.url = `/${I18n.prefix}api/${options.url}`;
});
*/
Vue.use(VueI18n);
const i18n = new VueI18n({
  locale: 'current',
  messages: translations
})

const app = new Vue({
  i18n,
  router,
  store
}).$mount('#app')
