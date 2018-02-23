<template>

  <div class='col-md-4'>
          <div>
            <h2>{{ $t('nav_left.catalog') }}</h2>
            <div>
              <div>
                <div>
                  <h3>{{ $t('nav_left.by_stuff') }}</h3>
                  <ul v-for="stuff in stuffs">
                    <li>
                      <router-link :to="{ name: 'doors_stuff_path', params: { slug: `${stuff.id}-${stuff.name}` } }">{{ $t(`nav_left.stuff.${stuff.name}`) }}</router-link>
                    </li>
                  </ul>
                  
                  <h3>{{ $t('nav_left.by_use') }}</h3>
                  
                  <ul v-for="use in uses">
                    <li>
                      <router-link :to="{ name: 'doors_use_path', params: { slug: `${use.id}-${use.name}` } }">{{ $t(`nav_left.use.${use.name}`) }}</router-link>
                    </li>
                  </ul>
                </div>
                <div>
									<h3 class="vertical-nav__subtitle">По цене</h3>
									
									<ul class="vertical-nav__list">
										
										<li class="vertical-nav__item"><a href="/dvery/econom_class/" title="Входные двери эконом-класса от 6 700 руб." class="vertical-nav__link">Эконом-класса</a></li>										
										
										<li class="vertical-nav__item"><a href="/dvery/optima/" title="" class="vertical-nav__link">Оптима</a></li>										
										
										<li class="vertical-nav__item"><a href="/dvery/elitnie/" title="Элитные двери  от 15 800 руб." class="vertical-nav__link">Элитные</a></li>										
										
										<li class="vertical-nav__item"><a href="/dvery/eksklyuzivnie/" title="Эксклюзивные двери от 67 500 руб." class="vertical-nav__link">Эксклюзивные</a></li>										
										
									</ul>
									
									<h3 class="vertical-nav__subtitle">По конструкции</h3>
									
									<ul class="vertical-nav__list">
										
										<li class="vertical-nav__item"><a href="/dvery/dvustvorchatye/" title="Двустворчатые двери от 11 500 руб." class="vertical-nav__link">Двустворчатые</a></li>										
										
										<li class="vertical-nav__item"><a href="/dvery/arochnye/" title="Арочные двери от 37 500 руб." class="vertical-nav__link">Арочные</a></li>										
										
									</ul>
									
									<h2 class="vertical-nav__title">Комплектующие</h2>
									
									<ul class="vertical-nav__list">
										
										<li class="vertical-nav__item"><a href="/furnitura/zamki/" title="" class="vertical-nav__link">Замки</a></li>										
										
										<li class="vertical-nav__item"><a href="/furnitura/dvernye-ruchki/" title="" class="vertical-nav__link">Ручки</a></li>										
										
										<li class="vertical-nav__item"><a href="/furnitura/dvernye-glazki/" title="" class="vertical-nav__link">Глазки</a></li>										
										
										<li class="vertical-nav__item"><a href="/furnitura/bronenakladki/" title="" class="vertical-nav__link">Броненакладки</a></li>										
										
										<li class="vertical-nav__item"><a href="/dvery/s-s-videonablyudeniem/" title="" class="vertical-nav__link">Видеонаблюдение</a></li>										
										
										<li class="vertical-nav__item"><a href="/furnitura/otdelka/" title="" class="vertical-nav__link">Образцы отделки</a></li>										
										
									</ul>
									
									<h2 class="vertical-nav__title">Информация</h2>
									
									<ul class="vertical-nav__list">
										
										<li class="vertical-nav__item"><a href="/mediagalereya/nashi-raboty/" title="" class="vertical-nav__link">Фото работ</a></li>										
										
										<li class="vertical-nav__item"><a href="/mediagalereya/video/" title="" class="vertical-nav__link">Видео</a></li>										
										
										<li class="vertical-nav__item"><a href="/mediagalereya/print-katalog/" title="" class="vertical-nav__link">Печатный каталог</a></li>										
										
										<li class="vertical-nav__item"><a href="/o-nas/sertificaty/" title="" class="vertical-nav__link">Сертификаты</a></li>										
										
										<li class="vertical-nav__item"><a href="/o-nas/blagodarstvennye-pisma/" title="" class="vertical-nav__link">Благодарственные письма</a></li>										
										
										<li class="vertical-nav__item"><a href="/o-nas/partners/" title="" class="vertical-nav__link">Наши партнеры</a></li>										
										
										<li class="vertical-nav__item"><a href="/response/" title="" class="vertical-nav__link">Отзывы покупателей</a></li>										
										
										<li class="vertical-nav__item"><a href="/informacija/dogovor/" title="" class="vertical-nav__link">Образец договора</a></li>										
										
										<li class="vertical-nav__item"><a href="/informacija/konstrukcii-dverej/" title="" class="vertical-nav__link">Конструкции дверей</a></li>										
										
										<li class="vertical-nav__item"><a href="/faqs/" title="" class="vertical-nav__link">FAQ</a></li>										
										
										<li class="vertical-nav__item"><a href="/glossary/" title="" class="vertical-nav__link">Термины</a></li>										
										
										<li class="vertical-nav__item"><a href="/forum/" title="" class="vertical-nav__link">Форум</a></li>										
										
									</ul>
									
								</div>
								<div class="vertical-nav__col">
									<h2 class="vertical-nav__title">Покупателю</h2>
									
									<ul class="vertical-nav__list">
										
										<li class="vertical-nav__item"><a href="/kak-kupit/" title="" class="vertical-nav__link">Как купить</a></li>										
										
										<li class="vertical-nav__item"><a href="/dostavka-ustanovka.html" title="" class="vertical-nav__link">Доставка и установка </a></li>										
										
										<li class="vertical-nav__item"><a href="/zamershik.html" title="" class="vertical-nav__link">Вызвать замерщика</a></li>										
										
										<li class="vertical-nav__item"><a href="/roznica/" title="" class="vertical-nav__link">Наши преимущества</a></li>										
										
										<li class="vertical-nav__item"><a href="/dileram/" title="" class="vertical-nav__link">Дилерам</a></li>										
										
										<li class="vertical-nav__item"><a href="/soc_program/" title="" class="vertical-nav__link">Соц. программа</a></li>										
										
									</ul>
									
									<h2 class="vertical-nav__title"> Сервисы</h2>
									
									<ul class="vertical-nav__list">
										
										<li class="vertical-nav__item"><a href="/calcs/" title="" class="vertical-nav__link">Расчет двери онлайн</a></li>										
										
										<li class="vertical-nav__item"><a href="/podbor-dveri/" title="" class="vertical-nav__link">Подбор двери по параметрам</a></li>										
										
									</ul>
									
								</div>
							</div>
						</div>
					</div>
					<!-- end .vertical-nav-->
				</div>


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
