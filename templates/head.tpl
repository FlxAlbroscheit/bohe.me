
<!--<base href="{{$baseurl}}/" /> -->
<meta name="generator" content="{{$generator}}" />

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="icon" type="image/png" href="{{$shortcut_icon}}">
<link rel="shortcut icon" href="{{$shortcut_icon}}" />
<link rel="apple-touch-icon" href="{{$touch_icon}}"/>
<meta name="apple-mobile-web-app-capable" content="yes" />

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,300">

<link rel="stylesheet" href="{{$baseurl}}/view/theme/boheme/stylesheets/base.css">
<link rel="stylesheet" href="{{$baseurl}}/view/theme/boheme/stylesheets/stream.css">
<link rel="stylesheet" href="{{$baseurl}}/view/theme/boheme/stylesheets/mobile.css">

<!--<link rel="stylesheet" href="{{$baseurl}}/view/global.css" type="text/css" media="all" />-->

<link rel="search"
         href="{{$baseurl}}/opensearch"
         type="application/opensearchdescription+xml"
         title="Search in Friendica" />

<!--[if IE]>
<script type="text/javascript" src="https://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<script type="text/javascript" src="{{$baseurl}}/js/jquery.js" ></script>
<script type="text/javascript" src="{{$baseurl}}/js/jquery-migrate.js" ></script>
<script type="text/javascript" src="{{$baseurl}}/js/jquery.textinputs.js" ></script>
<script type="text/javascript" src="{{$baseurl}}/js/fk.autocomplete.js" ></script>
<script type="text/javascript" src="{{$baseurl}}/js/acl.js" ></script>
<script type="text/javascript" src="{{$baseurl}}/js/webtoolkit.base64.js" ></script>
<script type="text/javascript" src="{{$baseurl}}/view/theme/boheme/js/main.js" ></script>

<script>
var updateInterval = {{$update_interval}};
var localUser = {{if $local_user}}{{$local_user}}{{else}}false{{/if}};
//alert($(data).find('sysmsgs'));
</script>
