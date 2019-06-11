$(function(){
  $(".slide-banner.owl-carousel").owlCarousel({
    // 1枚目→2枚目→3枚目→1枚目→2枚目→3枚目→1枚目...みたいにループさせる。
    loop:true,
    //次へボタン（owl-next）、前へボタン（owl-prev）をクリックすると画像が切り替わるようにする。
    nav:true,
    // 一度に表示するowl-itemの数を1つにする。
    items:1,
    // 自動でスライドが切り替わるようにする。
    autoplay:true,
    // 5秒ごとにスライドが自動で切り替わるように設定。
    autoplayTimeout:5000,
    //画像にホバーしている間はスライドが自動で切り替わらないようにする。
    autoplayHoverPause:true,
    //画像の切り替わりにかかる秒数を1秒に設定。
    smartSpeed: 1000
  });
  // owl-dotにホバーしたら表示が切り替わる
  $('.slide-banner .owl-dot').hover(function() {
    $(this).click();
  }, function() {});
});
