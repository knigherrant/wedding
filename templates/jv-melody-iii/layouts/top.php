<!--Block top-->
<?php if( $this['block']->count('panel') ):?>
	<section id="block-panel">
    	<div class="container">
    		<jdoc:include type="block" name="panel" />
        </div>
    </section>
<?php endif;?>
<!--/Block top-->

<!--Block Header -->
<header section-scroll='0' class="wd_scroll_wrap">
    <div class="wd_slider_wrapper ">
        <div id="snow"></div>
        <div class="wd_header_wrapper wd_single_index_menu">
            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                <div class="wd_logo">
                    <jdoc:include type="position" name="logo" />
                    <button class="wd_menu_btn"><i class="fa fa-bars" aria-hidden="true"></i></button>
                    <jdoc:include type="position" name="search" style="none"  />
                </div>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                <?php if( $this['position']->count('menu') ):?>
                    <div class="wd_mainmenu_wrapper">
                        <div class="wd_main_menu_wrapper">
                            <div class="wd_main_menu wd_single_index_menu">
                                <jdoc:include type="position" name="menu" style="raw" />
                            </jdoc:include>
                        </div>
                    </div>
                <?php endif;?>
            </div>
        </div>
    </div>

    <!--Block Slide-->
    <?php if( $this['position']->count('slideshow') ):?>
        <jdoc:include type="position" name="slideshow"  style="raw"  />
        <div class="wd_single_index_menu_down">
            <ul>
                <li><a href="#1" id="headbottom"><i class="fa fa-long-arrow-down" aria-hidden="true"></i></a></li>
            </ul>
        </div>
    <?php endif;?>
    <!--/Block Slide-->
</header>
<!--/Block Header-->

<?php if( $this['position']->count('breadcrumb') ):?>
    <!--Block Breadcrumb-->
	<section id="block-breadcrumb">
    	<div class="container">
			<jdoc:include type="position" name="breadcrumb" style="none" />
		</div>
	</section>
    <!--/Block Breadcrumb-->
<?php endif;?>

<?php if( $this['position']->count('full-webding-conent-1') ):?>
    <!--Block full-webding-conent-1-->
    <section id="down" class="wd_scroll_wrap">
        <div class="wd_about_wrapper wd_toppadder90 wd_bottompadder70">
            <div class="container">
                <jdoc:include type="position" name="full-webding-conent-1" style="jvxhtml" />
            </div>
        </div>
    </section>
    <!--/Block full-webding-conent-1-->
<?php endif;?>

<?php if( $this['position']->count('full-webding-conent-2') ):?>
    <!--Block full-webding-conent-2-->
    <section id="block-story" class="wd_scroll_wrap">
        <div class="wd_story_wrapper wd_toppadder90 wd_bottompadder90">
            <div class="wd_overlay"></div>
            <div class="container">
                <jdoc:include type="position" name="full-webding-conent-2" style="rawtitle" />
            </div>
        </div>
    </section>
    <!--/Block full-webding-conent-2-->
<?php endif;?>

<?php if( $this['position']->count('full-webding-conent-3') ):?>
    <!--Block full-webding-conent-3-->
    <section id="block-event" class="wd_scroll_wrap">
        <div class="wd_event_wrapper wd_toppadder90 wd_bottompadder50">
            <div class="container">
                <jdoc:include type="position" name="full-webding-conent-3" style="jvxhtml" />
            </div>
        </div>
    </section>
    <!--/Block full-webding-conent-3-->
<?php endif;?>

<?php if( $this['block']->count('top') ):?>
    <!--Block top-->
    <section id="block-top" class="wd_scroll_wrap">
        <div class="wd_guest_wrapper wd_toppadder90">
            <div class="wd_overlay"></div>
            <jdoc:include type="position" name="top-title" style="rawtitle" />
            <div class="container">
                <jdoc:include type="block" name="top"  />
            </div>
        </div>
    </section>
    <!--/Block top-->
<?php endif;?>

<?php if( $this['position']->count('full-webding-conent-4') ):?>
    <!--Block full-webding-conent-4-->
    <section class="wd_testimonial_wrapper wd_toppadder70 wd_bottompadder70">
        <div class="container">
            <jdoc:include type="position" name="full-webding-conent-4" style="jvxhtml" />
        </div>
    </section>
    <!--/Block full-webding-conent-4-->
<?php endif;?>

<?php if( $this['block']->count('topb') ):?>
    <!--Block topb-->
    <section id="block-topb">
        <div class="container">
            <jdoc:include type="block" name="topb" style="jvxhtml" />
        </div>
    </section>
    <!--/Block topb-->
<?php endif;?>
