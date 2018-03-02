<template>
  <b-navbar class="navbar-expand-md">
    <b-collapse is-nav id="nav_collapse">
      <b-nav vertical class="sidebar-nav">
        	<b-nav-text><h2>{{ $t('nav_left.catalog') }}</h2></b-nav-text>
          <b-nav-text><h3>{{ $t('nav_left.by_stuff') }}</h3></b-nav-text>
          <template v-for="stuff in stuffs">
            <b-nav-item :to="{ name: 'doors_stuff_path', params: { slug: `${stuff.id}-${stuff.name}` } }">{{ $t(`nav_left.stuff.${stuff.name}`) }}</b-nav-item>
          </template>
          <b-nav-text><h3>{{ $t('nav_left.by_use') }}</h3></b-nav-text>
          <template v-for="use in uses">
            <b-nav-item :to="{ name: 'doors_use_path', params: { slug: `${use.id}-${use.name}` } }">{{ $t(`nav_left.use.${use.name}`) }}</b-nav-item>
          </template>
          <b-nav-text><h2>{{ $t('nav_left.services') }}</h2></b-nav-text>
          <b-nav-item :to="{ name: 'doors_calculator_path' }">{{ $t('nav_left.doors_calculator') }}</b-nav-item>
      </b-nav>
    </b-collapse>
  </b-navbar>
</template>

<script>
export default {

  data: function() {
    return navLeftData;
  },
  
  methods: {
  }
}
</script>
