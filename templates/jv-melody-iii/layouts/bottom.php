
<!--Block bottom-->
<?php if( $this['block']->count('bottom') ):?>
	<section id="block-bottom">
    	<div class="container">
         	<jdoc:include type="block" name="bottom"  />
        </div>
    </section>
<?php endif;?>
<!--/Block bottom-->

<!--Block bottomb-->
<?php if( $this['block']->count('bottomb') ):?>
	<section id="block-bottomb" class="wd_scroll_wrap">
        <div class="wd_contact_wrapper wd_toppadder90 wd_bottompadder90">
            <div class="wd_overlay"></div>
        	<div class="container">
             	<jdoc:include type="block" name="bottomb" />
            </div>
        </div>
    </section>
<?php endif;?>
<!--/Block bottomb-->

<!--Block Footer-->
<?php if( $this['position']->count('footer') ):?>
	<footer id="block-footer" class="wd_footer_bottom_wrapper wd_toppadder50 wd_bottompadder50">
    	<div class="container">
	        <jdoc:include type="position" name="footer" style="jvxhtml"/>
        </div>
    </footer>
<?php endif;?>
<!--/Block Footer-->
