<ul id="nav-notifications-template" style="display:none;" rel="template">
	<li class="{4}"><img src="{1}" data-src="{1}" /><a title="{5}" href="{0}">{2}</a><span class="notif-when"><a href="#">{3}</a></span></li>
</ul>

<div id="bohemeLoader" class="loader" style="display:none;"><div class="bounce1"></div><div class="bounce2"></div><div class="bounce3"></div></div>

<aside id="alert" style="display:none;">
<ul id="notifications-slider">
</ul>
<a href="#" class="close-slider">x</a>
</aside>

 <section id="action-nav">

  <aside id="action-nav-left">

  <a class="icon animate action-toggle ion-drag" href="#"></a>
  <a class="icon action-open-notifications popup-link ion-ios-filing-outline" href="#notifications-popup" data-open-notifications="2"></a>

	{{if $nav.notifications}}
  <div id="notifications" aria-haspopup="true">

   <div id="notifications-popup" class="popup">

   <div class="divider">Notifications</div>
    <ul>
		 <li role="menuitem" class="empty">{{$emptynotifications}}</li>
     <li class="unread"><img src="u_images/2.jpg" /><a href="#"><span class="username" data-aspect-color="bla">Magneton</span> wrote something on your wall.</a></li>
    </ul>
    <div class="divider extra-box">
     <a id="nav-notifications-see-all" href="{{$nav.notifications.all.0}}" title="{{$nav.notifications.all.1}}"><span class="ion-ios-more-outline"></span></a>
     <a id="nav-notifications-mark-all" href="#" onclick="notifyMarkAll(); return false;" title="{{$nav.notifications.mark.1}}"><span class="ion-ios-checkmark-empty"></span></a>
    </div>
   </div>

  </div>
	{{/if}}
  </aside>

  <aside id="action-nav-right">

  <a class="icon animate action-add-friend popup-link ion-ios-personadd-outline" title="Add friend" href="#add-friend"></a>
	{{if $nav.admin}}<a accesskey="a" class="icon animate ion-ios-cog-outline shashape admin" title="{{$nav.admin.3}}" href="{{$nav.admin.0}}"></a>{{/if}}
	{{if $nav.help}}<a class="icon animate ion-ios-help-empty" title="{{$nav.help.3}}" href="{{$nav.help.0}}"></a>{{/if}}
	{{if $nav.logout}}<a class="icon animate ion-ios-snowy" title="{{$nav.logout.3}}" href="{{$nav.logout.0}}"></a>{{/if}}

  <div id="add-friend" class="popup">
   <div class="cbutton divider">Add a contact</div>
   <ul>
     <form method="post" action="#"><input type="text" placeholder="ID@domain, username, mail,..." /></form>
   </ul>
  </div>

	{{if $nav.search}}
  <div id="search">
   <form action="{{$nav.search.0}}" method="get">
    <input accesskey="s" type="text" placeholder="{{$nav.search.1}}..." name="search" class="popup-link" href="#search-results" />
    <input type="submit" name="submit" value="" />
   </form>
	 {{/if}}

   <div id="search-results" class="popup">

    <div class="divider">People</div>
    <ul>
     <li><a href="#"><img src="u_images/1.jpg" />Margaret Thatcher</a></li>
     <li><a href="#"><img src="u_images/2.jpg" />Hamas</a></li>
    </ul>

    <div class="divider">Groups</div>
    <ul>
     <li><a href="#">
      <div class="group_pics"><img src="u_images/1.jpg" /><img src="u_images/5.jpg" /><img src="u_images/2.jpg" /><img src="u_images/4.jpg" /></div>Gimme free turtles</a></li>
    </ul>
   </div>

  </div><!-- /#search -->
 </aside>

