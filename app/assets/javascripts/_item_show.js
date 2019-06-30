$(document).on('turbolinks:load',function(){
    var slideWidth = $('.item-slide_banner-set-main').outerWidth();
    var slideNum = $('.item-slide_banner-set-main').length;
    var slideSetWidth = slideWidth * slideNum;
    $('.item-slide_banner-set').css('width',slideSetWidth);
    $('.item-slide_banner-small__sub').on('mouseover',function(){
        var i = $(this).index();
        $('.item-slide_banner-set').animate({
            left: i * -slideWidth
        },{duration: 'slow'});
    });
});
    