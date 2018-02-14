<template>

  <b-navbar toggleable="md" type="dark" variant="info">

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
        <b-nav-item :to="{ name: 'products_path' }">{{ $t('nav.products') }}</b-nav-item>
      </b-navbar-nav>

    </b-collapse>
</b-navbar>


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
    locale: function(locale) {
      let redirectTo = `/${locale}${this.$route.path}`;
      if(locale == this.availableLocales[0]) {
        redirectTo = `${this.$route.path}`
      }

      window.location.href = redirectTo;
    }
  }
}
</script>
