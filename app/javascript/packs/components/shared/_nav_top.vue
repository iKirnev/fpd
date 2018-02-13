<template>

  <b-navbar toggleable="md" type="dark" variant="info">

    <b-navbar-toggle target="nav_collapse"></b-navbar-toggle>

    <b-collapse is-nav id="nav_collapse">

      <b-navbar-nav>

        <b-nav-item-dropdown :class="activeOn(['about_path'])">
          <template slot="button-content">
            {{ $t('nav.about.company') }}
          </template>
          <b-dropdown-item href="/about">{{ $t('nav.about.us') }}</b-dropdown-item>
          <b-dropdown-item href="/about/certificate">{{ $t('nav.about.certificate') }}</b-dropdown-item>
          <b-dropdown-item href="/about/references">{{ $t('nav.about.references') }}</b-dropdown-item>
          <b-dropdown-item href="/about/feedbacks">{{ $t('nav.about.feedbacks') }}</b-dropdown-item>
        </b-nav-item-dropdown>
        <b-nav-item-dropdown :class="activeOn(['doors_path'])">
          <template slot="button-content">
            {{ $t('nav.doors.catalog') }}
          </template>
          <b-dropdown-item href="/products">{{ $t('nav.products') }}</b-dropdown-item>
          <b-dropdown-item href="/doors/fasad">{{ $t('nav.doors.fasad') }}</b-dropdown-item>
          <b-dropdown-item href="/doors/appointment">{{ $t('nav.doors.appointment') }}</b-dropdown-item>
          <b-dropdown-item href="/doors/price">{{ $t('nav.doors.price') }}</b-dropdown-item>
        </b-nav-item-dropdown>
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
