import Vue from 'vue/dist/vue.esm';
import Vuex from 'vuex';
Vue.use(Vuex);
import VueResource from 'vue-resource';
Vue.use(VueResource);  

import MusicianStore from './stores/musician_store';
import DoorStore from './stores/door_store';

const store = new Vuex.Store({
  modules: {
    MusicianStore,
    DoorStore
  }
});

export default store;