</section><!-- /#action-nav -->

 <div id="page-nav">

  <nav>
   <span class="pagetitle">{{$pagetitle}}</span>

   <ul id="page-categories" class="multi-list no-border-left">
		{{if $network_aside}}
		 {{if $nav.network}}<li role="menuitem" class="{{if $sel.network}}active{{/if}}"><a href="{{$nav.network.0}}" accesskey="n" title="{{$nav.network.3}}">{{$nav.network.1}}</a></li>{{/if}}
		 {{if $nav.community}}<li role="menuitem" class="{{if $sel.community}}active{{/if}}"><a href="{{$nav.community.0}}" title="{{$nav.community.3}}" accesskey="c">{{$nav.community.1}}</a></li>{{/if}}
		 {{if $nav.home}}<li role="menuitem" class="{{if $sel.home}}active{{/if}}"><a href="{{$nav.home.0}}" title="{{$nav.home.3}}">{{$nav.home.1}}</a><!--<span>12</span>--></li>{{/if}}
		{{else}}
		 {{$aside}}
	  {{/if}}
   </ul>
  </nav>
			</li>
  <section id="action-buttons">

	{{if $common_tabs}}{{$common_tabs}}{{/if}}

	{{if $network_aside}}
   <a href="#composer" class="animate button ion-ios-plus-empty action-open-lightbox"> Compose</a>
   <a href="#stream-settings" class="animate button round shashape download ion-ios-gear-outline popup-link" title="Stream settings"></a>

   <div id="stream-settings" class="popup">
    <div class="divider small">Wall-entry size</div>

    <ul class="multi-button selectable">
     <li><a href="#acl-list" class="scaleFont originalSize ion-ios-circle-outline active"></a></li>
     <li><a href="#" class="scaleFont maxSize ion-ios-plus-empty"></a></li>
     <li><a href="#" class="scaleFont maxMaxSize ion-ios-plus-empty"><span class="ion-ios-plus-empty"></span></a></li>
    </ul>

  <!--  <ul class="select-network-kind">
     <li><a class="active" href="#">Neueste Beiträge</a></li>
     <li><a href="#">Neueste Kommentare</a></li>
     <li><a href="#">Persönlich</a></li>
    </ul>

    <div class="divider small">Groups</div>
    <ul class="select-group">
     <li><a class="active" href="#">All</a></li>
     <li><a href="#">Friends</a></li>
     <li><a href="#">Business</a></li>
    </ul>

    <div class="divider small">Networks</div>
    <ul class="select-network">
     <li><a class="active" href="#">All</a></li>
     <li><a href="#">Friendica</a></li>
     <li><a href="#">Diaspora</a></li>
     <li><a href="#">RSS/Atom</a></li>
	</ul> -->

	{{$network_aside}}

   </div>{{/if}}
  </section>
 </div><!-- /#page-nav -->

 <div id="pp">

  <section id="home">
   <a href="/" title="Home"><img src="{{$baseurl}}/view/theme/boheme/img/friendica_logo.png" alt="Friendica-Logo" /></a>
  </section>

  <section id="profile-pic">
   <a accesskey="p" href="{{$nav.home.0}}" title="{{$nav.home.1}}"><img src="{{$userinfo.icon}}" alt="{{$userinfo.name}}" /></a>
  </section>

  <nav>
    <ul>
		{{if $nav.network}}
		 {{if $sel.network}}<a accesskey="n" href="{{$nav.network.0}}" id="l-1" title="{{$nav.network.3}}" class="active"><li><span class="ion-ios-keypad shashape network"></span></li></a>{{else}}
		 <a accesskey="n" href="{{$nav.network.0}}" id="l-1" title="{{$nav.network.3}}"><li><span class="ion-ios-keypad-outline shashape network"></span></li></a>{{/if}}
		{{/if}}

		{{if $nav.messages}}
		 {{if $sel.messages}}<a href="{{$nav.messages.0}}" id="l-2" title="{{$nav.messages.3}}" class="active"><li data-bla="3"><span class="ion-ios-chatboxes shashape message"></span></li></a>{{else}}
     <a href="{{$nav.messages.0}}" id="l-2" title="{{$nav.messages.3}}"><li data-bla="3"><span class="ion-ios-chatboxes-outline shashape message"></span></li></a>{{/if}}
		{{/if}}

    {{if $nav.usermenu.2}}
     <a href="{{$nav.usermenu.2.0}}" id="l-3" title="{{$nav.usermenu.2.3}}"><li><span class="ion-ios-albums-outline shashape cloud"></span></li></a>
		{{/if}}

		{{if $nav.contacts}}
		 {{if $sel.contacts}}<a href="{{$nav.contacts.0}}" id="l-4" title="{{$nav.contacts.3}}" class="active"><li><span class="ion-ios-people shashape friends"></span></li></a>{{else}}
     <a href="{{$nav.contacts.0}}" id="l-4" title="{{$nav.contacts.3}}"><li><span class="ion-ios-people-outline shashape friends"></span></li></a>{{/if}}
		{{/if}}

		{{if $nav.settings}}
		 {{if $sel.settings}}<a href="{{$nav.settings.0}}" id="l-5" title="{{$nav.settings.3}}" class="active"><li><span class="ion-ios-settings-strong shashape settings"></span></li></a>{{else}}
     <a href="{{$nav.settings.0}}" id="l-5" title="{{$nav.settings.3}}"><li><span class="ion-ios-settings shashape settings"></span></li></a>{{/if}}
		{{/if}}
    </ul>
  </nav>

  <section id="chat" title="This is going to be the chatbar...">
   <!--<img src="img/chat_barp.png" class="chatbar" />-->
  </section>
 </div><!-- /#pagesandpeople -->

{{$jot}}
