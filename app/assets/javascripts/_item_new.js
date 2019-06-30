$(document).on('turbolinks:load',function(){
    $('#item_item_images_attributes_0_image_url').change(function(e){
        var file = e.target.files[0];
        var reader = new FileReader();
        reader.onloadend = (function(file){
          return function(e){
            var image = `<li class="image-count"> <figure><img src="${e.target.result}"></figure> <div><a  class="border">編集</a><a class="delete0">削除</a></div> </li> `
            $('.image-box-list').append(image)
            $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(1)').css('display','none');
            $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(2)').css({'display':'block','width':'491px'});
            $('.delete0').on('click',function(){
                $(this).parent().parent().remove();
                $('#item_item_images_attributes_0_image_url').val("")
                bunki();
            });
        };
    })(file);
        reader.readAsDataURL(file);
    });
    $('#item_item_images_attributes_1_image_url').change(function(e){
        var file = e.target.files[0];
        var reader = new FileReader();
        reader.onloadend = (function(file){
          return function(e){
            var image = `<li class="image-count"> <figure><img src="${e.target.result}"></figure> <div><a  class="border">編集</a><a class="delete1">削除</a></div> </li> `
            $('.image-box-list').append(image)
            $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(2)').css('display','none');
            $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(3)').css({'display':'block','width':'363px'});
            $('.delete1').on('click',function(){
                $(this).parent().parent().remove();
                $('#item_item_images_attributes_1_image_url').val("")
                bunki();
            });
        };
    })(file);
        reader.readAsDataURL(file);
    });
    $('#item_item_images_attributes_2_image_url').change(function(e){
        var file = e.target.files[0];
        var reader = new FileReader();
        reader.onloadend = (function(file){
          return function(e){
            var image = `<li class="image-count"> <figure> <img src="${e.target.result}"> </figure> <div> <a class="border">編集</a><a class="delete2">削除</a> </div> </li>`
            $('.image-box-list').append(image)
            $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(3)').css('display','none');
            $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(4)').css({'display':'block','width':'234px'});
            $('.delete2').on('click',function(){
                $(this).parent().parent().remove();
                $('#item_item_images_attributes_2_image_url').val("")
                bunki();
            });
        };
    })(file);
        reader.readAsDataURL(file);
    });
    $('#item_item_images_attributes_3_image_url').change(function(e){
        var file = e.target.files[0];
        var reader = new FileReader();
        reader.onloadend = (function(file){
          return function(e){
            var image = `<li class="image-count"> <figure> <img src="${e.target.result}"> </figure> <div> <a class="border">編集</a><a class="delete3">削除</a> </div> </li>`
            $('.image-box-list').append(image)
            $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(4)').css('display','none');
            $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(5)').css({'display':'block','width':'106px'});
            $('.delete3').on('click',function(){
                $(this).parent().parent().remove();
                $('#item_item_images_attributes_3_image_url').val("")
                bunki();
            });
        };
    })(file);
        reader.readAsDataURL(file);
    });
    $('#item_item_images_attributes_4_image_url').change(function(e){
        var file = e.target.files[0];
        var reader = new FileReader();
        reader.onloadend = (function(file){
          return function(e){
            var image = `<li class="image-count"> <figure> <img src="${e.target.result}"> </figure> <div> <a class="border">編集</a><a class="delete4">削除</a> </div> </li>`
            $('.image-box-list').append(image)
            $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(5)').css('display','none');
            $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(6)').css({'display':'block','width':'620px'});
            $('.delete4').on('click',function(){
                $(this).parent().parent().remove();
                $('#item_item_images_attributes_4_image_url').val("")
                bunki();
            });
        };
    })(file);
        reader.readAsDataURL(file);
    });
    $('#item_item_images_attributes_5_image_url').change(function(e){
        var file = e.target.files[0];
        var reader = new FileReader();
        reader.onloadend = (function(file){
          return function(e){
            var image = `<li class="image-count"> <figure> <img src="${e.target.result}"> </figure> <div> <a class="border">編集</a><a class="delete5">削除</a> </div> </li>`
            $('.image-box-list').append(image)
            $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(6)').css('display','none');
            $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(7)').css({'display':'block','width':'491px'});
            $('.delete5').on('click',function(){
                $(this).parent().parent().remove();
                $('#item_item_images_attributes_5_image_url').val("")
                bunki();
            });
        };
    })(file);
        reader.readAsDataURL(file);
    });
    $('#item_item_images_attributes_6_image_url').change(function(e){
        var file = e.target.files[0];
        var reader = new FileReader();
        reader.onloadend = (function(file){
          return function(e){
            var image = `<li class="image-count"> <figure> <img src="${e.target.result}"> </figure> <div> <a class="border">編集</a><a class="delete6">削除</a> </div> </li>`
            $('.image-box-list').append(image)
            $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(7)').css('display','none');
            $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(8)').css({'display':'block','width':'363px'});
            $('.delete6').on('click',function(){
                $(this).parent().parent().remove();
                $('#item_item_images_attributes_6_image_url').val("")
                bunki();
            });
        };
    })(file);
        reader.readAsDataURL(file);
    });
    $('#item_item_images_attributes_7_image_url').change(function(e){
        var file = e.target.files[0];
        var reader = new FileReader();
        reader.onloadend = (function(file){
          return function(e){
            var image = `<li class="image-count"> <figure> <img src="${e.target.result}"> </figure> <div> <a class="border">編集</a><a class="delete7">削除</a> </div> </li>`
            $('.image-box-list').append(image)
            $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(8)').css('display','none');
            $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(9)').css({'display':'block','width':'234px'});
            $('.delete7').on('click',function(){
                $(this).parent().parent().remove();
                $('#item_item_images_attributes_7_image_url').val("")
                bunki();
            });
        };
    })(file);
        reader.readAsDataURL(file);
    });
    $('#item_item_images_attributes_8_image_url').change(function(e){
        var file = e.target.files[0];
        var reader = new FileReader();
        reader.onloadend = (function(file){
          return function(e){
            var image = `<li class="image-count"> <figure> <img src="${e.target.result}"> </figure> <div> <a class="border">編集</a><a class="delete8">削除</a> </div> </li>`
            $('.image-box-list').append(image)
            $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(9)').css('display','none');
            $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(10)').css({'display':'block','width':'106px'});
            $('.delete8').on('click',function(){
                $(this).parent().parent().remove();
                $('#item_item_images_attributes_8_image_url').val("")
                bunki();
            });
        };
    })(file);
        reader.readAsDataURL(file);
    });
    $('#item_item_images_attributes_9_image_url').change(function(e){
        var file = e.target.files[0];
        var reader = new FileReader();
        reader.onloadend = (function(file){
          return function(e){
            var image = `<li class="image-count"> <figure> <img src="${e.target.result}"> </figure> <div> <a class="border">編集</a><a class="delete9">削除</a> </div> </li>`
            $('.image-box-list').append(image)
            $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(10)').css('display','none');
            $('.delete9').on('click',function(){
                $(this).parent().parent().remove();
                $('#item_item_images_attributes_9_image_url').val("")
                bunki();
            });
        };
    })(file);
        reader.readAsDataURL(file);
    });        
    var bunki = function(){
        var list = $('.image-count').length;
                switch( list ){
                    case 0 :
                        $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(1)').css('display','block');
                        $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(2)').css({'display':'none'});
                        break;
        
                    case 1 :
                        $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(2)').css({'display':'block','width':'491px'});
                        $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(3)').css({'display':'none'});
                        break;
                    
                    case 2 :
                        $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(3)').css({'display':'block','width':'363px'});
                        $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(4)').css({'display':'none'});
                        break;
        
                    case 3 :
                        $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(4)').css({'display':'block','width':'234px'});
                        $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(5)').css({'display':'none'});
                        break;
        
                    case 4 :
                        $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(5)').css({'display':'block','width':'106px'});
                        $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(6)').css({'display':'none'});
                        break;
            
                    case 5 :
                        $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(6)').css({'display':'block','width':'620px'});
                        $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(7)').css({'display':'none'});
                        break;
                    
                    case 6 :
                        $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(7)').css({'display':'block','width':'491px'});
                        $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(8)').css({'display':'none'});
                        break;
        
                    case 7 :
                        $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(8)').css({'display':'block','width':'363px'});
                        $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(9)').css({'display':'none'});
                        break;
        
                    case 8 :
                        $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(9)').css({'display':'block','width':'234px'});
                        $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(10)').css({'display':'none'});
                        break;
            
                    case 9 :
                        $('.sell-container__inner__form__uploader-box__container__item:nth-of-type(10)').css({'display':'block','width':'106px'});
                        break;   
                }
            }
});
