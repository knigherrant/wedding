<?php
/**
 # com_jvframework - JV Framework
 # @version		1.5.x
 # ------------------------------------------------------------------------
 # author    PHPKungfu Solutions Co
 # copyright Copyright (C) 2011 phpkungfu.club. All Rights Reserved.
 # @license - http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL or later.
 # Websites: http://www.phpkungfu.club
 # Technical Support:  http://www.phpkungfu.club/my-tickets.html
-------------------------------------------------------------------------
*/

// No direct access to this file
defined ( '_JEXEC' ) or die ( 'Restricted access' );
jimport ( 'joomla.application.component.controllerform' );
class JVFrameworkManagerControllerStyle extends JControllerForm {
	protected $option = 'com_jvframework';
        //public $default_view = 'JVFrameworkManagerViewSty';
        public function __construct($config = array()) {
		parent::__construct ( $config );
		$this->registerTask ( 'reset', 'save' );
	}
	
	public function cpanel($key = null, $urlVar = null) {
		$this->setRedirect ( JRoute::_ ( 'index.php?option=com_jvframework', false ) );		
	}

     
        public function save($key = null, $urlVar = null) {
		// Check for request forgeries.
		JSession::checkToken () or jexit ( JText::_ ( 'JINVALID_TOKEN' ) );
		
		// Initialise variables.
		$app = JFactory::getApplication ();
		$lang = JFactory::getLanguage ();
		$model = $this->getModel ();
		$table = $model->getTable ();
                if(version_compare(JVERSION,'3.2','<')){
                    $data = JFactory::getApplication()->input->post->get ( 'jform', array (), 'array' );
                }else{
                    $data = JRequest::get('post');
                }
		$checkin = property_exists ( $table, 'checked_out' );
		$context = "$this->option.edit.$this->context";
		$task = $this->getTask ();
		
		// Determine the name of the primary key for the data.
		if (empty ( $key )) {
			$key = $table->getKeyName ();
		}
		
		// To avoid data collisions the urlVar may be different from the primary
		// key.
		if (empty ( $urlVar )) {
			$urlVar = $key;
		}
		
		$recordId = JFactory::getApplication()->input->get ( $urlVar, 0, 'int' );
		
		if (! $this->checkEditId ( $context, $recordId )) {
			// Somehow the person just went to the form and tried to save it. We
			// don't allow that.
			$this->setError ( JText::sprintf ( 'JLIB_APPLICATION_ERROR_UNHELD_ID', $recordId ) );
			$this->setMessage ( $this->getError (), 'error' );
			
			$this->setRedirect ( JRoute::_ ( 'index.php?option=' . $this->option . '&view=' . $this->view_list . $this->getRedirectToListAppend (), false ) );
			
			return false;
		}
		
		// Populate the row id from the session.
		$data [$key] = $recordId;
		
		// The save2copy task needs to be handled slightly differently.
		if ($task == 'save2copy') {
			// Check-in the original row.
			if ($checkin && $model->checkin ( $data [$key] ) === false) {
				// Check-in failed. Go back to the item and display a notice.
				$this->setError ( JText::sprintf ( 'JLIB_APPLICATION_ERROR_CHECKIN_FAILED', $model->getError () ) );
				$this->setMessage ( $this->getError (), 'error' );
				
				$this->setRedirect ( JRoute::_ ( 'index.php?option=' . $this->option . '&view=' . $this->view_item . $this->getRedirectToItemAppend ( $recordId, $urlVar ), false ) );
				
				return false;
			}
			
			// Reset the ID and then treat the request as for Apply.
			$data [$key] = 0;
			$task = 'apply';
		}
		
		// Access check.
		if (! $this->allowSave ( $data, $key )) {
			$this->setError ( JText::_ ( 'JLIB_APPLICATION_ERROR_SAVE_NOT_PERMITTED' ) );
			$this->setMessage ( $this->getError (), 'error' );
			
			$this->setRedirect ( JRoute::_ ( 'index.php?option=' . $this->option . '&view=' . $this->view_list . $this->getRedirectToListAppend (), false ) );
			
			return false;
		}
		
		// Validate the posted data.
		// Sometimes the form needs some posted data, such as for plugins and
		// modules.
		$form = $model->getForm ( $data, false );
		
		if (! $form) {
			$app->enqueueMessage ( $model->getError (), 'error' );
			
			return false;
		}
		
		// Test whether the data is valid.
		$validData = $model->validate ( $form, $data );
		
		// Check for validation errors.
		if ($validData === false) {
			// Get the validation messages.
			$errors = $model->getErrors ();
			
			// Push up to three validation messages out to the user.
			for($i = 0, $n = count ( $errors ); $i < $n && $i < 3; $i ++) {
				if ($errors [$i] instanceof Exception) {
					$app->enqueueMessage ( $errors [$i]->getMessage (), 'warning' );
				} else {
					$app->enqueueMessage ( $errors [$i], 'warning' );
				}
			}
			
			// Save the data in the session.
			$app->setUserState ( $context . '.data', $data );
			
			// Redirect back to the edit screen.
			$this->setRedirect ( JRoute::_ ( 'index.php?option=' . $this->option . '&view=' . $this->view_item . $this->getRedirectToItemAppend ( $recordId, $key ), false ) );
			
			return false;
		}
		
		// Attempt to save the data.
		if (! $model->save ( $validData )) {
			// Save the data in the session.
			$app->setUserState ( $context . '.data', $validData );
			
			// Redirect back to the edit screen.
			$this->setError ( JText::sprintf ( 'JLIB_APPLICATION_ERROR_SAVE_FAILED', $model->getError () ) );
			$this->setMessage ( $this->getError (), 'error' );
			
			$this->setRedirect ( JRoute::_ ( 'index.php?option=' . $this->option . '&view=' . $this->view_item . $this->getRedirectToItemAppend ( $recordId, $key ), false ) );
			
			return false;
		}
		$this->saveCustom($data);
		// Save succeeded, so check-in the record.
		if ($checkin && $model->checkin ( $validData [$key] ) === false) {
			// Save the data in the session.
			$app->setUserState ( $context . '.data', $validData );
			
			// Check-in failed, so go back to the record and display a notice.
			$this->setError ( JText::sprintf ( 'JLIB_APPLICATION_ERROR_CHECKIN_FAILED', $model->getError () ) );
			$this->setMessage ( $this->getError (), 'error' );
			
			$this->setRedirect ( JRoute::_ ( 'index.php?option=' . $this->option . '&view=' . $this->view_item . $this->getRedirectToItemAppend ( $recordId, $key ), false ) );
			
			return false;
		}
		
		$this->setMessage ( JText::_ ( ($lang->hasKey ( $this->text_prefix . ($recordId == 0 && $app->isSite () ? '_SUBMIT' : '') . '_SAVE_SUCCESS' ) ? $this->text_prefix : 'JLIB_APPLICATION') . ($recordId == 0 && $app->isSite () ? '_SUBMIT' : '') . '_SAVE_SUCCESS' ) );
		
		// Redirect the user and adjust session state based on the chosen task.
		switch ($task) {
			case 'apply' :
				// Set the record data in the session.
				$recordId = $model->getState ( $this->context . '.id' );
				$this->holdEditId ( $context, $recordId );
				$app->setUserState ( $context . '.data', null );
				$model->checkout ( $recordId );
				
				// Redirect back to the edit screen.
				$this->setRedirect ( JRoute::_ ( 'index.php?option=' . $this->option . '&view=' . $this->view_item . $this->getRedirectToItemAppend ( $recordId, $key ), false ) );
				break;
			
			case 'save2new' :
				// Clear the record id and data from the session.
				$this->releaseEditId ( $context, $recordId );
				$app->setUserState ( $context . '.data', null );
				
				// Redirect back to the edit screen.
				$this->setRedirect ( JRoute::_ ( 'index.php?option=' . $this->option . '&view=' . $this->view_item . $this->getRedirectToItemAppend ( null, $key ), false ) );
				break;
			
			default :
				// Clear the record id and data from the session.
				$this->releaseEditId ( $context, $recordId );
				$app->setUserState ( $context . '.data', null );
				
				// Redirect to the list screen.
				$this->setRedirect ( JRoute::_ ( 'index.php?option=com_templates&view=' . $this->view_list . $this->getRedirectToListAppend (), false ) );
				break;
		}
		
		// Invoke the postSave method to allow for the child class to access the
		// model.
		$this->postSaveHook ( $model, $validData );
		
		return true;
	}
	
