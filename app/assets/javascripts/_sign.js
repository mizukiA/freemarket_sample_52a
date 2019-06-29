$(function(){
  $(window).load(function () {
    $(".error:contains('blank')").css('display', 'none');
    $(".error:contains('short')").css('display', 'none');
    $(".error:contains('match')").css('display', 'none');
    $(".error:contains('already')").css('display', 'none');
  });
});