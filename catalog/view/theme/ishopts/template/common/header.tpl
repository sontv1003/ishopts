<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" xmlns:fb="http://ogp.me/ns/fb#">
    <head>
        <meta charset="UTF-8" />
        <title><?php echo $title; ?></title>
        <base href="<?php echo $base; ?>" />
        <?php if ($description) { ?>
            <meta name="description" content="<?php echo $description; ?>" />
        <?php } ?>
        <?php if ($keywords) { ?>
            <meta name="keywords" content="<?php echo $keywords; ?>" />
        <?php } ?>
        <?php if ($icon) { ?>
            <link href="<?php echo $icon; ?>" rel="icon" />
        <?php } ?>
        <?php foreach ($links as $link) { ?>
            <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
        <?php } ?>
        <link rel="stylesheet" type="text/css" href="catalog/view/theme/ishopts/stylesheet/stylesheet.css" />
        <link rel="stylesheet" type="text/css" href="catalog/view/theme/ishopts/stylesheet/superfish.css" />
        <?php foreach ($styles as $style) { ?>
            <link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
        <?php } ?>
        <script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
        <script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
        <link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
        <script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
        <script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
        <link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
        <script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
        <script type="text/javascript" src="catalog/view/javascript/common.js"></script>
        <script type="text/javascript" src="catalog/view/javascript/superfish.js"></script>
        <?php foreach ($scripts as $script) { ?>
            <script type="text/javascript" src="<?php echo $script; ?>"></script>
        <?php } ?>
        <!--[if  IE 8]>
                <style>
                #menu #search input {
                    padding-top:5px;
                     padding-bottom:3px;
                }
                .featured ul li .image2:hover, .product-grid .image:hover { border-color:#000;}
                .success, #header #cart .content  { border:1px solid #e7e7e7;}
                #currency a  span { padding-top:1px;}
            </style>
        <![endif]-->
        <!--[if  IE 9]>
                <style>
                #currency a  span { padding-top:1px;}
            </style>
        <![endif]-->
        <!--[if IE 7]>
        <link rel="stylesheet" type="text/css" href="catalog/view/theme/ishopts/stylesheet/ie7.css" />
        <![endif]-->
        <!--[if lt IE 7]>
        <link rel="stylesheet" type="text/css" href="catalog/view/theme/ishopts/stylesheet/ie6.css" />
        <script type="text/javascript">
        DD_belatedPNG.fix('#logo img');
        </script>
        <![endif]-->
        <?php echo $google_analytics; ?>
        <script language="javascript">
	 
	$(document).ready(function() {
	    $('ul.sf-js-enabled').superfish();
	});
	 
	</script>
    </head>
    <body>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
        <div class="main-shining">
            <div class="row-1">
            <div id="header">
                <?php if ($logo) { ?>
                    <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
                <?php } ?>
                <div class="header-top1">
                    <div class="cart-position">
                        <div class="cart-inner">
                        <?php echo $cart; ?>
                        </div>
                    </div>                    
                    <ul class="links">
                        <li><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a></li>
                        <li><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a></li>
                        <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                        <li><a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a></li>
                        <li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
                    </ul>
                    <div id="welcome">
                        <?php if (!$logged) { ?>
                            <?php echo $text_welcome; ?>
                        <?php } else { ?>
                            <?php echo $text_logged; ?>
                        <?php } ?>    
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
            </div>
            <div id="menu">
            <script type="text/javascript">
                    $(document).ready(function(){

                            $('.menu ul li').last().addClass('last');
                            $('.menu ul li li').last().addClass('last');
                    });
            </script>
            <?php if ($categories) { ?>
                    <ul class="menu sf-js-enabled">
                        <li><a href="<?php echo $informations['href'];?>"><?php echo $informations['title'];?></a></li>
                        <?php foreach ($categories as $category) { ?>
                            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                                <?php if ($category['children']) { ?>
                                    <ul><ul>
                                    <?php for ($i = 0; $i < count($category['children']);) { ?>
                                            <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                                            <?php for (; $i < $j; $i++) { ?>
                                                <?php if (isset($category['children'][$i])) { ?>
                                                    <li><a class="screenshot1" href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
                                                <?php } ?>
                                            <?php } ?>
                                    <?php } ?>
                                <?php } ?>                                
                                    </ul></ul>
                            </li>
                        <?php } ?>
                        <li><a href="<?php echo $contact;?>"><?php echo $text_contact;?></a></li>
                    </ul>
            <?php } ?>
                <div id="search">
                    <div class="button-search"></div>
                    <?php if ($filter_name) { ?>
                        <span class="search-bg"> <input type="text" name="filter_name" value="<?php echo $filter_name; ?>" />
                    <?php } else { ?>
                        <span class="search-bg"> <input type="text" name="filter_name" value="<?php echo $filter_name; ?>" onclick="this.value = '';" onkeydown="this.style.color = '#000000';" /></span>
                    <?php } ?>  
                </div>
                <div class="clear"></div>
            </div>
            <div class="main-container">
