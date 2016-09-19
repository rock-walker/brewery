<?php
class ControllerModuleMailer extends Controller
{
    private $error = array();

    private function install()
    {
        $this->db->query("CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "phones_urgent` (
          `phone_id` int(11) NOT NULL AUTO_INCREMENT,
          `phone` varchar(255) NOT NULL,
          `ip` varchar(255) NOT NULL,
          `date_added` datetime NOT NULL,
          PRIMARY KEY (`phone_id`)
        )");
    }

    public function index($setting) {
        $this->install();
        //$this->load->language('module/tm_newsletter_popup');
        //$this->document->addStyle('catalog/view/javascript/tmnewsletterpopup/tm_newsletter-popup.css');

        //$data['heading_title'] = $this->language->get('heading_title');
        //$data['entry_mail'] = $this->language->get('entry_mail');
        //$data['button_subscribe'] = $this->language->get('button_subscribe');
        //$data['success'] = $this->language->get('text_success');
        //$data['error_invalid_email'] = $this->language->get('error_invalid_email');
        //$data['user_mail'] = '';
        //print_r($this->db->escape($_POST["phone"]));
        $this->db->query("INSERT INTO " . DB_PREFIX . "phones_urgent SET phone = '" . 
            $this->db->escape(utf8_strtolower((string)$_POST["phone"])) . "', ip = '" . $this->db->escape($this->request->server['REMOTE_ADDR']) . "', date_added = '" . $this->db->escape(date('Y-m-d H:i:s')) . "'");
/*
        $this->load->model('account/customer');
        if ($this->customer->isLogged() && $this->customer->getNewsletter() == 1){
            $data['show'] = true;
        }elseif ($this->customer->isLogged() && $this->customer->getNewsletter() == 0){
            $data['show'] = '';
            $data['user_mail'] = $this->customer->getEmail();
        }else{
            $data['show'] = '';
        }

        if ($this->request->server['REQUEST_METHOD'] == 'POST') {
            $input_email = $this->request->post['tm_newsletter_popup_email'];

            $this->load->model('module/tm_newsletter');

            if ($this->customer->isLogged() && strcmp($this->customer->getEmail(), $input_email) == 0) {
                if ($this->customer->getNewsletter() == 0) {
                    $this->model_account_customer->editNewsletter(1);
                } else {
                    $this->error['tm_newsletter_exist_email'] = $this->language->get('error_exist_email');
                }
            } else {
                if (count($this->model_module_tm_newsletter->getNewsletterByEmail($input_email)) != 0) {
                    $this->error['tm_newsletter_exist_email'] = $this->language->get('error_exist_email');
                } else if (count($this->model_account_customer->getCustomerByEmail($input_email)) == 0) {
                    $this->model_module_tm_newsletter->addNewsletter($input_email);
                } else {
                    $this->error['tm_newsletter_exist_user'] = $this->language->get('error_exist_user');
                }
            }

            if (count($this->error) > 0) {
                foreach ($this->error as $err) {
                    echo $err;
                }
            }
            return;
        }


        $data['cookie_time'] = $setting['newsletter_popup_cookie'];

        if (isset($setting['tm_newsletter_popup_description'][$this->config->get('config_language_id')])) {
            $data['heading_title'] = html_entity_decode($setting['tm_newsletter_popup_description'][$this->config->get('config_language_id')]['title'], ENT_QUOTES, 'UTF-8');
            $data['html'] = html_entity_decode($setting['tm_newsletter_popup_description'][$this->config->get('config_language_id')]['description'], ENT_QUOTES, 'UTF-8');
        }

        $data['action'] = $this->url->link('module/tm_newsletter_popup', '', 'SSL');


        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/tm_newsletter_popup.tpl')) {
            return $this->load->view($this->config->get('config_template') . '/template/module/tm_newsletter_popup.tpl', $data);
        } else {
            return $this->load->view('default/template/module/tm_newsletter_popup.tpl', $data);
        }*/
    }
}