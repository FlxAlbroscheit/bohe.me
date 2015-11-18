<header id="header">
<div id="action-nav" style="text-align: center;">
<img id="logo" src="{{$baseurl}}/view/theme/boheme/friendica.svg" />

<aside id="action-nav-right">

	<div id="search">
		<form action="#" method="post">
		<input type="text" placeholder="Search friends..." class="popup-link" href="#search-results" />
		<input type="submit" value="" />
		</form>

	</div><!-- /#search -->
</aside>
</div>

<div id="particles"></div>

<div id="headline">
	<h2>Welcome to <strong>social.leipziger-ecken</strong>, your distributed social network powered by <strong>Friendica</strong>.</h2>
	<div class="divider"></div>
	<h3>Social Communication for everyone: <a href="#" class="tooltip" data-tooltip="We implemented different security layers blabla...">Secure</a>, <a href="#" class="tooltip" data-tooltip="...">free</a>, <a href="#" class="tooltip" data-tooltip="...">decentralized</a>.</h3>
</div>

</header>

<div id="loginbar">

<form method="post" action="{{$dest_url}}">
 <input type="hidden" name="auth-params" value="login" />
 <input type="text" id="username" class="left" name="{{$lname.0}}" placeholder="{{$lname.1}}" />
 <input type="password" id="password" class="left" name="{{$lpassword.0}}" placeholder="{{$lpassword.1}}" />

 <ul class="right">
	{{if $openid}}<li><img src="{{$baseurl}}/view/theme/boheme/icons/openid.png"/>{{*include file="field_openid.tpl" field=$lopenid*}}</li>{{/if}}
	<li><img src="{{$baseurl}}/view/theme/boheme/icons/social-facebook-outline.svg" /></li>
	<li><img src="{{$baseurl}}/view/theme/boheme/icons/social-github-outline.svg" /></li>
 </ul>

 <label class="right" for="{{$lremember.0}}">{{$lremember.1}}
	<input id="remember" class="checkbox" type="checkbox" name="{{$lremember.0}}" />
 </label>

<input id="loginbutton" type="submit" name="submit" class="button" value="Login" />
{{if $register}}<a href="register" id="registerbutton" class="button grey" title="{{$register.title|escape:'html'}}">{{$register.desc}}</a>{{/if}}

{{foreach $hiddens as $k=>$v}}
	<input type="hidden" name="{{$k}}" value="{{$v|escape:'html'}}" />
{{/foreach}}
</form>
</div>

<footer id="footer">
<p>Friendica 4.5 | <a href="http://dir.friendica.com/siteinfo">Public servers</a> | <a href="/impressum">Impress</a> | <a href="lostpass" title="{{$lostpass|escape:'html'}}" id="lost-password-link" >{{$lostlink}}</a></p>
</footer>

<script type="text/javascript"> $(document).ready(function() { $("#id_{{$lname.0}}").focus();} );</script>
