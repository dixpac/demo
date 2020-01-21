import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["value"]

  static values = {
    payload: Object
  }

  changed() {
    let new_payload  = this.payloadValue 
    new_payload.value = this.valueTarget.value
    this.payloadValue = new_payload
  }
}