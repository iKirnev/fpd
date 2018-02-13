import Vue from 'vue/dist/vue.esm';
import VueRouter from 'vue-router';
Vue.use(VueRouter);

import HomeIndex from './components/home/index.vue';
import HomeAbout from './components/home/about.vue';
import HomeCertificate from './components/home/certificate.vue';
import HomeReferences from './components/home/references.vue';
import HomeFeedbacks from './components/home/feedbacks.vue';
import HomeProducts from './components/home/products.vue';
import DoorsIndex from './components/doors/index.vue';

const router = new VueRouter({
  mode: 'history',
  base: `${I18n.prefix}`,
  routes: [
    { path: '/', component: HomeIndex, name: 'root_path' },
    { path: '/about', component: HomeAbout, name: 'about_path' },
    { path: '/about/certificate', component: HomeAbout, name: 'about_path' },
    { path: '/about/references', component: HomeAbout, name: 'about_path' },
    { path: '/about/feedbacks', component: HomeAbout, name: 'about_path' },
    { path: '/products', component: HomeProducts, name: 'doors_path' },
    { path: '/doors/:by', component: DoorsIndex, name: 'doors_path' }
  ]
});

export default router;
