$(document).on('turbolinks:load',function(){
    $('.a').on('click',function(){
        $(this).addClass('active')
        $('.b').removeClass('active')
        $('#user-main__content-todo').css({
            "display": "block"
        });
        $('#user-main__content-notification').css({
            "display": "none"
        })
    });
    $('.b').on('click',function(){
        $(this).addClass('active')
        $('.a').removeClass('active')
        $('#user-main__content-todo').css({
            "display": "none"
        });
        $('#user-main__content-notification').css({
            "display": "block"
        })
    });
    $('.c').on('click',function(){
        $(this).addClass('active')
        $('.d').removeClass('active')
        $('#user-main__content-deal').css({
            "display": "block"
        })
        $('#user-main__content-old').css({
            "display": "none"
        })
    });
    $('.d').on('click',function(){
        $(this).addClass('active')
        $('.c').removeClass('active')
        $('#user-main__content-deal').css({
            "display": "none"
        })
        $('#user-main__content-old').css({
            "display": "block"
        })
    });
})
