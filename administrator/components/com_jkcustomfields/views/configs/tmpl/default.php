<?php/** * @package		JK Customfields * @version		1.0.0 *  ------------------------------------------------------------------------ * @author    Son Nguyen (PHPKungfu Solutions Co) * @Copyright © 2015-2018 phpkungfu.club. All Rights Reserved. * @license - http://www.gnu.org/licenses/gpl-3.0.html GNU/GPL or later. * @Websites: http://www.phpkungfu.club * @Technical Support:  http://www.phpkungfu.club/contacts-------------------------------------------------------------------------*/// no direct accessdefined('_JEXEC') or die;JHtml::_('behavior.tooltip');JHtml::_('behavior.formvalidation');JHtml::_('behavior.keepalive');if($this->item->params) $icon = explode(',',$this->item->params);?><script type="text/javascript">    Joomla.submitbutton = function(task){        if (task == 'configs.cancel') {            Joomla.submitform(task, document.getElementById('configs-form'));        }        else {            if (task != 'configs.cancel' && document.formvalidator.isValid(document.id('configs-form'))) {                Joomla.submitform(task, document.getElementById('configs-form'));            }            else {                alert('<?php echo $this->escape(JText::_('JGLOBAL_VALIDATION_FORM_FAILED')); ?>');            }        }    }</script><div class="signaturedoc">    <form action="<?php echo JRoute::_('index.php?option=com_jkcustomfields')?>" method="post" enctype="multipart/form-data" name="adminForm" id="configs-form" class="form-validate dam-dashboad">        <?php if(!empty($this->sidebar)): ?>        <div id="j-sidebar-container" class="span2">            <?php echo $this->sidebar; ?>        </div>        <div id="j-main-container" class="span10">        <?php else : ?>        <div id="j-main-container">            <?php endif;?>            <?php /*            <div class="row-fluid form-horizontal">                <?php for($i= 0; $i < 6; $i++){ ?>                    <?php echo $this->form->renderField('menu'.$i); ?>                    <?php echo $this->form->renderField('icon'.$i); ?>                                <?php } ?>                                                          <div class="control-group">                    <label class="control-label hasTip" for="maximum_size" title="<?php echo JText::_('Maximun Size')?>">                        <?php echo JText::_('Maximun Size')?>                    </label>                    <div class="controls">                        <div class="input-append">                            <input class="input-mini" type="text" id="maximum_size" name="maximum_size" value="<?php echo $this->item->maximum_size;?>">                            <span class="add-on"><?php echo JText::_('MB'); ?></span>                        </div>                    </div>                </div>                               <div class="control-group">                    <label class="control-label" for="allowed_extensions"><h5><?php echo JText::_('1ST Alert Notification');?></h5></label>                    <div class="controls">                                                                                                          <div class="controlsx">                                <?php echo JFactory::getEditor()->display( 'emails_a', $this->item->emails_a, '100%', '200', '20', '20'); ?>                            </div>                                                                                   </div>                </div>                                                <input type="hidden" name="task" value="" />                <?php echo JHtml::_('form.token'); ?>                             */ ?>            </div>        </div>    </form></div>