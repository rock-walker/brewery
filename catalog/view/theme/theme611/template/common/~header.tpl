<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo $title; ?></title>
    <base href="<?php echo $base; ?>"/>
    <?php if ($description) { ?>
        <meta name="description" content="<?php echo $description; ?>"/>
    <?php } ?>
    <?php if ($keywords) { ?>
        <meta name="keywords" content="<?php echo $keywords; ?>"/>
    <?php } ?>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <?php if ($icon) { ?>
        <link href="<?php echo $icon; ?>" rel="icon"/>
    <?php } ?>

    <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen"/>
    <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="catalog/view/theme/<?php echo $theme_path; ?>/stylesheet/material-design.css" rel="stylesheet">
    <link href="catalog/view/javascript/tmcategory/tm_category_menu.css" rel="stylesheet" type="text/css"/>

    <link href="catalog/view/javascript/jquery/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="catalog/view/theme/<?php echo $theme_path; ?>/stylesheet/magnificent.css" rel="stylesheet">
    <link href="catalog/view/theme/<?php echo $theme_path; ?>/js/jquery.bxslider/jquery.bxslider.css" rel="stylesheet">
    <link href="catalog/view/theme/<?php echo $theme_path; ?>/stylesheet/photoswipe.css" rel="stylesheet">
    <link href="catalog/view/theme/<?php echo $theme_path; ?>/js/fancybox/jquery.fancybox.css" rel="stylesheet">
    <?php foreach ($styles as $style) { ?>
        <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>"
              media="<?php echo $style['media']; ?>"/>
    <?php } ?>
    <script src="catalog/view/theme/<?php echo $theme_path; ?>/js/common.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
    <script src="catalog/view/theme/<?php echo $theme_path; ?>/js/jquery.malsup.form.min.js" type="text/javascript"></script>


    <!--custom script-->
    <?php foreach ($scripts as $script) { ?>
        <?php if (strcmp($script, 'catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js') != 0) { ?>
            <script src="<?php echo $script; ?>" type="text/javascript"></script>
        <?php } ?>
    <?php } ?>
    <script src="catalog/view/theme/<?php echo $theme_path; ?>/js/device.min.js" type="text/javascript"></script>
    <!--[if lt IE 9]>
    <div style='clear:both;height:59px;padding:0 15px 0 15px;position:relative;z-index:10000;text-align:center;'>
        <a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img
            src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0"
            height="42" width="820"
            alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."/>
        </a>
    </div><![endif]-->
    <?php echo $google_analytics; ?>
    <link href="catalog/view/theme/<?php echo $theme_path; ?>/stylesheet/stylesheet.css" rel="stylesheet">
</head>
<body class="<?php echo $class; ?>">
<p id="gl_path" class="hidden"><?php echo $theme_path; ?></p>
<div class="mobyle-toggle">
    <div class="toggle-wrap toggle-sw">
        <a href="#" class="toggle material-design-settings49"></a>
        <div class="toggle_cont">
            <?php echo $language; ?>
            <?php echo $currency; ?>
        </div>
    </div>
</div>
<!-- swipe menu -->
<div class="swipe">
    <div class="swipe-menu">
        <ul>

            <li>
                <a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>"><i class="fa fa-user"></i>
                    <span><?php echo $text_account; ?></span></a>
            </li>
            <?php if ($logged) { ?>
                <li>
                    <a href="<?php echo $order; ?>"><i class="fa fa-file-text-o"></i><?php echo $text_order; ?></a>
                </li>
                <li>
                    <a href="<?php echo $transaction; ?>"><i class="material-design-shuffle24"></i><?php echo $text_transaction; ?>
                    </a>
                </li>
                <li>
                    <a href="<?php echo $download; ?>"><i class="fa fa-download"></i><?php echo $text_download; ?></a>
                </li>
                <li>
                    <a href="<?php echo $logout; ?>"><i class="fa fa-unlock"></i><?php echo $text_logout; ?></a>
                </li>
            <?php } else { ?>
                <li>
                    <a href="<?php echo $register; ?>"><i class="fa fa-user"></i> <?php echo $text_register; ?></a>
                </li>
                <li>
                    <a href="<?php echo $login; ?>"><i class="fa fa-lock"></i><?php echo $text_login; ?></a>
                </li>
            <?php } ?>
            <li>
                <a href="<?php echo $wishlist; ?>" id="wishlist-total2" title="<?php echo $text_wishlist; ?>"><i
                        class="fa fa-heart"></i> <span><?php echo $text_wishlist; ?></span>
                </a>
            </li>
            <li>
                <a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i
                        class="fa fa-shopping-cart"></i> <span><?php echo $text_shopping_cart; ?></span></a>
            </li>
            <li>
                <a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i>
                    <span><?php echo $text_checkout; ?></span></a>
            </li>
        </ul>
        <?php if ($maintenance == 0) { ?>
            <ul class="foot">
                <?php if ($informations) { ?>
                    <?php foreach ($informations as $information) { ?>
                        <li>
                            <a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a>
                        </li>
                    <?php } ?>
                <?php } ?>
            </ul>
        <?php } ?>
        <ul class="foot foot-1">
            <li>
                <a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a>
            </li>
            <li>
                <a href="<?php echo $return; ?>"><?php echo $text_return; ?></a>
            </li>
            <li>
                <a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a>
            </li>
        </ul>

        <ul class="foot foot-2">
            <li>
                <a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a>
            </li>
            <li>
                <a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a>
            </li>
            <li>
                <a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a>
            </li>
            <li>
                <a href="<?php echo $special; ?>"><?php echo $text_special; ?></a>
            </li>
        </ul>
        <ul class="foot foot-3">
            <li>
                <a href="<?php echo $order; ?>"><?php echo $text_order; ?></a>
            </li>
            <li>
                <a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a>
            </li>
        </ul>
    </div>
