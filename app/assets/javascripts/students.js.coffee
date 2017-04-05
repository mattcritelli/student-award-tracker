###

$(document).on('ready', function(){
  $("input").focus(function(){
    $(this).parent().addClass("curFocus");
  });
  $("input").blur(function(){
    $(this).parent().removeClass("curFocus");
  });
})

###

$(document).on 'ready', ->
  $('input').focus ->
    $(this).parent().addClass("curFocus")
  $('input').blur ->
    $(this).parent().removeClass("curFocus")
