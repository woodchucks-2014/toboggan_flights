(function() {
  $(document).ready(function() {
    $('#vmap').vectorMap({
        map: 'world_en',
        backgroundColor: '#FFFFFF',
        color: '#2E4272',
        hoverOpacity: 0.8,
        selectedColor: '#73C988',
        enableZoom: true,
        showTooltip: false,
        values: sample_data,
        scaleColors: ['#3A6BDE', '#202B44'],
        normalizeFunction: 'polynomial',
        onRegionClick: function (event, code) {
          var map = $('#world-map').vectorMap('get', 'mapObject');
          var name = map.getRegionName(code);
          console.log(name);
        }
    });
  });

  // Check for geolocation support
  if (navigator.geolocation) {
      // Use method getCurrentPosition to get coordinates
      navigator.geolocation.getCurrentPosition(function (position) {
          // Access them accordingly
          alert(position.coords.latitude + ", " + position.coords.longitude);
      });
  }

})(jQuery);