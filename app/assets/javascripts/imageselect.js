$(document).on('ready', function() {
  $(".player-picker").imagepicker();



  $('#toggleAll').on('click',function(){
    // click event listener
    $('.thumbnail').addClass("selected");

    if($(this).attr('aria-pressed')=='false'){

      //checks if toggled on or off, any other property can be used
      $(".player-picker").find($('option')).prop("selected", "selected");
      //looks for the image picker option list and sets everything to selected
      $(".player-picker").data('picker').sync_picker_with_select();
      //now triggers the sync function to reinitialise all of the selected images.
    } else {
      //does the exact opposite of above.
      $(".player-picker").find($('option')).prop("selected", false);
      $(".player-picker").data('picker').sync_picker_with_select();
    }
  });

  $(".player-picker").imagepicker();

  $(".player_names li").each(function(index, item) {
    $('.thumbnail').eq(index).append("<p>" + $(item).text() + "</p>");
  });

});