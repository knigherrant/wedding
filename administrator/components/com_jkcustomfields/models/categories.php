<?php/** * @package		JK Customfields * @version		1.0.0 *  ------------------------------------------------------------------------ * @author    Son Nguyen (PHPKungfu Solutions Co) * @Copyright © 2015-2018 phpkungfu.club. All Rights Reserved. * @license - http://www.gnu.org/licenses/gpl-3.0.html GNU/GPL or later. * @Websites: http://www.phpkungfu.club * @Technical Support:  http://www.phpkungfu.club/contacts-------------------------------------------------------------------------*/defined('_JEXEC') or die;jimport('joomla.application.component.modellist');/** * Methods supporting a list of JKCustomfields records. */class JKCustomfieldsModelCategories extends JModelList {    /**     * Constructor.     *     * @param    array    An optional associative array of configuration settings.     * @see        JController     * @since    1.6     */    public function __construct($config = array()) {        if (empty($config['filter_fields'])) {            $config['filter_fields'] = array(                'id', 'a.id',                'title', 'a.title',                'alias', 'a.alias',                'parent', 'a.parent',                'image', 'a.image',                'icon', 'a.icon',                'description', 'a.description',                'access', 'a.access', 'access_title',                'state', 'a.state',                'created', 'a.created',                'created_by', 'a.created_by',                'ordering', 'a.ordering'            );        }        parent::__construct($config);    }    /**     * Method to auto-populate the model state.     *     * Note. Calling getState in this method will result in recursion.     */    protected function populateState($ordering = null, $direction = null) {        // Initialise variables.        $app = JFactory::getApplication('administrator');        // Load the filter state.        $search = $app->getUserStateFromRequest($this->context . '.filter.search', 'filter_search');        $this->setState('filter.search', $search);        $published = $app->getUserStateFromRequest($this->context . '.filter.state', 'filter_published', '', 'string');        $this->setState('filter.state', $published);        // Load the parameters.        $params = JComponentHelper::getParams('com_jkcustomfields');        $this->setState('params', $params);        // List state information.        parent::populateState('a.id', 'asc');    }    /**     * Method to get a store id based on model configuration state.     *     * This is necessary because the model is used by the component and     * different modules that might need different sets of data or different     * ordering requirements.     *     * @param	string		$id	A prefix for the store id.     * @return	string		A store id.     * @since	1.6     */    protected function getStoreId($id = '') {        // Compile the store id.        $id.= ':' . $this->getState('filter.search');        $id.= ':' . $this->getState('filter.state');        return parent::getStoreId($id);    }    /**     * Build an SQL query to load the list data.     *     * @return	JDatabaseQuery     * @since	1.6     */    protected function getListQuery() {        // Create a new query object.        $db = $this->getDbo();        $query = $db->getQuery(true);        // Select the required fields from the table.        $query->select(                $this->getState(                        'list.select', 'a.*'                )        );        $query->from('`#__jkcustomfields_categories` AS a');        return $query;    }    public function getItems() {        $items = parent::getItems();        return $items;    }}