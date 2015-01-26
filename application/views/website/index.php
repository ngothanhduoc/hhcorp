<link rel="stylesheet" type="text/css" href="./public/assets/css/style.css">
<script src="./public/assets/js/jQueryRotate.js"></script>
<script src="./public/assets/js/main.js"></script>
<script>

    $(function () {
        SLIDE.init();
        SLIDE.top_content();
        SLIDE.bottom_nav();
        SLIDE.loadCirle();
        $('.arrow-right').rotate({
            bind:
                    {
                        click: function () {
                            SLIDE.ARROW_RIGHT();
                        }
                    }

        });
        $('.arrow-left').rotate({
            bind:
                    {
                        click: function () {
                            SLIDE.ARROW_LEFT();
                        }
                    }

        });
    })
    var SLIDE = {
        TOTAL_PRODUCT_GROUP: null,
        NUM_ABOUT: null,
        LIMIT: 3,
        Height : window.innerHeight,
        position : null,
        PAGE : 0,
        OFFSET : 0,
        REAL_PAGE : 1,
        init: function () {
            $.ajax({
                url: './get_num_product.html',
                type: 'GET',
                dataType: '',
                data: {}
            }).done(function (response) {
                SLIDE.TOTAL_PRODUCT_GROUP = $.parseJSON(response);
                console.log(SLIDE.TOTAL_PRODUCT_GROUP)
                SLIDE.NUM_ABOUT = SLIDE.TOTAL_PRODUCT_GROUP.total - SLIDE.LIMIT;
                console.log(SLIDE.NUM_ABOUT);
                SLIDE.PAGE = Math.ceil(SLIDE.TOTAL_PRODUCT_GROUP.total / SLIDE.LIMIT);
                html_li = "";
                for (i = 1; i <= SLIDE.PAGE; i++) {
                    if (i == 1)
                        html_li += "<li class='page_circle_"+i+" active-navi'></li>";
                    else
                        html_li += "<li class='page_circle_"+i+"'> </li>";
                }
                $('.page-circle').html(html_li);
            });
        },
        ARROW_RIGHT: function () {
            if (SLIDE.NUM_ABOUT > 0) {
                SLIDE.OFFSET = SLIDE.OFFSET + SLIDE.LIMIT;
                SLIDE.OFFSET = (SLIDE.OFFSET >= SLIDE.TOTAL_PRODUCT_GROUP.total ? 0 : SLIDE.OFFSET);
                SLIDE.REAL_PAGE = (SLIDE.OFFSET != 0 ? (SLIDE.REAL_PAGE + 1) : 1);
                $(".active-navi").removeClass("active-navi");
                setTimeout(function(){
                    $(".page_circle_"+SLIDE.REAL_PAGE).addClass("active-navi");
                },10);
                $('.content').animate({borderSpacing: 45}, {
                    step: function (now, fx) {
                        $(this).css('-webkit-transform', 'rotate(' + now + 'deg)');
                        $(this).css('-moz-transform', 'rotate(' + now + 'deg)');
                        $(this).css('transform', 'rotate(' + now + 'deg)');
                    },
                    duration: 400,
                    complete: function () {
                        SLIDE.callback();
                    }
                }, 'linear');
                $('.block').removeClass('animated_fast zoomIn');
                $('.block').addClass('animated_fasts flipOutX');

                SLIDE.position = 'right';
            }
        },
        ARROW_LEFT: function () {
            if (SLIDE.NUM_ABOUT > 0) {
                SLIDE.OFFSET = SLIDE.OFFSET - SLIDE.LIMIT;
                SLIDE.OFFSET = (SLIDE.OFFSET < 0 ? SLIDE.NUM_ABOUT : SLIDE.OFFSET);
                SLIDE.REAL_PAGE = (SLIDE.OFFSET != SLIDE.NUM_ABOUT ? (SLIDE.REAL_PAGE - 1) : SLIDE.PAGE);
                $(".active-navi").removeClass("active-navi");
                setTimeout(function(){
                    $(".page_circle_"+SLIDE.REAL_PAGE).addClass("active-navi");
                },10);
                $('.content').animate({borderSpacing: -45}, {
                    step: function (now, fx) {
                        $(this).css('-webkit-transform', 'rotate(' + now + 'deg)');
                        $(this).css('-moz-transform', 'rotate(' + now + 'deg)');
                        $(this).css('transform', 'rotate(' + now + 'deg)');
                    },
                    duration: 400,
                    complete: function () {
                        SLIDE.callback();
                    }
                }, 'linear');

                $('.block').removeClass('animated_fast zoomIn');
                $('.block').addClass('animated_fasts flipOutX');

                SLIDE.position = 'left';
            }
        },
        callback: function () {
            $.when(setTimeout(function () {
                SLIDE.loadCirle();
            }, 50));
        },
        loadCirle: function () {
            $.when($.ajax({
                url: './index.php/website/ajax/home_circle/'+SLIDE.OFFSET,
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
                    if (SLIDE.position == 'right') {
                        $('.circle-main').addClass('deg45');
                        $('.circle-main').removeClass('deg0');
                        $('.hover-circle').removeClass('ch-info');
                    }
                    if (SLIDE.position == 'left') {
                        $('.circle-main').addClass('deg0');
                        $('.circle-main').removeClass('deg45');
                        $('.hover-circle').removeClass('ch-info');
                    }

                }
                $('.hover-circle').addClass('ch-info');
                $('.ch-info').css('margin-left', '-7px');
            })
                    ).pipe(function () {
                $style = $('.content').attr('style');
                if ($style != undefined) {
                    $('.content').attr('style', '');
                    SLIDE.top_content();
                }
            });
        },
        top_content: function () {
            $he = SLIDE.Height - 604;
            $re = $he / 2;
            $('.content').css('margin-top', $re);
        },
        bottom_nav: function () {
            $he = SLIDE.Height - 20;
            $('.navi-bottom').css('margin-top', $he);
        },
    }
