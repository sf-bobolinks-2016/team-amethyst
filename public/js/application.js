$(document).ready(function() {
  $('.question').on('click', function(event){
    event.preventDefault();
    var url = $(this).attr('href');
    var clickedQuestion = $(this)
    var reply = $.ajax({
      url: url,
      method: 'get'
      })

    reply.done(function(reply){
      console.log("Success!")
      console.log(reply)
      console.log("this in the second scope", this)
      $('#answer-holder' + reply.id).empty().append(reply.page).toggleClass('inactive').toggleClass('active')
    })

  })
});
