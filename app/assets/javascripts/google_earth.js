var map;
var coord = $('#map').data();

function initMap() {
  var lat = coord.lat;
  var lng = coord.lng;
  map = new google.maps.Map(document.getElementById('map'), {
    center: coord,
    zoom: 12
  });
  var marker = new google.maps.Marker({
    position: coord,
    map: map
  })
}
