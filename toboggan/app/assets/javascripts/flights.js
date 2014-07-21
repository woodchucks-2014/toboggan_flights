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
        onRegionClick: function(element, code, region){
          $('#flight_ending_airport').val(region);
        }
    });

  var x = document.getElementById("flight_ending_airport");

  // function getLocation(){
  //     if (navigator.geolocation){navigator.geolocation.getCurrentPosition(function(position){
  //       {x.innerHTML("yo:" + position.coords.latitude);
  //       };
  //     })
  //     };
  //       };
  //     };

  var lattitude;
  var longitude;
  function getLocation(){
    if (navigator.geolocation){
      navigator.geolocation.getCurrentPosition(function(position){
         var lattitude = position.coords.latitude;
         var longitude = position.coords.longitude;

      });
    }
  };


   getLocation();
   console.log(lattitude);
  });

