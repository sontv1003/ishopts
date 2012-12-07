<div class="box featured">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
    <div class="box-product">
    <ul>
      <?php $i=1; $record = 4;
      foreach ($products as $product) { ?>
      <li class="<?php if($i%$record ==1 || $i==1) echo 'first-in-line'; if($i%$record==0 && $i!=1) echo 'last-in-line'; $i++;?>">
        <?php if ($product['thumb']) { ?>
        <div class="image2"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } ?>
        <?php if ($product['rating']) { ?>
        <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
        <?php } ?>
        <div class="name maxheight-feat"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
        
        <!--<div class="description"><?php echo $product['description'];?></div>-->
        
        <?php if ($product['price']) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-old"><?php echo $product['price']; ?></span> <br/>
          <span class="price-new"><?php echo $product['special']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
        <div class="cart"><a data-id="<?php echo $product['product_id']; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button addToCart" /><span><?php echo $button_cart; ?></span></a></div>
      </li>
      <?php } ?>
    </ul>
    </div>
  </div>
</div>
