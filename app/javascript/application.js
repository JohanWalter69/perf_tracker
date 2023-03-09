// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "./controllers"

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
  },

});
