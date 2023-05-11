// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "./controllers"
import './vue_app'

const importFlowbiteFunc = function(flowbitePathStr)
{
    const flowbiteScriptEl = document.createElement('script')
    flowbiteScriptEl.setAttribute(
        'src', flowbitePathStr
    )
    document.body.appendChild(flowbiteScriptEl)
}
importFlowbiteFunc('./node_modules/flowbite/dist/flowbite.js') // here goes your path to a local flowbite.js you want to import

$("#slider").roundSlider({
  sliderType: "min-range",
  editableTooltip: false,
  radius: 140,
  width: 25,
  circleShape: "half-top",
  value: 40,
  lineCap: "round",
  mouseScrollAction: true,
  // Ligne ci dessous a refactoriser : comment sortir la fonction
  tooltipFormat: function (e) {
    var userLoad = $('#load').data('url');
    var val = e.value

    return val + "%" + "<div>" + userLoad*val/100 + " kg" + "<div>";
    // return val + "%" + "<div v-bind="load">" + {{username}}+ val/100 + " kg" + "<div>";
  },

});

// const dropdown = document.getElementById('menu');


// document.addEventListener('click', event => {
//   if (!dropdown.classList.contains('hidden')){
//       console.log(!dropdown.classList.contains('hidden'));
//       dropdown.classList.add('hidden')
//     }
//   });


// //  if (!this.menuTarget.classList.contains('hidden')){
// //     window.addEventListener('turbo:load', 'click', event => {
// //       this.menuTarget.classList.add('hidden');
// //     });
// //   };
const dropdown = document.querySelector('.dropdown');
const dropdownMenu = document.querySelector('.dropdown-menu');

// Fonction pour ouvrir le menu dropdown
function openDropdown() {
  dropdownMenu.classList.add('show');
  document.addEventListener('click', closeDropdown);
}

// Fonction pour fermer le menu dropdown
function closeDropdown(event) {
  if (!dropdown.contains(event.target)) {
    dropdownMenu.classList.remove('show');
    document.removeEventListener('click', closeDropdown);
  }
}

// Ajouter un événement de clic sur le menu dropdown pour l'ouvrir
dropdown.addEventListener('click', openDropdown);
