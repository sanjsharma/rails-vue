import TurbolinksAdapter from 'vue-turbolinks';
import Vue from 'vue/dist/vue.esm'

Vue.use(TurbolinksAdapter)

document.addEventListener('turbolinks:load', () => {

  var element = document.getElementById("core_info_form")

  if (element != null) {
    var core_data = JSON.parse(element.dataset.coreInfo)
    var gender = core_data.gender
    var married = core_data.married
    var age = core_data.age
    var home_owner = core_data.home_owner

    const app = new Vue({
      el: element,
      data: {
        open: false,
        gender: gender,
        married: married,
        age: 50,
        home_owner: home_owner,
      },
      methods: {
        toggle_open() {
          this.open = !this.open
        },
        set_age(){
          console.log(this.age)
        }
      }
    })
  }
})
