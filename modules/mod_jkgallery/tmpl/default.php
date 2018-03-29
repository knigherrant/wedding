<?php
/*
# mod_jvdemo - JK Gallery
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
$items = jkCustomfields::getItems($params->get('catid'), $params);
//group items
$gallery = array();
$j=0;
foreach ($items as $i=>$item){
    if($j==0) $row = array(); 
    if($j < 3) $row[] = $item;
    $j++;
    if($j == 3 || count($items)-1 == $i){ $gallery[] = $row; $j=0; }
}
?>
<?php if($gallery){ ?>
<div class="wd_gallery_slider popup-gallery <?php echo $params->get('moduleclass_sfx'); ?>">
    <div class="owl-carousel owl-theme">
        <?php foreach ($gallery as $item){ ?>
            <div class="item">
                    <?php if(isset($item[0])){ ?>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="wd_gallery_slide">
                                    <?php if($item[0]->thumb){ ?><img src="<?php echo $item[0]->thumb; ?>" alt="Wedding"><?php } ?>
                                    <div class="ast_glr_overlay">
                                            <?php if($item[0]->title){ ?><p><?php echo $item[0]->title; ?></p><?php } ?>
                                            <?php if($item[0]->image){ ?>
                                                <a href="<?php echo $item[0]->image; ?>" title=""><i class="fa fa-expand" aria-hidden="true"></i></a>
                                            <?php } ?>
                                    </div>
                            </div>
                    </div>
                    <?php } ?>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <?php if(isset($item[1])){ ?>
                            <div class="wd_gallery_slide">
                                    <?php if($item[1]->thumb){ ?><img src="<?php echo $item[1]->thumb; ?>" alt="Wedding"><?php } ?>
                                    <div class="ast_glr_overlay">
                                            <?php if($item[1]->title){ ?><p><?php echo $item[1]->title; ?></p><?php } ?>
                                            <?php if($item[1]->image){ ?>
                                                <a href="<?php echo $item[1]->image; ?>" title=""><i class="fa fa-expand" aria-hidden="true"></i></a>
                                            <?php } ?>
                                    </div>
                            </div>
                        <?php } ?>
                        <?php if(isset($item[2])){ ?>
                            <div class="wd_gallery_slide">
                                    <?php if($item[2]->thumb){ ?><img src="<?php echo $item[2]->thumb; ?>" alt="Wedding"><?php } ?>
                                    <div class="ast_glr_overlay">
                                            <?php if($item[2]->title){ ?><p><?php echo $item[2]->title; ?></p><?php } ?>
                                            <?php if($item[2]->image){ ?>
                                                <a href="<?php echo $item[2]->image; ?>" title=""><i class="fa fa-expand" aria-hidden="true"></i></a>
                                            <?php } ?>
                                    </div>
                            </div>
                        <?php } ?>
                    </div>
            </div>
        <?php } ?>  
    </div>
</div>
<?php } ?>