</div>
<div id="page" class="page">
    <div class="shadow"></div>
    <div class="toprow-1">
    
        <a class="swipe-control" href="#"><i class="material-design-menu55"></i></a>
    </div>
    <?php if ($categories) { ?>
            <div class="container menu">
                <div id="menu-gadget" class="menu-gadget">
                    <div id="menu-icon" class="menu-icon"><?php echo $text_category; ?></div>
                    <?php if ($categories_tm) {
                        echo $categories_tm;
                    } ?>
                </div>
            </div>
        <?php } ?>
    <span id="sidebar-btn" class="sidebar-btn"><i></i></span>
    <header class="header">
        <div class="cf-wrap">
        <?php echo $language; ?>
        <?php echo $currency; ?>  
        </div>
        <div id="logo" class="logo">
            <?php if ($logo) { ?>
                <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>"
                                                    alt="<?php echo $name; ?>" class="img-responsive"/></a>
            <?php } else { ?>
                <h1>
                    <a href="<?php echo $home; ?>"><?php echo $name; ?></a>
                </h1>
            <?php } ?>
        </div>
        <?php echo $tm_category_menu ?>
        <?php echo $cart; ?>
        <?php echo $search; ?>
        <nav id="top-links" class="nav">
            <ul class="list-inline">
                <li>
                    <a href="<?php echo $wishlist; ?>" id="wishlist-total"><i class="material-design-bookmark45"></i><span><?php echo $text_wishlist; ?></span></a>
                </li>
                <li>
                    <a href="<?php echo $account; ?>"><i class="material-design-user157"></i><span><?php echo $text_account; ?></span></a>
                </li>
                <li>
                    <a href="<?php echo $shopping_cart; ?>"><i class="material-design-shopping232"></i><span><?php echo $text_shopping_cart; ?></span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo $checkout; ?>"><i class="material-design-tick7"></i><span><?php echo $text_checkout; ?></span></a>
                </li>
                <?php if ($logged) { ?>
                    <li>
                        <a href="<?php echo $logout; ?>"><i class="material-design-back57"></i><?php echo $text_logout; ?></a>
                    </li>
                <?php } else { ?>
                    <li>
                        <a href="<?php echo $login; ?>"><i class="material-design-locked57"></i><?php echo $text_login; ?></a>
                    </li>
                    <li>
                        <a href="<?php echo $register; ?>"><i class="material-design-add184"></i><?php echo $text_register; ?></a>
                    </li>  
                <?php } ?>
            </ul>
        </nav>
        <?php if ($telephone || $fax) { ?>
        <address class="material-design-phone370">
        	<?php if ($telephone) { ?>
        	<a href="callto:<?php echo $telephone; ?>">
        		<?php echo $telephone; ?>
        	</a>
        	<?php } if ($fax) { ?>
        	<a href="fax:<?php echo $fax; ?>">
        		<?php echo $fax; ?>
        	</a>
        	<?php } ?>
        </address>
        <?php } ?>
        <?php echo $tm_social_list;?>
        <ul class="list-unstyled nav-list">
            <?php foreach ($informations as $information) { ?>
            <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
            <?php } ?>
            <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
            <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
            <li><a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a></li>
            <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
            <li><a href="<?php echo $reward; ?>"><?php echo $text_reward; ?></a></li>
            <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transactions; ?></a></li>
            <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
            <li><a href="<?php echo $recurring; ?>"><?php echo $text_recurring; ?></a></li>
        </ul>

    </header>



