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
$items = jkCustomfields::getItems($params->get('catid'), $params);
?>
<?php if($items){ ?>
<div class="wd_testimonial_wrapper wd_toppadder70 wd_bottompadder70 <?php echo $params->get('moduleclass_sfx'); ?>">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="wd_testimonial_slider">
					<div class="owl-carousel owl-theme">
                                            <?php foreach ($items as $item){ ?>
						<div class="item">
							<div class="wd_testimo_box">
								<img src="<?php echo JURI::root(); ?>modules/mod_jktestimonial/assets/images/heart.png" alt="Testimonial">
                                                                <?php if($item->description){ ?><p>“ <?php echo $item->description; ?> ”</p><?php } ?>
								<?php if($item->title){ ?><h4>~ <?php echo $item->title; ?> ~</h4><?php } ?>
							</div>
						</div>
                                            <?php } ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<?php } ?>