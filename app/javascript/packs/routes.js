import Vue from 'vue/dist/vue.esm';
import VueRouter from 'vue-router';
Vue.use(VueRouter);

import HomeIndex from './components/home/index.vue';
import HomeAbout from './components/home/about.vue';
import HomeCertificate from './components/home/certificate.vue';
import HomeReferences from './components/home/references.vue';
import HomeFeedbacks from './components/home/feedbacks.vue';
import HomeProducts from './components/home/products.vue';
import HomeGalleries from './components/home/galleries.vue';
import HomeFurniture from './components/home/furniture.vue';
import HomePrice from './components/home/price.vue';
import HomeContacts from './components/home/contacts.vue';
import DoorsIndex from './components/doors/index.vue';
import DoorsResult from './components/doors/result.vue';
import DoorDetails from './components/doors/details.vue';
import DoorsCalculator from './components/doors/calculator.vue';

const router = new VueRouter({
  mode: 'history',
  base: `${I18n.prefix}`,
  routes: [
    { path: '/', component: HomeIndex, name: 'root_path' },
    { path: '/about/us', component: HomeAbout, name: 'about_us_path' },
    { path: '/about/certificate', component: HomeCertificate, name: 'about_certificate_path' },
    { path: '/about/references', component: HomeReferences, name: 'about_references_path' },
    { path: '/about/feedbacks', component: HomeFeedbacks, name: 'about_feedbacks_path' },
    { path: '/products', component: HomeProducts, name: 'products_path' },
    { path: '/galleries', component: HomeGalleries, name: 'galleries_path' },
    { path: '/furniture', component: HomeFurniture, name: 'furniture_path' },
    { path: '/price', component: HomePrice, name: 'price_path' },
    { path: '/contacts', component: HomeContacts, name: 'contacts_path' },
    { path: '/doors', component: DoorsIndex, name: 'doors_path' },
    { path: '/doors/stuff/:slug', component: DoorsResult, name: 'doors_stuff_path' },
    { path: '/doors/use/:slug', component: DoorsResult, name: 'doors_use_path' },
    { path: '/door/:slug', component: DoorDetails, name: 'door_details_path' },
    { path: '/doors/calculator', component: DoorsCalculator, name: 'doors_calculator_path' }
  ]
});

export default router;
