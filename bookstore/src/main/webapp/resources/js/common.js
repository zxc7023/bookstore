$(document).ready(function () {

    /*별점*/
    var $star_rating = $('.star-rating .fa-star');

    $star_rating.mouseover(function () {
        var rate = parseInt($(this).data('rating'));
        $('input.rating-value').val(rate);
        $star_rating.each(function () {
            if (rate >= parseInt($(this).data('rating'))) {
                return $(this).removeClass('checked').addClass('checked');
            } else {
                return $(this).removeClass('checked');
            }
        });
    });
    /*  수량 + , -*/
    $('.minus').click(function () {
        var $input = $(this).parent().find('input');
        var count = parseInt($input.val()) - 1;
        count = count < 1 ? 1 : count;
        $input.val(count);
        $input.change();
        return false;
    });
    $('.plus').click(function () {
        var $input = $(this).parent().find('input');
        $input.val(parseInt($input.val()) + 1);
        $input.change();
        return false;
    });

    /*header*/

    $('.link ul li:first-child').on('click mouseenter ', function () {
        $(this).toggleClass('active');

    });

    $('.link ul li .log-in,.link ul li:first-child').on('mouseleave ', function () {
        $(this).removeClass('active');

    });


});