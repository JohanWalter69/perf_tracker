import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dropdown"
export default class extends Controller {
  static targets = ['menu', 'overlay' ]

  toggle() {
    console.log('coucou');
    const overlay = document.querySelector('.overlay');
    const dropdown = document.querySelector('#menu');

    console.dir(overlay);
    console.dir(dropdown);

    this.menuTarget.classList.toggle('hidden');

    console.log(dropdown.classList.contains('hidden'));

    setTimeout(() => {
      if (!dropdown.classList.contains('hidden')){
        overlay.addEventListener('turbo:load', 'click', event => {
        dropdown.classList.add('hidden');
        });
      };
    }, 3);
  };
}
