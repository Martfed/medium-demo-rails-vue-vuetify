require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import Vue from 'vue/dist/vue.esm';
import TurbolinksAdapter from 'vue-turbolinks';
import Vuetify from 'vuetify';
import 'vuetify/dist/vuetify.min.css';
import axios from "axios";
import './components';

const token = document.querySelector('meta[name="csrf-token"]');
if (token) axios.defaults.headers.common['X-CSRF-Token'] = token.getAttribute('content');

Vue.use(TurbolinksAdapter);
Vue.use(Vuetify);
const vuetify = new Vuetify();

document.addEventListener('turbolinks:load', () => {
  new Vue({
    el: '[data-behavior="vue"]',
    vuetify,
  });
});
