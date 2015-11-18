<?php
/**
 * Name: Bohe.me
 * Version: 0.1&alpha;
 * Author: Hotte <flexflex@social.leipziger-ecken.de>
 * Description: A colourful theme designed for the open web.
 */


function boheme_init(&$a) {
 $baseurl = $a->get_baseurl();
 $a->theme_info = array();
}

function boheme_install() {
	register_hook('template_vars', 'view/theme/boheme/theme.php', 'boheme_update_nav');
	logger("Installed boheme theme");
}

function boheme_uninstall() {
  unregister_hook('template_vars', 'view/theme/boheme/theme.php', 'boheme_update_nav');
  logger("Uninstalled boheme theme");
}

/* Filter for certain template-files and add/remove/edit variables
 * so things be put where they belong to */

function boheme_update_nav(&$a,&$b) {

 $common_tabs = '';
 $jot = '';

 if ($b['template'] == 'nav.tpl') {

  global $common_tabs;
  global $jot;

  $b['vars']['pagetitle'] = ($a->argv[0] === 'network' ? '<a href="network">Stream</a>' : '<a href="'.$a->argv[0].'">'.t(ucfirst($a->argv[0])).'</a>');

  if ($a->module === 'network') { // Or if home / profile...

   $b['vars']['network_aside'] = $a->page['aside'];

   $tpl = get_markup_template('boheme_common_tabs.tpl');
   $b['vars']['common_tabs'] = replace_macros($tpl, $common_tabs);

   $tpl = get_markup_template('boheme_jot.tpl');
   $b['vars']['jot'] = replace_macros($tpl, $jot);

  } else {
   $b['vars']['aside'] = $a->page['aside'];
  }

 }

 if ($b['template'] == 'common_tabs.tpl') {
  global $common_tabs;
  $common_tabs = $b['vars'];
  $b['vars'] = array();
 }

 if ($b['template'] == 'jot.tpl') {
  global $jot;
  $jot = $b['vars'];
  $b['vars'] = array();
 }

}
