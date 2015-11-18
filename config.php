<?php
/**
 * Theme settings for Bohe.me
 */

function theme_content(&$a){
	if(!local_user())
		return;

	$icon_style = get_pconfig(local_user(), 'boheme', 'icon_style');

	if ($icon_style == "")
		$icon_style = get_config('boheme', 'icon_style');

	if ($icon_style == "")
		$icon_style = "default";

	return boheme_form($a, $icon_style);
}

function theme_post(&$a){
	if(! local_user())
		return;

	if (isset($_POST['boheme-settings-submit'])){
		set_pconfig(local_user(), 'boheme', 'icon_style', $_POST['icon_style']);
	}
}

function theme_admin(&$a){
	$style = get_config('boheme', 'icon_style');
	return boheme_form($a, $icon_style);
}

function theme_admin_post(&$a){
	if (isset($_POST['boheme-settings-submit'])){
		set_config('boheme', 'icon_style', $_POST['icon_style']);
	}
}

function boheme_form(&$a, $icon_style){

	$styles = array(
		"default" => "Default (Ionicons)",
		"shashape" => "ShaShape (&alpha;lpha)"
	);

	$t = get_markup_template("theme_settings.tpl" );

	$o .= replace_macros($t, array(
		'$submit' => t('Submit'),
		'$baseurl' => $a->get_baseurl(),
		'$title' => t("Theme settings"),
		'$icon_style' => array('icon_style',t ('Set Icon-style'), $icon_style, '' , $styles)
	));

	return $o;
}
