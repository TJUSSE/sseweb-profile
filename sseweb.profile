<?php
/**
 * @file
 * Enables modules and site configuration for a standard site installation.
 */

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function sseweb_form_install_configure_form_alter(&$form, $form_state) {
  $form['site_information']['site_name']['#default_value'] = '同济大学软件学院';
  $form['site_information']['site_mail']['#default_value'] = 'sse_admin@tongji.edu.cn';
  $form['server_settings']['site_default_country']['#default_value'] = 'CN';
  $form['server_settings']['date_default_timezone']['#default_value'] = 'Asia/Shanghai';
  unset($form['server_settings']['date_default_timezone']['#attributes']);
  $form['update_notifications']['update_status_module']['#default_value'] = array();
}
