<div class="lightbox" id="composer">

  <div class="lightbox-header">
   <h3>JOT</h3><span>Compose and share a new post.</span>

   <ul class="multi-list">
    <li class="active" data-slider-nr="0"><a href="#" class="ion-ios-color-wand-outline"> Editor</a></li>
    <li data-slider-nr="1"><a href="#" class="ion-ios-locked-outline"> Permissions</a></li>
    <li data-slider-nr="2"><a href="#" class="ion-ios-monitor-outline"> {{$preview}}</a></li>
   </ul>

  </div>

  <div class="lightbox-content">
   <ul id="composer-slide">

    <li id="editor">

     <form action="{{$action}}" method="post">
       <input type="hidden" name="type" value="{{$ptyp}}" />
       <input type="hidden" name="profile_uid" value="{{$profile_uid}}" />
       <input type="hidden" name="return" value="{{$return_path|escape:'html'}}" />
       <input type="hidden" name="location" id="jot-location" value="{{$defloc|escape:'html'}}" />
       <input type="hidden" name="coord" id="jot-coord" value="" />
       <input type="hidden" name="post_id" value="{{$post_id}}" />
       <input type="hidden" name="preview" id="jot-preview" value="0" />
       <input type="hidden" name="post_id_random" value="{{$rand_num}}" />
       {{if $notes_cid}}
       <input type="hidden" name="contact_allow[]" value="<{{$notes_cid}}>" />
       {{/if}}

     <input id="title" type="text" placeholder="{{$placeholdertitle}}" />
     <textarea>What about some content...?</textarea>

    </li>

    <li id="acl-list">

     <div id="acl-search">
      <form action="#" method="post">
       <input type="text" placeholder="Search contacts..." />
       <input type="text" placeholder="{{$emailcc}}" title="{{$emtitle}}" />
      </form>
      <span id="acl-select-all" class="ion-android-radio-button-on" title="(Un-)select all"></span>
    </div>

		 <div id="acl-list-content">

      <div id="acl-groups">

       <h4>Groups</h4>

		   <div class="acl-list-item acl-is-shown">
	      <img src="u_images/1.jpg"><p>Freundename</p>

        <div class="acl-check acl-active"> <!-- OR : -show -->
         <a href="#" class="select ion-ios-checkmark-empty"></a>
         <a href="#" class="no-select ion-ios-close-empty"></a>
        </div>

       </div>

       <div class="acl-list-item dfrn typec acl-is-hidden" title="https://pink.pilot.io/profile/freiefunken">
	      <img src="u_images/2.jpg"><p>Blubb</p>

        <div class="acl-check acl-active"> <!-- OR : -show -->
         <a href="#" class="select ion-ios-checkmark-empty"></a>
         <a href="#" class="no-select ion-ios-close-empty"></a>
        </div>
       </div>

       <div class="acl-list-item dfrn typec" title="https://fc.oscp.info/profile/beanow">
	      <img src="u_images/4.jpg"><p>Beanow</p>

        <div class="acl-check"> <!-- OR : -show -->
         <a href="#" class="select ion-ios-checkmark-empty"></a>
         <a href="#" class="no-select ion-ios-close-empty"></a>
        </div>

       </div>
      </div>

      <div id="acl-friends">
       <h4>Friends</h4>
       <div class="acl-list-item dfrn typec acl-is-hidden" title="https://pink.pilot.io/profile/freiefunken">
        <img src="u_images/2.jpg"><p>Blubb</p>

        <div class="acl-check acl-active"> <!-- OR : -show -->
         <a href="#" class="select ion-ios-checkmark-empty"></a>
         <a href="#" class="no-select ion-ios-close-empty"></a>
        </div>
       </div>
      </div>

	  </div><!-- /#acl-list-content -->

    </li><!-- /#acl-list -->

    <li id="preview">
     <p>How does the entry look like? maybe gimme a popup...</p>
    </li><!-- /#preview -->

    </ul>
   </div><!-- /.lightbox-content -->

  <div class="lightbox-footer">
   <a href="#" class="button round grey lightbox-close" title="{{$cancel}}">X</a>

   <input type="submit" class="button share-entry" value="{{$share}}" />
   <!--<i class="ion-ios-checkmark-empty" style="position: absolute; top: 2px;"></i> oops... -->

   </form>
  </div><!-- /.lightbox-footer -->

 </div><!-- /.lightbox#composer -->

<!--

