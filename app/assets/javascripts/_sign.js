$(function(){
  $(window).load(function () {
    var txt = 'を入力してください';
    var elem = null;
    $('.error:contains('+txt+')').each(function(){
        if($(this).text() == txt){
          elem = $(this);
          elem.css('display', 'none');
        }
    });
    // $(".error:contains('blank')").css('display', 'none');
  });
  $(window).load(function () {
    var txt = 'はすでに存在します';
    var elem = null;
    $('.error:contains('+txt+')').each(function(){
        if($(this).text() == txt){
          elem = $(this);
          elem.css('display', 'none');
        }
    });
    // $(".error:contains('already')").css('display', 'none');
  });
  $(window).load(function () {
    var txt = 'とPasswordの入力が一致しません';
    var elem = null;
    $('.error:contains('+txt+')').each(function(){
        if($(this).text() == txt){
          elem = $(this);
          elem.css('display', 'none');
        }
    });
    // $(".error:contains('match')").css('display', 'none');
  });
  $(window).load(function () {
    var txt = 'は6文字以上で入力してください';
    var elem = null;
    $('.error:contains('+txt+')').each(function(){
        if($(this).text() == txt){
          elem = $(this);
          elem.css('display', 'none');
        }
    });
    // $(".error:contains('short')").css('display', 'none');
  });
});