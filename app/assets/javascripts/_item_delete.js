$(function(){
    $(".item__delete").on('click',function(){
        $(this).blur();
        $("body").append('<div id="modal-overlay" ></div>');
        $("#modal-overlay").fadeIn("slow");
        $('.edit_and_delete').css('display','block')
        $('body').css('overflow','hidden')
    });
    $("#cancel,#modal-overlay").unbind().click(function(){
        $('.edit_and_delete').css('display','none');
        $("#modal-overlay").fadeOut("slow",function(){
        $('#modal-overlay').remove();
        $('body').css('overflow','')
        });
    });

});