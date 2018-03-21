<?php
/*
 # MOD_JVLATEST_NEWS - JV Latest News
 # @version		3.x
 # ------------------------------------------------------------------------
 # author    Open Source Code Solutions Co
 # copyright Copyright (C) 2013 joomlavi.com. All Rights Reserved.
 # @license - http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL or later.
 # Websites: http://www.joomlavi.com
 # Technical Support:  http://www.joomlavi.com/my-tickets.html
-------------------------------------------------------------------------*/

// No direct access to this file
defined('_JEXEC') or die('Restricted access');

$document = JFactory::getDocument();
JHTML::addIncludePath(JPATH_SITE.'/components/com_content/helpers');
JHTML::_('behavior.framework', true);
if(count($items)){ ?>
    <div class="wd_story_covers">
        <div class="wd_story_line"></div>
        <?php
        $count = 1;
        $list = $items;
        if(isset($list->intros) && count($list->intros)){
        foreach ($list->intros as $index => $item) : ?>
            <?php
                $class = ($count %2 != 0) ? '_left' : '_right';
                $thumbnail = @$item->thumbnails;
            ?>
            <div class="wd_story_covers_box<?php echo $class; ?>">
                <div class="wd_story_dot"><span></span></div>
                <?php if($thumbnail != '' && $params->get('intro_thumbnail', 1)){?>
                    <div class="wd_story_covers_box_img">
                        <img src="<?php echo $thumbnail ?>" alt="<?php echo $item->title; ?>" />
                    </div>
                <?php }?>
                <div class="wd_story_covers_box_datails">

                    <?php if ($params->get('show_intro_date')) : ?>
                        <span><?php echo JHTML::_('date', $item->created, JText::_('DATE_FORMAT_LC3')) ?></span>
                    <?php endif; ?>
                    <?php if($params->get('show_title_intro', 1)) { ?>
                            <?php if((bool)$params->get('title_link_intro', '0')){?>
                                <h3><a href="<?php echo $item->link; ?>"><?php echo $item->title; ?></a></h3>
                            <?php } else { ?>
                                    <h3><?php echo $item->title; ?></h3>
                            <?php } ?>
                    <?php } ?>
                    <?php if($params->get('show_content_intro', 0)){  ?>
                        <?php echo $item->text; ?>
                    <?php } ?>
                </div>
            </div>
        <?php
            $count ++;
        endforeach;
        }
        ?>
    </div>
<?php } ?>
