// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"

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
