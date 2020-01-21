/* eslint no-console: 0 */
// Run this example by adding <%= javascript_pack_tag 'hello_vue' %> (and
// <%= stylesheet_pack_tag 'hello_vue' %> if you have styles in your component)
// to the head of your layout file,
// like app/views/layouts/application.html.erb.
// All it does is render <div>Hello Vue</div> at the bottom of the page.

//import Vue from 'vue'
import Vue from 'vue/dist/vue.esm'
import App from '../app.vue'
import TurbolinksAdapter from "vue-turbolinks"
import VueResource from 'vue-resource'

Vue.use(TurbolinksAdapter)
Vue.use(VueResource)

document.addEventListener('turbolinks:load', () => {
  Vue.http.headers.common['X-CSRF-Token'] = document.querySelector('meta[name="csrf-token"]').getAttribute('content')
  var element = document.getElementById("observations-form")

  if (element != null) {
    var observations = JSON.parse(element.dataset.observations)
    const app = new Vue({
      el: element,
      data: () => {
        return {
          observations: observations 
        }
      },
      methods: {
        submit: function() {
          this.$http.put(`/observations/1`, { observations: this.observations }).then(response => {
            //Turbolinks.visit(`/teams/${response.body.id}`)
            console.log(response)
          }, response => {
            console.log(response)
          })
        }
      }
    })
  }
})
