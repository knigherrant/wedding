<?php/** * @package		JK Customfields * @version		1.0.0 *  ------------------------------------------------------------------------ * @author    Son Nguyen (PHPKungfu Solutions Co) * @Copyright © 2015-2018 phpkungfu.club. All Rights Reserved. * @license - http://www.gnu.org/licenses/gpl-3.0.html GNU/GPL or later. * @Websites: http://www.phpkungfu.club * @Technical Support:  http://www.phpkungfu.club/contacts-------------------------------------------------------------------------*/// No direct accessdefined('_JEXEC') or die;jimport('joomla.application.component.view');/** * View to edit */class JKCustomfieldsViewItem extends JViewLegacy{	protected $state;	protected $item;	protected $form;	/**	 * Display the view	 */	public function display($tpl = null)	{		$this->state	= $this->get('State');		$this->item		= $this->get('Item');		$this->form		= $this->get('Form');		// Check for errors.		if (count($errors = $this->get('Errors'))) {            throw new Exception(implode("\n", $errors));		}                JKCustomfieldsHelper::addAsset();		$this->addToolbar();                                JKCustomfieldsHelper::addSubmenu('items');                $this->sidebar = JHtmlSidebar::render();		parent::display($tpl);	}	/**	 * Add the page title and toolbar.	 */	protected function addToolbar()	{		//JFactory::getApplication()->input->set('hidemainmenu', true);		$user		= JFactory::getUser();		$isNew		= ($this->item->id == 0);        if (isset($this->item->checked_out)) {		    $checkedOut	= !($this->item->checked_out == 0 || $this->item->checked_out == $user->get('id'));        } else {            $checkedOut = false;        }		$canDo		= JKCustomfieldsHelper::getActions();            JToolBarHelper::title(JText::_('COM_JKCUSTOMFIELDS_TITLE_PROJECT'), 'file');     		// If not checked out, can save the item.		if (!$checkedOut && ($canDo->get('core.edit')||($canDo->get('core.create'))))		{			JToolBarHelper::apply('item.apply', 'JTOOLBAR_APPLY');			JToolBarHelper::save('item.save', 'JTOOLBAR_SAVE');		}						if (empty($this->item->id)) {			JToolBarHelper::cancel('item.cancel', 'JTOOLBAR_CANCEL');		}		else {			JToolBarHelper::cancel('item.cancel', 'JTOOLBAR_CLOSE');		}	}}