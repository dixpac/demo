import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["value"]

  changed() {
    let new_payload  = this.payloadValue 
    new_payload.value = this.valueTarget.value
    this.payload = new_payload
  }

  get payload() {
    JSON.parse(this.element.getAttribute('data-payload'))
  }

  set payload(value) {
    this.element.setAttribute('data-payload', JSON.stringify(value))
  }
}