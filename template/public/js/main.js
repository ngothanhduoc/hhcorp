$(function () {
    //load giao dien cac vong tron
    var total = window.innerHeight;
    
    top_content();
    bottom_nav();
    function top_content() {
        $he = total - 604;
        $re = $he / 2;
        $('.content').css('margin-top', $re);
    }
    function bottom_nav(){
        $he = total - 20;
        $('.navi-bottom').css('margin-top', $he);
    }
    loadCirle();
    $('.shadow').hide();
    var position = '';

    $('.arrow-right').rotate({
        bind:
                {
                    click: function () {
                        $('.content').rotate({angle: 0, animateTo: 45, easing: $.easing.easeInOutExpo});
                        $('.block').removeClass('animated zoomIn');
                        $('.block').addClass('animated flipOutX');
                        callback();
                        position = 'right';
                    }
                }

    });
    $('.arrow-left').rotate({
        bind:
                {
                    click: function () {
                        $('.content').rotate({angle: 0, animateTo: -45, easing: $.easing.easeInOutExpo});
                        $('.block').removeClass('animated zoomIn');
                        $('.block').addClass('animated flipOutX');
                        callback();
                        position = 'left';
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
        setTimeout(function () {
            $style = $('.content').attr('style');
            if ($style != undefined) {
                $('.content').attr('style', '');
                $('.circle-main').removeClass('deg0');
                $('.circle-main').removeClass('deg45');
                $('.circle-main').addClass('deg00');
            }
        }, 1050);
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
            if ($style != undefined) {
                if (position == 'right') {
                    $('.circle-main').addClass('deg45');
                    $('.circle-main').removeClass('deg0');
                }
                if (position == 'left') {
                    $('.circle-main').addClass('deg0');
                    $('.circle-main').removeClass('deg45');
                }
            }

        }).fail(function () {
            alert('Có lỗi ! Không kết nối đến dữ liệu được.');
        });
    }
    function hoverCircle() {
        $('.circle').hover(
                function () {
                    $(this).addClass('animated pulse');
                    $style = $('.content').attr('style');
                    if ($style != undefined) {
                        if (position == 'right') {
                            $('.circle-main').addClass('deg45');
                            $('.circle-main').removeClass('deg0');
                        }
                        if (position == 'left') {
                            $('.circle-main').addClass('deg0');
                            $('.circle-main').removeClass('deg45');
                        }
                    }
                },
                function () {
                    $(this).removeClass('animated pulse');

                }
        );
    }
    ;
    $("div.tab").click(function(){
        $("div.tab").removeClass('tab_active');
        $(this).addClass('tab_active');
    })
    
})