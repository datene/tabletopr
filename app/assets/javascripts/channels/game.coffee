App.room = App.cable.subscriptions.create "MessagesChannel", 
connected: -> 
# Called when the subscription is ready for use on the server 
disconnected: -> 
# Called when the subscription has been terminated by the server 
received: (data) -> 
# Called when there's incoming data on the websocket for this channel 
  $('#messages').prepend data['message']
  if $('#message_user_id').val() is $('#current_user_id').val()
    $('.message').addClass('self')
  else
    $('.message').addClass('other')
speak: (message, user, game) -> 
 @perform 'speak', message: message, user: user, game: game

$(document).on 'keypress', '[data-behavior~=room_speaker]', (event) -> 
  if event.keyCode is 13 # return/enter = send 
    App.room.speak event.target.value, $('#message_user').val(), $('#message_game').val() 
    event.target.value = '' 
    event.preventDefault()
    $('.chat-placeholder').remove()

$ ->
  $.each $('.messages #message_user_id'), (message) ->
    if $(this).text() is $('#current_user_id').text()
      $(this).parent().addClass('self')
    else
      $(this).parent().addClass('other')