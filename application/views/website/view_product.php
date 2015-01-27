<link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>public/assets/css/freeadposting.css">
<script src="<?php echo base_url() ?>public/assets/js/jquery.als-1.7.min.js"></script>
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script> 

<script>
    $(document).ready(function () {
        $("#lista1").als({
            visible_items: 6,
            scrolling_items: 1,
            orientation: "horizontal",
            circular: "no",
            autoscroll: "no",
            interval: 5000,
            speed: 500,
            easing: "linear",
            direction: "right",
            start_from: 0
        });
        GOOGLE.init();
    });
    var GOOGLE = {
        geocoder: null,
        myAddress: null,
        location1: null,
        location2: null,
        id_group_product: <?php echo $id_group_product ?>,
        init: function () {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(GOOGLE.successFunction, GOOGLE.errorFunction);
            }
            GOOGLE.geocoder = new google.maps.Geocoder();
        },
        errorFunction: function () {
            alert("Geocoder failed");
        },
        successFunction: function (position) {
            var lat = position.coords.latitude;
            var lng = position.coords.longitude;
            GOOGLE.codeLatLng(lat, lng)
        },
        codeLatLng: function (lat, lng) {
            var latlng = new google.maps.LatLng(lat, lng);
            GOOGLE.geocoder.geocode({'latLng': latlng}, function (results, status) {
                if (status == google.maps.GeocoderStatus.OK) {
                    console.log(results)
                    if (results[1]) {
                        GOOGLE.myAddress = results[0].formatted_address;
                        if (GOOGLE.myAddress != null) {
                            $.ajax({
                                url: '../get-list-product.html',
                                type: 'POST',
                                cache: false,
                                data: {my_address: GOOGLE.myAddress, id_group_product: GOOGLE.id_group_product},
                                beforeSend: GOOGLE.startLoading('.loading'),
                            }).done(function (response) {
                                GOOGLE.endLoading('.loading');
                                $(".list-banner").html(response);
                            });
                        }
                    } else {
                        alert("No results found");
                    }
                } else {
                    alert("Geocoder failed due to: " + status);
                }
            });
        },
        startLoading: function ($class) {
            $($class).show();
        },
        endLoading: function ($class) {
            $($class).slideUp();
        },
    }

</script>
<p id="results"></p>
<div class="wallpaper">
    <div class="content animated zoomIn">
        <a href="<?php echo base_url() ?>">
            <img src="<?php echo base_url() ?>public/assets/images/logo-small.jpg" class="logo-small" />
        </a>
        <div class="menu">
            <div class="hr"></div>
            <div id="lista1" class="als-container">
                <span class="als-prev">
                    <
                </span>
                <span class="als-prev-hide">
                    <
                </span>
                <div class="als-viewport">
                    <ul class="als-wrapper">

                        <li class="als-item active-text">
                            <a href="<?php echo base_url() ?>/product/<?php echo utf8_to_ascii($chose_group_product[0]['id_group_product'] . '-' . $chose_group_product[0]['name']) . '.html' ?> ">
                                <div class="menu-circle">
                                    <div class="menu-circle-chilr">
                                        <img src="<?php echo base_url($chose_group_product[0]['images']) ?>" alt="<?php echo $chose_group_product[0]['name'] ?>" title="<?php echo $chose_group_product[0]['name'] ?>" />
                                    </div>
                                </div>
                                <div class="name-list_product">
                                    <?php echo $chose_group_product[0]['name'] ?>
                                </div>
                            </a>
                        </li>
                        <?php
                        foreach ($list_group_product as $key => $value) {
                            ?>
                            <li class="als-item">
                                <a href="<?php echo base_url() ?>product/<?php echo utf8_to_ascii($value['id_group_product'] . '-' . $value['name']) . '.html' ?> ">
                                    <div class="menu-circle">
                                        <div class="menu-circle-chilr">
                                            <img src="<?php echo base_url($value['images']) ?>" alt="<?php echo $value['name'] ?>" title="<?php echo $value['name'] ?>" />
                                        </div>
                                    </div>
                                    <div class="name-list_product">
                                        <?php echo $value['name'] ?>
                                    </div>
                                </a>
                            </li>
                            <?php
                        }
                        ?>
                    </ul>
                </div>
                <span class="als-next">
                    >
                </span>
                <span class="als-next-hide">
                    >
                </span>
            </div>
        </div>
        <div class="sub-navi">
            <div class="sub-navi-left">
                <form action="" method="GET" >
                    <input name="postcode" value="" type="text" placeholder="Postcode"/>
                    <input name="search" value="" type="search" placeholder="Search" />
                    <input type="submit" name="button-search" value="" name="submit" />
                </form>
            </div>
            <div class="sub-navi-right">
                <div class="title-navi">Dentists</div>
                <div class="title-navi">Dentists</div>
                <div class="title-navi">Dentists</div>
                <div class="title-navi">Dentists</div>
                <div class="title-navi">Dentists</div>
                <div class="title-navi">Dentists</div>
                <div class="title-navi">Dentists</div>
                <div class="title-navi">Dentists</div>
            </div>
        </div>
        <div class="big-banner">

        </div>
        <div class="div-loading">
            <div id="circularG" class="loading">
                <div id="circularG_1" class="circularG">
                </div>
                <div id="circularG_2" class="circularG">
                </div>
                <div id="circularG_3" class="circularG">
                </div>
                <div id="circularG_4" class="circularG">
                </div>
                <div id="circularG_5" class="circularG">
                </div>
                <div id="circularG_6" class="circularG">
                </div>
                <div id="circularG_7" class="circularG">
                </div>
                <div id="circularG_8" class="circularG">
                </div>
            </div>
        </div>
        <div class="list-banner">

        </div>

    </div>

</div>
