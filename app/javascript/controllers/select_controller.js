import { Controller } from "stimulus"
import  SlimSelect from 'slim-select'
import "slim-select/src/slim-select/slimselect.scss"

export default class extends Controller {
  static targets = ['chooser']

  connect() {
    var _that = this;

    const select = new SlimSelect({
      select: this.chooserTarget,
      //placeholder: this.element.dataset.placeholder,
      allowDeselect: true,
      allowDeselectOption: true,
      onChange: (info) => {
        const new_value = info.map(value => ({code: value.value}))
        _that.payload = new_value
      }
    })
  }

  get payload() {
    JSON.parse(this.element.getAttribute('data-payload'))
  }

  set payload(value) {
    this.element.setAttribute('data-payload', JSON.stringify(value))
  }
}