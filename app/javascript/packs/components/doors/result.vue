<template>
  <div class="wrapper content-page">
    <nav-top></nav-top>
    <main id="main" role="main">
      <div class="container">
        <div class="row">
          <nav-left></nav-left>
          <div class="col">
            <div class="catalog-block__title">Железные двери от производителя
              <p></p>
            </div>
            <div class="catalog-block__list">
              <div class="loading" v-if="loading">
                Loading...
              </div>
              <template v-for="door in doors">
                <a class="catalog-block__list-content-item" href="#">
                  <div class="image"><img v-bind:src="'/assets/img_storage/' + door.model_path"></div>
                  <p>{{ door.name }}</p><span>от {{ door.price }} руб.</span></a>
              </template>
            </div>
          </div>
        </div>
      </div>
    </main>
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