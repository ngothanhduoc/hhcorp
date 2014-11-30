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
    function bottom_nav() {
        $he = total - 20;
        $('.navi-bottom').css('margin-top', $he);
    }
    loadCirle();
    $('.shadow').hide();
    var position = '';
    var defer = $.Deferred();
    $('.arrow-right').rotate({
        bind:
                {
                    click: function () {
                        $('.content').animate({borderSpacing: 45}, {
                            step: function (now, fx) {
                                $(this).css('-webkit-transform', 'rotate(' + now + 'deg)');
                                $(this).css('-moz-transform', 'rotate(' + now + 'deg)');
                                $(this).css('transform', 'rotate(' + now + 'deg)');
                            },
                            duration: 400,
                            complete: function () {
                                callback();
                            }
                        }, 'linear');
                        $('.block').removeClass('animated_fast zoomIn');
                        $('.block').addClass('animated_fasts flipOutX');
                        
                        position = 'right';
                    }
                }

    });
    $('.arrow-left').rotate({
        bind:
                {
                    click: function () {

                        $('.content').animate({borderSpacing: -45}, {
                            step: function (now, fx) {
                                $(this).css('-webkit-transform', 'rotate(' + now + 'deg)');
                                $(this).css('-moz-transform', 'rotate(' + now + 'deg)');
                                $(this).css('transform', 'rotate(' + now + 'deg)');
                            },
                            duration: 400,
                            complete: function () {
                                callback();
                            }
                        }, 'linear');

                        $('.block').removeClass('animated_fast zoomIn');
                        $('.block').addClass('animated_fasts flipOutX');

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
        $.when(setTimeout(function () {
            loadCirle();
        }, 50))
    }
    function loadCirle() {
        $.when($.ajax({
            url: './vongtron.html',
            type: 'GET',
            dataType: '',
            data: {}
        }).done(function (response) {
            $('.content').html(response);
//            $('.content').addClass('animated zoomIn');
            $('.block').addClass('animated_fast zoomIn');

//            hoverCircle();
            $style = $('.content').attr('style');
            if ($style != undefined) {
                if (position == 'right') {
                    $('.circle-main').addClass('deg45');
                    $('.circle-main').removeClass('deg0');
                    $('.hover-circle').removeClass('ch-info');
                }
                if (position == 'left') {
                    $('.circle-main').addClass('deg0');
                    $('.circle-main').removeClass('deg45');
                    $('.hover-circle').removeClass('ch-info');
                }

            }
            $('.hover-circle').addClass('ch-info');
            $('.ch-info').css('margin-left', '0px');
        })
                ).pipe(function () {
            $style = $('.content').attr('style');
            if ($style != undefined) {
                $('.content').attr('style', '');
                top_content();
            }
        })
                ;
    }
    function hoverCircle() {
        $('.circle').hover(
                function () {
                    $(this).addClass('animated_fast pulse');
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
                    $(this).removeClass('animated_fast pulse');

                }
        );
    }
    ;
    $("div.tab").click(function () {
        $("div.tab").removeClass('tab_active');
        $(this).addClass('tab_active');
    })

})