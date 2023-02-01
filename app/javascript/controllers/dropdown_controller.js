import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dropdown"
export default class extends Controller {
  static targets = ['menu']

  connect() {
    console.log("je suis dans le controller")
  }

  toggle() {
    this.menuTarget.classList.toggle('hidden');
  }
}