<div id="profile-jot-wrapper" >
	<div id="profile-jot-banner-wrapper">
		<div id="profile-jot-desc" >&nbsp;</div>
		<div id="character-counter" class="grey"></div>
	</div>
	<div id="profile-jot-banner-end"></div>

	<form id="profile-jot-form" action="{{$action}}" method="post" >
		<input type="hidden" name="type" value="{{$ptyp}}" />
		<input type="hidden" name="profile_uid" value="{{$profile_uid}}" />
		<input type="hidden" name="return" value="{{$return_path|escape:'html'}}" />
		<input type="hidden" name="location" id="jot-location" value="{{$defloc|escape:'html'}}" />
		<input type="hidden" name="coord" id="jot-coord" value="" />
		<input type="hidden" name="post_id" value="{{$post_id}}" />
		<input type="hidden" name="preview" id="jot-preview" value="0" />
		<input type="hidden" name="post_id_random" value="{{$rand_num}}" />
		{{if $notes_cid}}
		<input type="hidden" name="contact_allow[]" value="<{{$notes_cid}}>" />
		{{/if}}
		<div id="jot-title-wrap"><input name="title" id="jot-title" type="text" placeholder="{{$placeholdertitle|escape:'html'}}" value="{{$title|escape:'html'}}" class="jothidden" style="display:none"></div>
		{{if $placeholdercategory}}
		<div id="jot-category-wrap"><input name="category" id="jot-category" type="text" placeholder="{{$placeholdercategory|escape:'html'}}" value="{{$category|escape:'html'}}" class="jothidden" style="display:none" /></div>
		{{/if}}
		<div id="jot-text-wrap">
		<img id="profile-jot-text-loading" src="images/rotator.gif" alt="{{$wait}}" title="{{$wait}}" style="display: none;" />
		<textarea rows="5" cols="64" class="profile-jot-text" id="profile-jot-text" name="body" >{{if $content}}{{$content}}{{else}}{{$share}}{{/if}}</textarea>
		</div>

<div id="profile-jot-submit-wrapper" class="jothidden">
	<input type="submit" id="profile-jot-submit" name="submit" value="{{$share|escape:'html'}}" />

	<div id="profile-upload-wrapper" style="display: {{$visitor}};" >
		<div id="wall-image-upload-div" ><a href="#" onclick="return false;" id="wall-image-upload" class="icon camera" title="{{$upload|escape:'html'}}"></a></div>
	</div>
	<div id="profile-attach-wrapper" style="display: {{$visitor}};" >
		<div id="wall-file-upload-div" ><a href="#" onclick="return false;" id="wall-file-upload" class="icon attach" title="{{$attach|escape:'html'}}"></a></div>
	</div>

	<div id="profile-link-wrapper" style="display: {{$visitor}};" ondragenter="linkdropper(event);" ondragover="linkdropper(event);" ondrop="linkdrop(event);" >
		<a id="profile-link" class="icon link" title="{{$weblink}}" ondragenter="return linkdropper(event);" ondragover="return linkdropper(event);" ondrop="linkdrop(event);" onclick="jotGetLink(); return false;"></a>
	</div>
	<div id="profile-video-wrapper" style="display: {{$visitor}};" >
		<a id="profile-video" class="icon video" title="{{$video|escape:'html'}}" onclick="jotVideoURL();return false;"></a>
	</div>
	<div id="profile-audio-wrapper" style="display: {{$visitor}};" >
		<a id="profile-audio" class="icon audio" title="{{$audio|escape:'html'}}" onclick="jotAudioURL();return false;"></a>
	</div>
	<div id="profile-location-wrapper" style="display: {{$visitor}};" >
		<a id="profile-location" class="icon globe" title="{{$setloc|escape:'html'}}" onclick="jotGetLocation();return false;"></a>
	</div>
	<div id="profile-nolocation-wrapper" style="display: none;" >
		<a id="profile-nolocation" class="icon noglobe" title="{{$noloc|escape:'html'}}" onclick="jotClearLocation();return false;"></a>
	</div>

	<div id="profile-jot-perms" class="profile-jot-perms" style="display: {{$pvisit}};" >
		<a href="#profile-jot-acl-wrapper" id="jot-perms-icon" class="icon {{$lockstate}}"  title="{{$permset|escape:'html'}}" ></a>{{$bang}}
	</div>

	{{if $preview}}<span onclick="preview_post();" id="jot-preview-link" class="fakelink">{{$preview}}</span>{{/if}}
	{{if $preview}}<input type="submit" onclick="preview_post(); return false;" id="jot-preview-link" value="{{$preview|escape:'html'}}" />{{/if}}

	<div id="profile-jot-perms-end"></div>


	<div id="profile-jot-plugin-wrapper">
  	{{$jotplugins}}
	</div>

	<div id="profile-rotator-wrapper" style="display: {{$visitor}};" >
		<img id="profile-rotator" src="images/rotator.gif" alt="{{$wait}}" title="{{$wait|escape:'html'}}" style="display: none;" />
	</div>

	<div id="jot-preview-content" style="display:none;"></div>

	<div style="display: none;">
		<div id="profile-jot-acl-wrapper" style="width:auto;height:auto;overflow:auto;">
			{{$acl}}
		</div>
	</div>


</div>

<div id="profile-jot-end"></div>
</form>
</div>
		{{if $content}}<script>initEditor();</script>{{/if}} -->
