$(function(){
    $('.item-slide_banner-small__sub').on('mouseover',function(){
        var src = $(this).attr('src');
        var test = document.getElementById("test");
        test.innerHTML = `<img src="${src}" class="item-slide_banner__main-image">`;
    });
});