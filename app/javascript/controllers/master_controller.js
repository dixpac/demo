import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["observation"]

  submit() {
    let payload = []
    this.observationTargets.forEach((el, i) => {
      const data = JSON.parse(el.getAttribute("data-payload"))
      payload.push(data)
    })

    console.log(payload)
  }
}