$(function () {
    //load giao dien cac vong tron
    loadCirle();
    $('.shadow').hide();
//    $('.arrow-left').click(function () {
//        $('.block').removeClass('animated zoomIn');
//        $('.block').addClass('animated flipOutX');
//        callback();
//    });
//    $('.arrow-right').click(function () {
//        $('.block').removeClass('animated zoomIn');
//        $('.block').addClass('animated flipOutX');
//        callback();
//    });

    $('.arrow-left,.arrow-right').rotate({
        bind:
                {
                    click: function () {
                        $('.content').rotate({angle: 0, animateTo: 45, easing: $.easing.easeInOutExpo});
                        $('.block').removeClass('animated zoomIn');
                        $('.block').addClass('animated flipOutX');
                        callback();

                    }
                }

    });

    $('.close').click(
            function () {
                $('.shadow').removeClass('animated zoomIn');
                $('.shadow').addClass('animated zoomOut');
                
                setTimeout(function () {
                   $('.shadow').hide();
                }, 1000);
            }
    )
    $('.feedback').click(function () {
        $('.shadow').show().removeClass('animated zoomOut');
        $('.shadow').show().addClass('animated zoomIn');
    })

    function callback() {
        setTimeout(function () {
            loadCirle();
        }, 1000);
    }
    function loadCirle() {
        $.ajax({
            url: './vongtron.html',
            type: 'GET',
            dataType: '',
            data: {}
        }).done(function (response) {
            $('.content').html(response);
//            $('.content').addClass('animated zoomIn');
            $('.block').addClass('animated zoomIn');

            hoverCircle();
            $style = $('.content').attr('style');
            if ($style != undefined)
                $('.circle-main').addClass('deg45');
        }).fail(function () {
            alert('Có lỗi ! Không kết nối đến dữ liệu được.');
        });
    }
    function hoverCircle() {
        $('.circle').hover(
                function () {
                    $(this).addClass('animated pulse');
                    $style = $('.content').attr('style');
                    if ($style != undefined)
                        $('.circle-main').addClass('deg45');
                },
                function () {
                    $(this).removeClass('animated pulse');

                }
        );
    }
})