        public function saveCustom($data){
            $color = $data['params']['styles'];
            $jcss = json_decode($color['cthemecolor']);
            $css = $color['defaultcss'];
             if($jcss->list){
                foreach($jcss->list as $cc) if ($cc->color && $cc->css){
                    $css .=   $cc->css . '{' . $cc->selector . ':' . $cc->color . '}'; ;
                }
             }
            $jFile = JPATH_ROOT . '/templates/' . $data['template'].'/css/colors/custom/style.css';
            jimport('joomla.filesystem.path');
            jimport('joomla.filesystem.file');
            if(!JFile::exists($jFile)){
                die('Please create file in ' . $jFile);
            }
            if(!JFile::write($jFile, $css)) die('Please chomod file in ' . $jFile);
            
        }

        public function cancel($key = null) {
		JSession::checkToken() or jexit(JText::_('JINVALID_TOKEN'));

		// Initialise variables.
		$app = JFactory::getApplication();
		$model = $this->getModel();
		$table = $model->getTable();
		$checkin = property_exists($table, 'checked_out');
		$context = "$this->option.edit.$this->context";

		if (empty($key))
		{
			$key = $table->getKeyName();
		}

		$recordId = JFactory::getApplication()->input->get($key, 0, 'int');

		// Attempt to check-in the current record.
		if ($recordId)
		{
			// Check we are holding the id in the edit list.
			if (!$this->checkEditId($context, $recordId))
			{
				// Somehow the person just went to the form - we don't allow that.
				$this->setError(JText::sprintf('JLIB_APPLICATION_ERROR_UNHELD_ID', $recordId));
				$this->setMessage($this->getError(), 'error');

				$this->setRedirect(
					JRoute::_(
						'index.php?option=com_templates&view=' . $this->view_list
						. $this->getRedirectToListAppend(), false
					)
				);

				return false;
			}

			if ($checkin)
			{
				if ($model->checkin($recordId) === false)
				{
					// Check-in failed, go back to the record and display a notice.
					$this->setError(JText::sprintf('JLIB_APPLICATION_ERROR_CHECKIN_FAILED', $model->getError()));
					$this->setMessage($this->getError(), 'error');

					$this->setRedirect(
						JRoute::_(
							'index.php?option=com_templates&view=' . $this->view_item
							. $this->getRedirectToItemAppend($recordId, $key), false
						)
					);

					return false;
				}
			}
		}

		// Clean the session data and redirect.
		$this->releaseEditId($context, $recordId);
		$app->setUserState($context . '.data', null);

		$this->setRedirect(
			JRoute::_(
				'index.php?option=com_templates&view=' . $this->view_list
				. $this->getRedirectToListAppend(), false
			)
		);

		return true;
	}
}