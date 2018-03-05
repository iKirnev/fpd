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
            <template v-for="door in doors">
              {{ door.name }}
            </template>
            <div class="catalog-block__list">
               <a class="catalog-block__list-content-item" href="#">
                <div class="image"><img src="/assets/img_storage/doors/gallery/IMG_5623.JPG"></div>
                <p>Решетчатые двери</p><span>от 7600 руб.</span></a>
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