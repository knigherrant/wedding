<?php
/**
 * @version		$Id: item_comments_form.php 1992 2013-07-04 16:36:38Z lefteris.kavadas $
 * @package		K2
 * @author		JoomlaWorks http://www.joomlaworks.net
 * @copyright	Copyright (c) 2006 - 2013 JoomlaWorks Ltd. All rights reserved.
 * @license		GNU/GPL license: http://www.gnu.org/copyleft/gpl.html
 */

// no direct access
defined('_JEXEC') or die;

?>

<h3><?php echo JText::_('K2_LEAVE_A_COMMENT') ?></h3>

<?php if($this->params->get('commentsFormNotes')): ?>
	<p class="itemCommentsFormNotes">
	 <?php if($this->params->get('commentsFormNotesText')): ?>
		 <?php echo nl2br($this->params->get('commentsFormNotesText')); ?>
	 <?php endif; ?>
 </p>
<?php endif; ?>

<form action="<?php echo JURI::root(true); ?>/index.php" method="post" id="comment-form" class="form-validate">


	<div class="row">
		<div class="col-sm-6">
			<div class="form-group">
				<label for="userName"><?php echo JText::_('K2_FULL_NAME'); ?>: </label>
				<input class="inputbox" type="text" name="userName" id="userName" />
			</div>
		</div>
		<div class="col-sm-6">
			<div class="form-group">
				<label for="commentEmail"><?php echo JText::_('EMAIL'); ?>: </label>
				<input  class="inputbox" type="text" name="commentEmail" id="commentEmail"  />
			</div>
		</div>
	</div>

	<div class="form-group">
		<label for="commentURL"><?php echo JText::_('K2_COMMENTS'); ?>: </label>
		<textarea rows="20" cols="10" name="commentText" id="commentText"></textarea>
	</div>

	<?php if($this->params->get('recaptcha') && ($this->user->guest || $this->params->get('recaptchaForRegistered', 1))): ?>
	<div class="form-group">
		 <label class="formRecaptcha"><?php echo JText::_('K2_ENTER_THE_TWO_WORDS_YOU_SEE_BELOW'); ?></label>
		 <div id="recaptcha"></div>
	 </div>
 <?php endif; ?>

 <input type="submit"  id="submitCommentButton" class="btn btn-primary" value="<?php echo JText::_('SUBMIT'); ?>" />

 <span id="formLog"></span>

 <input type="hidden" name="option" value="com_k2" />
 <input type="hidden" name="view" value="item" />
 <input type="hidden" name="task" value="comment" />
 <input type="hidden" name="itemID" value="<?php echo JRequest::getInt('id'); ?>" />
 <?php echo JHTML::_('form.token'); ?>
</form>
