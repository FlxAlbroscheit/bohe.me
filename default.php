<?php if ($a->module === 'network' || $a->module === 'community' || $a->module === 'home') $stream = true; ?>
 <head>
  <meta charset="utf-8">
  <title><?php if(x($page,'title')) echo $page['title']; ?></title>
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <script>$("input").contact_autocomplete(baseurl+"/acl");</script>
 </head>
 <body>
 <!-- Lighboxes & Co.... -->

  <?php if ( $a->module === 'login' || $a->module === 'register' || $a->module === 'lostpass' ) { ?>
	<?php if(x($page,'content')) echo $page['content']; ?>
	<?php if(x($page,'footer')) echo $page['footer']; ?>
	<?php } else { ?>
    <?php if(x($page,'nav')) echo $page['nav']; ?>
    <div id="content" style="max-width:93%;">
		<?php //if(x($page,'right_aside')) echo $page['right_aside']; ?>
		<?php if(x($page,'content')) echo $page['content']; ?>
   </div>
   <?php if(x($page,'footer')) : ?>
   <footer id="footer">
     <?php echo $page['footer']; ?>
   </footer>
   <?php endif; ?>
	<?php }

  if ($stream) echo '<script src="'.$a->get_baseurl().'/view/theme/boheme/js/jquery.stalactite.min.js"></script>';
	if (x($page,'end')) echo $page['end']; ?>

</body>
</html>