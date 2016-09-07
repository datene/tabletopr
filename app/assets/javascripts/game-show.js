$(document).ready(function() {
  $(window).scroll(function () {
    console.log($(window).scrollTop())
    if ($(window).scrollTop() > 120) {
      $('.chat').addClass('chat-fixed');
    }
    if ($(window).scrollTop() < 121) {
      $('.chat').removeClass('chat-fixed');
    }
  });
});
