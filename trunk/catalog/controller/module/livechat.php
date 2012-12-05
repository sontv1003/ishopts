<?php  
class ControllerModuleLivechat extends Controller {
        protected function index() {
            $this->data['heading_title'] = $this->language->get('heading_title');
            if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/livechat.tpl')) {
                    $this->template = $this->config->get('config_template') . '/template/module/livechat.tpl';
            } else {
                    $this->template = 'default/template/module/livechat.tpl';
            }
		
            $this->render();
        }
}