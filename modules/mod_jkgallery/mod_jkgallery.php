<?php
/*
 # mod_jkgallery - JK Gallery
 # @version		1.0.0
 # ------------------------------------------------------------------------
 # author    PHPKungfu Solutions Co
 # copyright Copyright (C) 2014 phpkungfu.club. All Rights Reserved.
 # @license - http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL or later.
 # Websites: http://www.phpkungfu.club
 # Technical Support:  http://www.phpkungfu.club/my-tickets.html
-------------------------------------------------------------------------*/


defined('_JEXEC') or die('Restricted access');
$helper = JPATH_ADMINISTRATOR . '/components/com_jkcustomfields/helpers/jkcustomfields.php';
if(!file_exists($helper)) return '<p>Please install component JK Customfields</p>';
require_once $helper;
//Get layout
require JModuleHelper::getLayoutPath('mod_jkgallery', $params->get('layout', 'default'));
