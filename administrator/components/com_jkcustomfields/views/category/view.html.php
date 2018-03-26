<?php/** * @package		JK Customfields * @version		1.0.0 *  ------------------------------------------------------------------------ * @author    Son Nguyen (PHPKungfu Solutions Co) * @Copyright © 2015-2018 phpkungfu.club. All Rights Reserved. * @license - http://www.gnu.org/licenses/gpl-3.0.html GNU/GPL or later. * @Websites: http://www.phpkungfu.club * @Technical Support:  http://www.phpkungfu.club/contacts-------------------------------------------------------------------------*/// No direct accessdefined('_JEXEC') or die;jimport('joomla.application.component.view');/** * View to edit */class JKCustomfieldsViewCategory extends JViewLegacy{	protected $state;	protected $item;	protected $form;	/**	 * Display the view	 */	public function display($tpl = null)	{		$this->state	= $this->get('State');		$this->item		= $this->get('Item');		$this->form		= $this->get('Form');		// Check for errors.		if (count($errors = $this->get('Errors'))) {            throw new Exception(implode("\n", $errors));		}        JKCustomfieldsHelper::addAsset();        JKCustomfieldsHelper::addSubmenu('categories');            $this->sidebar = JHtmlSidebar::render();		$this->addToolbar();		parent::display($tpl);	}	/**	 * Add the page title and toolbar.	 */	protected function addToolbar()	{		JFactory::getApplication()->input->set('hidemainmenu', true);		$user		= JFactory::getUser();		$isNew		= ($this->item->id == 0);        if (isset($this->item->checked_out)) {		    $checkedOut	= !($this->item->checked_out == 0 || $this->item->checked_out == $user->get('id'));        } else {            $checkedOut = false;        }		$canDo		= JKCustomfieldsHelper::getActions();		    JToolBarHelper::title(JText::_('COM_JKCUSTOMFIELDS_TITLE_CATEGORY'), 'folder');		// If not checked out, can save the item.		if (!$checkedOut && ($canDo->get('core.edit')||($canDo->get('core.create'))))		{			JToolBarHelper::apply('category.apply', 'JTOOLBAR_APPLY');			JToolBarHelper::save('category.save', 'JTOOLBAR_SAVE');		}		if (empty($this->item->id)) {			JToolBarHelper::cancel('category.cancel', 'JTOOLBAR_CANCEL');		}		else {			JToolBarHelper::cancel('category.cancel', 'JTOOLBAR_CLOSE');		}	}}