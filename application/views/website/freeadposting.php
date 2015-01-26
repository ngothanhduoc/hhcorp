<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="./public/css/reset.css">
        <link rel="stylesheet" type="text/css" href="./public/css/freeadposting.css">
        <link rel="stylesheet" type="text/css" href="./public/css/animate.css">
        <script src="public/js/jquery.js"></script>
        <script src="public/js/freead.js"></script>
        <title>HHCORP</title>

    </head>
    <body>
<!--        <div class="posting">
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
        </div>-->
        <div class="wallpaper">
            <div class="content animated zoomIn">
                <a href="./"><img class="logo_freeposition" src="./public/images/logo.jpg"></a>
                <div id="title">Start promotion your business and drive more traffice to your site by filling in the form below:</div>
                <form method="get" action="" class="form-freeadpost" enctype="multipart/form-data">
                    <div class="box-content">
                        <input name="business_name" placeholder="Business Name" type="text" class="input-left" />
                        <input name="business_address" placeholder="Business Address" type="text" class="input-left" />
                        <input name="suburb" placeholder="Suburb" type="text" class="input-left" />
                        <input name="business_contact" placeholder="Business Contact" type="text" class="input-left" /><span class="char_aws">?</span>
                        <input name="advertiser_contact" placeholder="Advertiser Contact" type="text" class="input-left" /><span class="char_aws">?</span>
                        <div class="box-little">
                            <input name="website" placeholder="Website" type="url" class="input-left input-order-1" />
                            <div class="checkbox-info"><input type="checkbox" name="dont-web" /> <span>I don't have website</span></div>
                        </div>
                        <div class="box-little">
                            <input name="website" placeholder="Upload Your Banner" type="text" class="input-left input-order-1" />
                            <input name="banner" placeholder="Website" type="file" class="input-left input-order-1 upload-banner" />
                            <div class="checkbox-info check-banner"><input type="checkbox" name="dont-web" /> <span>I don't have banner</span></div>
                            <div class="up-icon"></div>
                        </div>
                        <div class="listting">
                            <div class="text">Select Listing Type</div>
                            <div class="input-radio"></div> <span>Free Listing (Banner size 50 x 100 pixel) ?</span> </br>
                            <div class="input-radio"></div> <span>Sub-Category First Page Listing $50 (Banner size 50 x 100 pixel ) ?</span></br>
                            <div class="input-radio"></div> <span>Category First Page Listing $100 (Banner size 50 x 100 pixel) ?</span></br>
                            <div class="input-radio"></div> <span>Sub-Category Top Listing $200 (Banner size 50x400) ?</span></br>
                            <div class="input-radio"></div> <span>Category Top Listing $300 (Banner size 50x400) ?</span></br>
                            <div class="input-radio"></div> <span>Branded Listing ? (Contact us on 1300 000 000 for more details)</span>
                        </div>
                    </div>
                    <div class="box-content box-right">
                        <div class="box-little">
                            <input name="website" placeholder="ABN/ACN" type="url" class="input-left input-order-2" />
                            <div class="down-icon"></div>
                        </div>
                        <div class="box-little">
                            <input name="website" placeholder="Categories" type="url" class="input-left input-order-2" />
                            <div class="down-icon"></div>
                        </div>
                        <div class="box-little">
                            <input name="website" placeholder="Sub Categories" type="url" class="input-left input-order-2" />
                            <div class="down-icon"></div>
                        </div>
                        <div class="box-little">
                            <textarea name="business_description" class="business_description" placeholder="Business Description" ></textarea>
                        </div>
                        <div class="box-little box-little-2">
                            <span>Tranding Hours</span>
                            <div class="block-day">
                                <input type="checkbox" name="dont-web" />
                                <span class="week">Monday</span>
                                <input type="text" /> <span>to</span> <input type="text" />
                            </div>
                            <div class="block-day">
                                <input type="checkbox" name="dont-web" />
                                <span class="week">Friday</span>
                                <input type="text" /> <span>to</span> <input type="text" />
                            </div>
                            <div class="block-day">
                                <input type="checkbox" name="dont-web" />
                                <span class="week">Tuesday</span>
                                <input type="text" /> <span>to</span> <input type="text" />
                            </div>
                            <div class="block-day">
                                <input type="checkbox" name="dont-web" />
                                <span class="week">Saturday</span>
                                <input type="text" /> <span>to</span> <input type="text" />
                            </div>
                            <div class="block-day">
                                <input type="checkbox" name="dont-web" />
                                <span class="week">Wednesday</span>
                                <input type="text" /> <span>to</span> <input type="text" />
                            </div>
                            <div class="block-day">
                                <input type="checkbox" name="dont-web" />
                                <span class="week">Sunday</span>
                                <input type="text" /> <span>to</span> <input type="text" />
                            </div>
                            <div class="block-day">
                                <input type="checkbox" name="dont-web" />
                                <span class="week">Thursday</span>
                                <input type="text" /> <span>to</span> <input type="text" />
                            </div>
                            <div class="block-day">
                                <div class="input-radio">
                                </div>
                                <span>24/7</span>
                            </div>

                        </div>
                        <div class="box-little">
                            <input name="website" placeholder="Enter Security Code" type="text" class="input-left input-order-1" />
                            <div class="captcha"></div>
                            <div class="refresh">Refresh</div>
                        </div>
                        </br>
                        <div class="box-little">
                            <input type="checkbox" name="dont-web" />
                            <span class="">I accept the terms and conditions and privacy statement</span>
                        </div>
                        <input type="submit" name="submit" class="submit-form" value="SUBMIT" />
                </form>
            </div>

        </div>

    </body>
</html>
