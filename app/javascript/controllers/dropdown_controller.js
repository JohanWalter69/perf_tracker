import { Controller } from "@hotwired/stimulus"
import "flowbite"

// Connects to data-controller="dropdown"
export default class extends Controller {
  static targets = ['menu', 'overlay' ]

  toggle() {
    // const overlay = document.querySelectorAll('.overlay');
    // const dropdown = document.querySelector('#menu');

    this.menuTarget.classList.toggle('hidden');

    if (!this.menuTarget.classList.contains('hidden')){
      window.addEventListener('turbo:load', 'click', event => {
        this.menuTarget.classList.add('hidden');
      });
    };

    // setTimeout(() => {
    //   if (!dropdown.classList.contains('hidden')){
    //     overlay.addEventListener('turbo:load', 'click', event => {
    //     dropdown.classList.add('hidden');
    //     });
    //   };
    // }, 3);
  };
}
