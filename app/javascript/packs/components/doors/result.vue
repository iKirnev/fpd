<template>
  <div class="wrapper content-page">
    <nav-top></nav-top>
    <main id="main" role="main">
      <div class="container">
        <div class="row">
          <nav-left></nav-left>
          <div class="col">
            <div class="catalog">
              <div class="container">
                <div class="catalog__title">Хиты продаж
                  <p>Если у вас возникли сложности с выбором, ознакомьтесь с предложением ниже. Это самые популярные двери, их чаще всего покупают. Список отсортирован по стоимости: от низкой к высокой.</p>
                </div>
                <div class="catalog__wrap">
                  <div class="loading" v-if="loading">
                    Loading...
                  </div>
                  <template v-for="door in doors">
                    <router-link class="catalog__item" :to="{name: 'door_details_path', params: { slug: door.slug}}">
                      <div class="image"><img v-bind:src="'/assets/img_storage/doors/models/' + door.model_small_path"></div>
                      <p class="sub-title">{{ door.a_key }} {{ door.name }}</p>
                      <p class="price">{{ door.price }} р.</p><span class="button">купить</span>
                    </router-link>
                  </template>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
    <my-footer></my-footer>
  </div>
</template>

<script>
export default {
  data: function() {
    return this.$store.state.DoorStore;
  },
  created: function() {
     this.fetchData();
  },
  watch: {
    // call again the method if the route changes
    '$route': 'fetchData'
  },
  methods: {
    fetchData () {
      this.$store.dispatch('DoorStore/result', this.$route.params);
    }
  }
}
</script>