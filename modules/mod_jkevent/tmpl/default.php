<?php
/*
# JK Invitation
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
?>

<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
        <div class="wd_event_infobox">
                <?php if($params->get('main_title')){ ?><h2><?php echo $params->get('main_title'); ?></h2><?php } ?>
                <?php if($params->get('main_time')){ ?><p class="time"><?php echo $params->get('main_time'); ?></p><?php } ?>
                <?php if($params->get('main_adress')){ ?><span><?php echo $params->get('main_adress'); ?></span><?php } ?>
                <?php if($params->get('main_title')){ ?>
                    <p><?php echo $params->get('main_intro'); ?>
                        <?php if($params->get('main_more')){ ?><a href="<?php echo JRoute::_('index.php?Itemid=' . $params->get('main_more')); ?>"><?php echo JText::_('Read More...');?></a><?php } ?>
                    </p>
                <?php } ?>
                <div class="clearfix"></div>
                <?php if($params->get('main_map')){ ?><a href="<?php echo $params->get('main_map'); ?>" target="_blank"><img src="<?php echo JURI::root(); ?>modules/mod_jkevent/assets/images/map.png" alt="Map" class="openmap img-responsive"></a><?php } ?>
        </div>
</div>
<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 col-lg-push-4 col-md-push-4 col-sm-push-0">
        <div class="wd_event_infobox">
                 <?php if($params->get('party_title')){ ?><h2><?php echo $params->get('party_title'); ?></h2><?php } ?>
                <?php if($params->get('party_time')){ ?><p class="time"><?php echo $params->get('party_time'); ?></p><?php } ?>
                <?php if($params->get('party_adress')){ ?><span><?php echo $params->get('party_adress'); ?></span><?php } ?>
                <?php if($params->get('party_intro')){ ?>
                    <p><?php echo $params->get('party_intro'); ?>
                        <?php if($params->get('party_more')){ ?><a href="<?php echo JRoute::_('index.php?Itemid=' . $params->get('party_more')); ?>"><?php echo JText::_('Read More...');?></a><?php } ?>
                    </p>
                <?php } ?>
                <div class="clearfix"></div>
                <?php if($params->get('party_map')){ ?><a  href="<?php echo $params->get('party_map'); ?>" target="_blank"><img src="<?php echo JURI::root(); ?>modules/mod_jkevent/assets/images/map.png" alt="Map" class="openmap img-responsive"></a><?php } ?>
        </div>
</div>
<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 col-lg-pull-4 col-md-pull-4 col-sm-pull-0">
        <div class="wd_event_infobox">
                <?php if($params->get('image')){ ?><img src="<?php echo JURI::root() . $params->get('image'); ?>" alt="Event Image"><?php } ?>
                <?php if($params->get('rsvp')){ ?>
                <div class="wd_btn wd_single_index_menu_rsvp">
                        <a href="<?php echo $params->get('rsvp'); ?>">rsvp</a>
                </div>
                <?php } ?>
        </div>
</div>
