<template>
  <Header/>
  <Hero/>
  <NumberBox/>
  <Footer/>
 
</template>

<script>

import Header from './components/Header.vue'
import Hero from './components/Hero.vue'
import Footer from './components/Footer.vue'
import NumberBox from './components/NumberBox.vue'

export default {
  name: 'App',
  components: {
    Header,
    Hero,
    Footer,
    NumberBox
  }
}
</script>

<style>

</style>
