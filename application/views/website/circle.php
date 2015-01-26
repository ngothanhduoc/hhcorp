<?php
    
    foreach ($group_product as $key => $value) {
        if(count($group_product) != 3){
?>
    <div class="block <?php if($key !== 0) echo 'block_0'.$key;?>">
        <div class="circle">
            <div class="circle-main">
                <img src="<?php echo base_url($value['images']) ?>" />
                <span><?php echo ($value['name']) ?></span>
                <a href="./product.html">
                    <div class="hover-circle ch-info">
                        Search
                    </div>
                </a>
            </div>
        </div>
    </div>
<?php
        }else{
?>
        <div class="block <?php if($key !== 0) echo 'block_three_0'.$key;?>">
            <div class="circle">
                <div class="circle-main">
                    <img src="<?php echo base_url($value['images']) ?>" />
                    <span><?php echo ($value['name']) ?></span>
                    <a href="./product/<?php echo utf8_to_ascii($value['id_group_product'].'-'.$value['name']).'.html'?> ">
                        <div class="hover-circle ch-info">
                            Search
                        </div>
                    </a>
                </div>
            </div>
        </div>
<?php
        }
    }
?>