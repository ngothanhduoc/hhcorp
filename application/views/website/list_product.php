<!--<span class="als-prev">
    <
</span>-->
<?php 
    $center = 1;
    if(!empty($product))
    foreach ($product as $key => $value) {
        $class_center = ($center == $key ? "banner-center" : "");
        $center = ($center == $key ? ($center + 3) : $center);
        
?>
<div class="product-banner animated_slow bounceInUp <?php echo $class_center ?>">
    <div class="header-banner">

        <img src="<?php echo base_url() ?>public/assets/images/sao_active.png"  />
        <img src="<?php echo base_url() ?>public/assets/images/sao_active.png"  />
        <img src="<?php echo base_url() ?>public/assets/images/sao_active.png"  />
        <img src="<?php echo base_url() ?>public/assets/images/sao.png"  />
        <img src="<?php echo base_url() ?>public/assets/images/sao.png"  />
        <span class="name-company"><?php echo $value['name'] ?> &nbsp; <?php echo $value['km'] ?>km</span>
    </div>
    <img src="<?php echo base_url() ?>public/assets/images/banner.jpg"  class="banner-content">
    <div class="open-time">Open Today: 9am - 5pm</div>
    <div class="phone-company">Phone: 02 9798 5885</div>
</div>
<?php 
    }
?>


<!--<span class="als-next">
    >
</span>-->