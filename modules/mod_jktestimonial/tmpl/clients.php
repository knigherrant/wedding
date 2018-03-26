<?php
/*
# mod_jvdemo - JK Testimonial
# @version		1.0.0
# ------------------------------------------------------------------------
# author    PHPKungfu Solutions Co
# copyright Copyright (C) 2014 phpkungfu.club. All Rights Reserved.
# @license - http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL or later.
# Websites: http://www.phpkungfu.club
# Technical Support:  http://www.phpkungfu.club/my-tickets.html
-------------------------------------------------------------------------*/
// No direct access to this file
defined( '_JEXEC' ) or die( 'Restricted access' );
$doc   = JFactory::getDocument();
$items = jkCustomfields::getItems($params->get('catid'));
?>
<?php if($items){ ?>
<div class="wd_guest_slider <?php echo $params->get('moduleclass_sfx'); ?>">
    <div class="owl-carousel owl-theme">
        <?php foreach ($items as $item){ ?>
            <?php if($item->thumb){ ?><div class="item"><img src="<?php echo $item->thumb; ?>" alt="<?php echo $item->title; ?>" class="img-responsive"></div><?php } ?>
        <?php } ?>
    </div>
</div>
<?php } ?>