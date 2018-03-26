<?php/** * @package		JK Customfields * @version		1.0.0 *  ------------------------------------------------------------------------ * @author    Son Nguyen (PHPKungfu Solutions Co) * @Copyright © 2015-2018 phpkungfu.club. All Rights Reserved. * @license - http://www.gnu.org/licenses/gpl-3.0.html GNU/GPL or later. * @Websites: http://www.phpkungfu.club * @Technical Support:  http://www.phpkungfu.club/contacts-------------------------------------------------------------------------*/// No direct accessdefined('_JEXEC') or die;jimport('joomla.application.component.view');/** * View class for a list of JKCustomfields. */class JKCustomfieldsViewCategories extends JViewLegacy{	protected $items;	protected $pagination;	protected $state;	protected $ordering;	/**	 * Display the view	 */	public function display($tpl = null)	{		$this->state		= $this->get('State');		$this->items		= $this->get('Items');		$this->pagination	= $this->get('Pagination');		// Check for errors.		if (count($errors = $this->get('Errors'))) {			throw new Exception(implode("\n", $errors));		}        JKCustomfieldsHelper::addAsset();		$this->addToolbar();            $input = JFactory::getApplication()->input;            $view = $input->getCmd('view', '');            JKCustomfieldsHelper::addSubmenu($view);            $this->sidebar = JHtmlSidebar::render();        		parent::display($tpl);	}	/**	 * Add the page title and toolbar.	 *	 * @since	1.6	 */	protected function addToolbar()	{		$state	= $this->get('State');		$canDo	= JKCustomfieldsHelper::getActions($state->get('filter.category_id'));            JToolBarHelper::title(JText::_('COM_JKCUSTOMFIELDS_TITLE_CATEGORIES'), 'folder');        //Check if the form exists before showing the add/edit buttons        if ($canDo->get('core.create')) {            JToolBarHelper::addNew('category.add','JTOOLBAR_NEW');        }        if ($canDo->get('core.edit') && isset($this->items[0])) {            JToolBarHelper::editList('category.edit','JTOOLBAR_EDIT');        }		if ($canDo->get('core.edit.state')) {            if (isset($this->items[0]->state)) {			    JToolBarHelper::divider();			    JToolBarHelper::custom('categories.publish', 'publish.png', 'publish_f2.png','JTOOLBAR_PUBLISH', true);			    JToolBarHelper::custom('categories.unpublish', 'unpublish.png', 'unpublish_f2.png', 'JTOOLBAR_UNPUBLISH', true);            }            if (isset($this->items[0])) {                JToolBarHelper::deleteList('', 'categories.delete','JTOOLBAR_DELETE');            }            if (isset($this->items[0]->checked_out)) {            	JToolBarHelper::custom('categories.checkin', 'checkin.png', 'checkin_f2.png', 'JTOOLBAR_CHECKIN', true);            }		}            JHtmlSidebar::addFilter(                JText::_('JOPTION_SELECT_PUBLISHED'),                'filter_published',                JHtml::_('select.options', JKCustomfieldsHelper::getPublishedOptions(), "value", "text", $this->state->get('filter.state'), true)            );        if ($canDo->get('core.admin')) {            JToolBarHelper::preferences('com_jkcustomfields');        }	}    protected function getSortFields()    {        return array(            'a.ordering' => JText::_('COM_JKCUSTOMFIELDS_ORDERING'),            'a.state' => JText::_('JSTATUS'),            'a.title' => JText::_('COM_JKCUSTOMFIELDS_TITLE'),            'access_title' => JText::_('COM_JKCUSTOMFIELDS_ACCESS'),            'a.created_by' => JText::_('COM_JKCUSTOMFIELDS_CREATED_BY'),            'a.created' => JText::_('COM_JKCUSTOMFIELDS_CREATED'),            'a.id' => JText::_('JGRID_HEADING_ID')        );    }    }