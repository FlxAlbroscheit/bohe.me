<?php


$uid = get_theme_uid();

$icon_style = get_pconfig($uid, 'boheme', 'icon_style');

if ($icon_style == "")
	$icoh_style = get_config('boheme', 'icon_style');

if ($icon_style == "" || $icon_style == "default") {

	$icon_style = "default";
	$stylecss = 'view/theme/boheme/stylesheets/ionicons.css';

} else if ($icon_style == "shashape") {

	$stylecss = 'view/theme/boheme/stylesheets/shashape.css';

}

echo '<link rel="stylesheet" href="'.$stylecss.'">';