</script>

<div class="shadow">
    <div class="popup">
        <div class="main-popup">
            <div class="popup-header">
                <span>Send us your Feedback</span>
                <div class="close">X</div>
            </div>
            <div class="popup-content">
                <div class="navi-popup">
                    <div class="tab tab_active">General Inquiries</div>
                    <div class="tab">Functionality Issue</div>
                </div>
                <div class="popup-form">
                    <div class="popup-box-left">
                        <div class="space"></div>
                        <p>Your satisfaction is our success</p> 
                        <p>Please share your experience with us</p> 
                    </div>
                    <div class="popup-box-right">
                        <form action="" method="post" class="support" >
                            <input type="email" name="email" value=""  placeholder="Email" />
                            <input type="text" name="subject" value=""  placeholder="Subject" />
                            <textarea name="message" placeholder="Message" ></textarea>
                            <span>Please answer in the box</span>
                            <div class="box-num">2</div>
                            <span>+</span>
                            <div class="box-num">3</div>
                            <span>=</span>
                            <input type="text" name="num-asw" class="num-asw" value="" />
                            <input type="submit" name="submit" class="submit" value="SEND" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="feedback">
    <div class="main-fe">
        <span>F</span>
        <span>e</span>
        <span>e</span>
        <span>d</span>
        <span>b</span>
        <span>a</span>
        <span>c</span>
        <span>k</span>
    </div>
</div>
<div class="set-color">
    <a href="./freeadposting.html"> 
        <div class="posting">
            <span>F</span>
            <span>r</span>
            <span>e</span>
            <span class="space-span">e</span>
            <span>A</span>
            <span class="space-span">d</span>
            <span>P</span>
            <span>o</span>
            <span>s</span>
            <span>t</span>
            <span>i</span>
            <span>n</span>
            <span>g</span>
        </div> 
    </a>
    <div class="color color-active-1"></div>
    <div class="color color-active-2"></div>
    <div class="color color-active-3"></div>
</div>
<div class="wallpaper">
    <div class="arrow-left">
        <img src="./public/assets/images/muiten2.jpg" width="40px"/>
    </div>
    <div class="main-content">
        <a href="<?php echo base_url() ?>">
            <img src="./public/assets/images/logo.jpg" />
        </a>
        <form action="" method="GET" >
            <input name="postcode" value="" type="text" placeholder="Postcode"/>
            <input name="search" value="" type="search" placeholder="Search" />
            <input type="submit" value="" name="submit" />
        </form>
    </div>
    <div class="content">

    </div>
    <div class="nav-circle">
        <ul class="page-circle">

        </ul>
    </div>
    <div class="arrow-right">
        <img src="./public/assets/images/muiten1.jpg" width="40px"/>
    </div>
</div>    


