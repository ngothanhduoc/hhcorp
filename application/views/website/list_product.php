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
        <?php 
            for($i = 1; $i >=$value['rate']; $i++){
                echo '<img src="'.base_url().'public/assets/images/sao_active.png"  />';
            }
            for($i = 1; $i >=(5 - $value['rate']); $i++){
                echo '<img src="'.base_url().'public/assets/images/sao.png"  />';
            }
        ?>
        
        
        <span class="name-company"><?php echo $value['name'] ?> &nbsp; <?php echo $value['km'] ?>km</span>
    </div>
    <img src="<?php echo base_url() ?><?php echo $value['image_small'] ?>"  class="banner-content">
    <div class="open-time">Open Today: <?php echo $value['open_date'] ?></div>
    <div class="phone-company">Phone: <?php echo $value['phone'] ?></div>
</div>
<?php 
    }
?>


<!--<span class="als-next">
    >
</span>-->