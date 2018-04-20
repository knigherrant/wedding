<?php
/**
 * @package     Joomla.Site
 * @subpackage  Layout
 *
 * @copyright   Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('JPATH_BASE') or die;

?>
			<dd class="hits">
					<em class="fa fa-eye" aria-hidden="true"></em>
					<meta itemprop="interactionCount" content="UserPageVisits:<?php echo $displayData['item']->hits; ?>" />
          <?php if($displayData['item']->hits > 0): ?>
					 <?php echo $displayData['item']->hits. ' ' . JText::_( 'COM_CONTENT_VIEWS' ); ?>
          <?php else: ?>
            <?php echo $displayData['item']->hits. ' ' . JText::_( 'COM_CONTENT_VIEW' ); ?>
          <?php endif; ?>
			</dd>
