
<!DOCTYPE html>
<html lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>" >
<head>
	<?php
	echo $this['template']->render('head');
    include($this['path']->findPath('style.config.php'));
    $jinput = JFactory::getApplication()->input;
    $option = $jinput->getCmd('option');
    $view   = $jinput->getCmd('view');
    $layout = $jinput->getCmd('layout');
    $blogClass = '';

    if ($option == 'com_content' && $view == 'category' && $layout == 'blog')
    {
       $blogClass = 'wd_blog_wrapper';
    }
    ?>
</head>
<body class="<?php echo $this['option']->get('template.body.class'); ?>">
	<div id="wrapper">
        <div id="mainsite">
            <span class="flexMenuToggle" ></span>
            <?php  echo $this['template']->render('top'); ?>
            <?php if( $this['block']->count('content-top') ):?>
                <div class="wd_scroll_wrap">
                    <div class="wd_gallery_wrapper wd_toppadder90 wd_bottompadder90">
                        <jdoc:include type="position" name="content-top"  />
                    </div>
                </div>
            <?php endif;?>
            <section class="wd_scroll_wrap">
                <div id="block-main" class="<?php echo $blogClass; ?> wd_toppadder90 wd_bottompadder40">
                    <div class="container">
                        <div class="row">
                            <?php echo $this['template']->render('content'); ?>
                            <?php echo $this['template']->render('sidebar-a'); ?>
                            <?php echo $this['template']->render('sidebar-b'); ?>
                         </div>
                    </div>
                </div>
            </section>
            <?php echo $this['template']->render('bottom'); ?>
        </div>
	</div>
	<?php echo $this['position']->render('analytic.none'); ?>
</body>
</html>
