(function() {
  $(document).ready(function() {
    $('#vmap').vectorMap({
        map: 'world_en',
        backgroundColor: '#FFFFFF',
        color: '#2E4272',
        hoverOpacity: 0.8,
        selectedColor: '#73C988',
        enableZoom: true,
        showTooltip: true,
        values: sample_data,
        scaleColors: ['#3A6BDE', '#202B44'],
        normalizeFunction: 'polynomial'
    });
  });
})(jQuery);