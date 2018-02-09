import TurbolinksAdapter from 'vue-turbolinks';
import Vue from 'vue/dist/vue.esm'

Vue.use(TurbolinksAdapter)

document.addEventListener('turbolinks:load', () => {

  var element = document.getElementById("what_i_own_form")

  if (element != null) {
    var what_i_own = JSON.parse(element.dataset.what_i_own)
    // overview
    var overview = what_i_own.overview
    // complex
    var complex = what_i_own.complex
    var com_banks = complex.banks
    var com_superannuatins = complex.superannuations
    var com_shares = complex.shares
    var com_properties = complex.properties
    var com_other_debts = complex.other_debts
    var com_all_others = complex.all_others

    const app = new Vue({
      el: element,
      data: {
        open: false,
        simple_show: false,
        complex_show: false,
        overview: overview,
        complex: complex,
        ov_bank: this.overview.bank,
        ov_superannuation: this.overview.superannuation,
        ov_shares: this.overview.shares,
        ov_property: this.overview.property,
        ov_debt: this.overview.debt,
        ov_other: this.overview.other
      },
      computed: {
        // a computed getter
        reversedMessage: function () {
          // `this` points to the vm instance
          return this.message.split('').reverse().join('')
        }
      },
      methods: {
        toggle_open() {
          this.open = !this.open
        }
      }
    })
  }
})