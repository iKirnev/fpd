<template>
  <header>
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-4 col-xs-12">
          <div class="logo"><router-link :to="{name: 'root_path'}"><img src="/assets/logo.png"></router-link>
          </div>
        </div>
        <div class="col-md-4 col-xs-12 back-call"><a class="button" href="tel:+74955457405">ОБРАТНЫЙ ЗВОНОК</a></div>
        <div class="col-md-4 col-xs-12 tel">
          <ul>
            <li>+7 (495) 545-74-05</li>
            <li>+7 (915) 232-66-77</li>
          </ul>
          <p>с 9.00 до 22.00 без выходных</p>
        </div>
      </div>
      <b-navbar class="navbar navbar-expand-lg navbar-light bg-light">
        <b-navbar-toggle target="nav_collapse"></b-navbar-toggle>
        <b-collapse is-nav id="nav_collapse">
          <b-navbar-nav>
            <b-nav-item-dropdown :class="activeOn(['about_us_path','about_certificate_path','about_references_path','about_feedbacks_path'])">
              <template slot="button-content">
                {{ $t('nav.about.company') }}
              </template>
              <b-dropdown-item :to="{ name: 'about_us_path' }">{{ $t('nav.about.us') }}</b-dropdown-item>
              <b-dropdown-item :to="{ name: 'about_certificate_path' }">{{ $t('nav.about.certificate') }}</b-dropdown-item>
              <b-dropdown-item :to="{ name: 'about_references_path' }">{{ $t('nav.about.references') }}</b-dropdown-item>
              <b-dropdown-item :to="{ name: 'about_feedbacks_path' }">{{ $t('nav.about.feedbacks') }}</b-dropdown-item>
            </b-nav-item-dropdown>
            <b-nav-item :to="{ name: 'products_path' }" :class="activeOn(['products_path'])">{{ $t('nav.products') }}</b-nav-item>
            <b-nav-item :to="{ name: 'galleries_path' }" :class="activeOn(['galleries_path'])">{{ $t('nav.galleries') }}</b-nav-item>
            <b-nav-item :to="{ name: 'furniture_path' }" :class="activeOn(['furniture_path'])">{{ $t('nav.furniture') }}</b-nav-item>
            <b-nav-item :to="{ name: 'price_path' }" :class="activeOn(['price_path'])">{{ $t('nav.price') }}</b-nav-item>
            <b-nav-item :to="{ name: 'contacts_path' }" :class="activeOn(['contacts_path'])">{{ $t('nav.contacts') }}</b-nav-item>
            
          </b-navbar-nav>
        </b-collapse>
      </b-navbar>
    </div>
    <div xclass="send-request"><a href="#"></a></div>
  </header>
</template>

<script>
export default {

  data: function() {
    return {
      locale: window.I18n.locale,
      availableLocales: window.I18n.availableLocales
    }
  },

  methods: {
    activeOn: function(paths) {
      if(paths.includes(this.$route.name)) {
        return 'active';
      } else {
        return '';
      }
    }
  },

  watch: {
  }
}
</script>
