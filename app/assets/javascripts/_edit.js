$(document).on('turbolinks:load',function(){
    $('.image-box-list').on('click', '.js-remove',function(){
        var a = $(this).data('index');
        $(`.js-destroy[data-index="${a}"]`).prop("checked",true) 
        $(`.file[data-index="${a}"]`).remove(); 
        $(this).parent().parent().remove();
        if ($('.image-count').length < 10) {
            $('.js-label').show();
        } 
    })
    $('.image-box').on("change",'.file',function(e){
        var number = $(this).data('index')
        var file = e.target.files[0];
        var reader = new FileReader();
        reader.onloadend = (function(file){
            return function(e){
                var image = `<li class="image-count edit-image"> <figure><img src="${e.target.result}"></figure> <div><a class="border">編集</a><a data-index="${number}" class="js-remove delete">削除</a></div> </li> `
                $('.js-label').before(image)
                var image_length = $('.image-count').length
                if (image_length >= 10){
                    $('.js-label').hide();
                } 
            }
        })(file);
        reader.readAsDataURL(file);
        var next_form = `<input type="file" name="item[item_images_attributes][${number + 10}][image_url]" id="item_item_images_attributes_${number + 10}_imageurl" data-index="${number + 10}" class="file">`
        $('.js-label').attr('for',`item_item_images_attributes_${number + 10}_imageurl`)
        $('.js-label').append(next_form)

    });

  });