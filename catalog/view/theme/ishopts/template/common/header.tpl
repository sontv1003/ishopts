<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
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
        <?php foreach ($scripts as $script) { ?>
            <script type="text/javascript" src="<?php echo $script; ?>"></script>
        <?php } ?>
        <!--[if IE 7]>
        <link rel="stylesheet" type="text/css" href="catalog/view/theme/ishopts/stylesheet/ie7.css" />
        <![endif]-->
        <!--[if lt IE 7]>
        <link rel="stylesheet" type="text/css" href="catalog/view/theme/ishopts/stylesheet/ie6.css" />
        <script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
        <script type="text/javascript">
        DD_belatedPNG.fix('#logo img');
        </script>
        <![endif]-->
        <?php echo $google_analytics; ?>
    </head>
    <body>
        <div id="main-shining">
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
            <div class="header-modules">
                <div class="slideshow">
                     <div id="slideshow0" class="nivoSlider" style="width: 1064px; height: 473px; position: relative; background-image: url(http://livedemo00.template-help.com/opencart_40158/image/cache/data/slide-2-1064x473.jpg); background-position: initial initial; background-repeat: no-repeat no-repeat;">
                        <a href="index.php?route=product/category&amp;path=17" class="nivo-imageLink" style="display: none;"><img title="banner" src="http://livedemo00.template-help.com/opencart_40158/image/cache/data/slide-1-1064x473.jpg" alt="banner" style="display: none;"></a>
                     <div class="nivo-caption" style="opacity: 1; display: block;">
                    <p style="opacity: 1;">banner</p></div>
                        <div class="nivo-controlNav"><a class="nivo-control slide1" rel="0">1</a><a class="nivo-control slide2" rel="1">2</a><a class="nivo-control slide3 active" rel="2">3</a></div><div class="nivo-slice" style="left: 0px; width: 1064px; height: 100%; opacity: 1; background-image: url(http://livedemo00.template-help.com/opencart_40158/image/cache/data/slide-3-1064x473.jpg); background-position: 0px 0%; background-repeat: no-repeat no-repeat;"></div><div class="nivo-slice" style="left: 53px; width: 53px; height: 0px; opacity: 0; background-image: url(http://livedemo00.template-help.com/opencart_40158/image/cache/data/slide-3-1064x473.jpg); background-position: -53px 0%; background-repeat: no-repeat no-repeat;"></div><div class="nivo-slice" style="left: 106px; width: 53px; height: 0px; opacity: 0; background-image: url(http://livedemo00.template-help.com/opencart_40158/image/cache/data/slide-3-1064x473.jpg); background-position: -106px 0%; background-repeat: no-repeat no-repeat;"></div><div class="nivo-slice" style="left: 159px; width: 53px; height: 0px; opacity: 0; background-image: url(http://livedemo00.template-help.com/opencart_40158/image/cache/data/slide-3-1064x473.jpg); background-position: -159px 0%; background-repeat: no-repeat no-repeat;"></div><div class="nivo-slice" style="left: 212px; width: 53px; height: 0px; opacity: 0; background-image: url(http://livedemo00.template-help.com/opencart_40158/image/cache/data/slide-3-1064x473.jpg); background-position: -212px 0%; background-repeat: no-repeat no-repeat;"></div><div class="nivo-slice" style="left: 265px; width: 53px; height: 0px; opacity: 0; background-image: url(http://livedemo00.template-help.com/opencart_40158/image/cache/data/slide-3-1064x473.jpg); background-position: -265px 0%; background-repeat: no-repeat no-repeat;"></div><div class="nivo-slice" style="left: 318px; width: 53px; height: 0px; opacity: 0; background-image: url(http://livedemo00.template-help.com/opencart_40158/image/cache/data/slide-3-1064x473.jpg); background-position: -318px 0%; background-repeat: no-repeat no-repeat;"></div><div class="nivo-slice" style="left: 371px; width: 53px; height: 0px; opacity: 0; background-image: url(http://livedemo00.template-help.com/opencart_40158/image/cache/data/slide-3-1064x473.jpg); background-position: -371px 0%; background-repeat: no-repeat no-repeat;"></div><div class="nivo-slice" style="left: 424px; width: 53px; height: 0px; opacity: 0; background-image: url(http://livedemo00.template-help.com/opencart_40158/image/cache/data/slide-3-1064x473.jpg); background-position: -424px 0%; background-repeat: no-repeat no-repeat;"></div><div class="nivo-slice" style="left: 477px; width: 53px; height: 0px; opacity: 0; background-image: url(http://livedemo00.template-help.com/opencart_40158/image/cache/data/slide-3-1064x473.jpg); background-position: -477px 0%; background-repeat: no-repeat no-repeat;"></div><div class="nivo-slice" style="left: 530px; width: 53px; height: 0px; opacity: 0; background-image: url(http://livedemo00.template-help.com/opencart_40158/image/cache/data/slide-3-1064x473.jpg); background-position: -530px 0%; background-repeat: no-repeat no-repeat;"></div><div class="nivo-slice" style="left: 583px; width: 53px; height: 0px; opacity: 0; background-image: url(http://livedemo00.template-help.com/opencart_40158/image/cache/data/slide-3-1064x473.jpg); background-position: -583px 0%; background-repeat: no-repeat no-repeat;"></div><div class="nivo-slice" style="left: 636px; width: 53px; height: 0px; opacity: 0; background-image: url(http://livedemo00.template-help.com/opencart_40158/image/cache/data/slide-3-1064x473.jpg); background-position: -636px 0%; background-repeat: no-repeat no-repeat;"></div><div class="nivo-slice" style="left: 689px; width: 53px; height: 0px; opacity: 0; background-image: url(http://livedemo00.template-help.com/opencart_40158/image/cache/data/slide-3-1064x473.jpg); background-position: -689px 0%; background-repeat: no-repeat no-repeat;"></div><div class="nivo-slice" style="left: 742px; width: 53px; height: 0px; opacity: 0; background-image: url(http://livedemo00.template-help.com/opencart_40158/image/cache/data/slide-3-1064x473.jpg); background-position: -742px 0%; background-repeat: no-repeat no-repeat;"></div><div class="nivo-slice" style="left: 795px; width: 53px; height: 0px; opacity: 0; background-image: url(http://livedemo00.template-help.com/opencart_40158/image/cache/data/slide-3-1064x473.jpg); background-position: -795px 0%; background-repeat: no-repeat no-repeat;"></div><div class="nivo-slice" style="left: 848px; width: 53px; height: 0px; opacity: 0; background-image: url(http://livedemo00.template-help.com/opencart_40158/image/cache/data/slide-3-1064x473.jpg); background-position: -848px 0%; background-repeat: no-repeat no-repeat;"></div><div class="nivo-slice" style="left: 901px; width: 53px; height: 0px; opacity: 0; background-image: url(http://livedemo00.template-help.com/opencart_40158/image/cache/data/slide-3-1064x473.jpg); background-position: -901px 0%; background-repeat: no-repeat no-repeat;"></div><div class="nivo-slice" style="left: 954px; width: 53px; height: 0px; opacity: 0; background-image: url(http://livedemo00.template-help.com/opencart_40158/image/cache/data/slide-3-1064x473.jpg); background-position: -954px 0%; background-repeat: no-repeat no-repeat;"></div><div class="nivo-slice" style="left: 1007px; width: 57px; height: 0px; opacity: 0; background-image: url(http://livedemo00.template-help.com/opencart_40158/image/cache/data/slide-3-1064x473.jpg); background-position: -1007px 0%; background-repeat: no-repeat no-repeat;"></div></div>
                </div>


                <div id="banner0" class="banner">
                    <div><a href="index.php?route=information/information&amp;information_id=6"><img src="http://livedemo00.template-help.com/opencart_40158/image/cache/data/banner-1-1024x50.jpg" alt="banner" title="banner"></a></div>
                </div>
            </div>
            
            <div class="main-container">
