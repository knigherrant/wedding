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
$items_man = jkCustomfields::getItems($params->get('catid_man'), $params);
$items_woman = jkCustomfields::getItems($params->get('catid_woman'), $params);
?>
<div class="wd_family_tabbox <?php echo $params->get('moduleclass_sfx'); ?>">
<!-- Nav tabs -->
<?php if($params->get('man_image') || $params->get('woman_image')){ ?>
<ul class="nav nav-tabs" role="tablist">
        <?php if($params->get('man_image')){ ?>
        <li role="presentation" class="active">
            <a href="#groom" aria-controls="groom" role="tab" data-toggle="tab">
                <img src="<?php echo JURI::root() . $params->get('man_image'); ?>" alt="<?php echo $params->get('man_name'); ?>"><p><?php echo $params->get('man_name'); ?></p>
            </a>
        </li>
        <?php } ?>
        <?php if($params->get('woman_image')){ ?>
        <li role="presentation">
            <a href="#bride" aria-controls="bride" role="tab" data-toggle="tab">
                <img src="<?php echo JURI::root() . $params->get('woman_image'); ?>" alt="<?php echo $params->get('woman_name'); ?>"><p><?php echo $params->get('woman_name'); ?></p>
            </a>
        </li>
        <?php } ?>
</ul>
<?php } ?>
<!-- Tab panes -->
<?php if($items_man || $items_woman){ ?>
<div class="tab-content">
        <div role="tabpanel" class="tab-pane fade in active" id="groom">
                <div class="wd_family_slider">
                        <div class="owl-carousel owl-theme">
                            <?php foreach ($items_man as $iman){ ?>
                                <div class="item">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="wd_family_infobox">
                                                        <div class="wd_family_infobox_img">
                                                                <span><img src="<?php echo JURI::root(); ?>modules/mod_jkmember/assets/images/line2.png" alt="Line"></span>
                                                                <?php if($iman->thumb){ ?><img src="<?php echo $iman->thumb; ?>" alt="<?php echo $iman->title; ?>"><?php } ?>
                                                        </div>
                                                        <?php if($iman->title){ ?><h2><?php echo $iman->title; ?></h2><?php } ?>
                                                        <?php if($iman->subtitle){ ?><p><?php echo $iman->subtitle; ?></p><?php } ?>
                                                        <ul>
                                                                <?php if($iman->icon_fb){ ?><li><a href="<?php echo $iman->icon_fb; ?>"><i class="fa fa-facebook" aria-hidden="true"></i></a></li><?php } ?>
                                                                <?php if($iman->icon_tw){ ?><li><a href="<?php echo $iman->icon_tw; ?>"><i class="fa fa-twitter" aria-hidden="true"></i></a></li><?php } ?>
                                                                <?php if($iman->icon_ins){ ?><li><a href="<?php echo $iman->icon_ins; ?>"><i class="fa fa-instagram" aria-hidden="true"></i></a></li><?php } ?>
                                                        </ul>
                                                </div>
                                        </div>
                                </div>
                            <?php } ?>
                        </div>
                </div>
        </div>
        <div role="tabpanel" class="tab-pane fade" id="bride">
                <div class="wd_family_slider">
                        <div class="owl-carousel owl-theme">
                             <?php foreach ($items_woman as $iwoman){ ?>
                                <div class="item">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="wd_family_infobox">
                                                        <div class="wd_family_infobox_img">
                                                                <span><img src="<?php echo JURI::root(); ?>modules/mod_jkmember/assets/images/line2.png" alt="Line"></span>
                                                                <?php if($iwoman->thumb){ ?><img src="<?php echo $iwoman->thumb; ?>" alt="<?php echo $iwoman->title; ?>"><?php } ?>
                                                        </div>
                                                        <?php if($iwoman->subtitle){ ?><h2><?php echo $iwoman->subtitle; ?></h2><?php } ?>
                                                        <?php if($iwoman->subtitle){ ?><p><?php echo $iwoman->subtitle; ?></p><?php } ?>
                                                        <ul>
                                                                <?php if($iwoman->icon_fb){ ?><li><a href="<?php echo $iwoman->icon_fb; ?>"><i class="fa fa-facebook" aria-hidden="true"></i></a></li><?php } ?>
                                                                <?php if($iwoman->icon_tw){ ?><li><a href="<?php echo $iwoman->icon_tw; ?>"><i class="fa fa-twitter" aria-hidden="true"></i></a></li><?php } ?>
                                                                <?php if($iwoman->icon_ins){ ?><li><a href="<?php echo $iman->icon_ins; ?>"><i class="fa fa-instagram" aria-hidden="true"></i></a></li><?php } ?>
                                                        </ul>
                                                </div>
                                        </div>
                                </div>
                             <?php } ?>
                        </div>
                </div>
        </div>
</div>
<?php } ?>
</div>
