function fn_menu_change(me) {
    $('.point').removeClass('point');
    if($(me).attr('class')=="my_page_menu"){
        $('.my_page').addClass('point');
    }else{
        $(me).addClass('point');
    }
}