<div class="boheme stream-entry is-friend">

   <aside class="options">

    <!--<div class="shared-post ion-ios-loop-strong">
     Original post by <br /><a href="#">Username here</a>
   </div> -->

    <div class="meta">
     <span class="timestamp"><a href="#" title="{{$item.localtime|escape:'html'}}">{{$item.ago}}</a></span> -
     <span class="access"><a title="{{$item.plink.title}}" href="{{$item.plink.href}}">{{$item.network_name}}</a></span>
     {{if $item.location}} - <a href="#">{{$item.location}}</a></span>{{/if}}
     {{if $item.lock}}<span title="{{$item.lock}}" class="locked shashape lock ion-ios-locked-outline">-  </span>{{/if}}
     <div class="entry-owner"></div>

    </div>

   </aside>

   <div class="entry-content">
    {{if $item.title}}<h3 class="title">{{$item.title}}</h3>{{/if}}
    {{$item.body}}
    {{foreach $item.categories as $cat}}{{$cat.name}}{{/foreach}}
   </div>

   <div class="entry-details">
    <a href="{{$item.profile_url}}"><img src="{{$item.thumb}}" class="author-pic" />
    <span class="author-name">{{$item.name}}</span><br /></a>
    <a href="#" class="comments-count">{{if $item.total_comments_num}}<strong>{{$item.total_comments_num}}</strong>{{else}}No{{/if}} comments &#x25BE;</a>

    <aside class="feedback">
      {{if $item.star}}<span class="ion-ios-star-outline shashape star mark" title="{{$item.star.toggle|escape:'html'}}"></span>{{/if}}
      {{if $item.vote.share}}<span class="ion-ios-redo-outline shashape arrow-7 share" title="{{$item.vote.share.0|escape:'html'}}"></span>{{/if}}
      <span class="ion-ios-heart-outline shashape heart" title="{{$item.vote.like.0|escape:'html'}}" data-hearts=""></span>
    </aside>

   </div><!-- /.entry-details -->

   <div class="comments">

    <div class="write-comment">

     <form method="post" action="#">
      <textarea id="test" type="text" placeholder="Gimme ya' comment..."></textarea>
     </form>

    </div>

    <div class="comment show-more-comments">
     <div class="comment-content"><a href="#">Show <strong>2</strong> more comments</a></div>
    </div>

    <div class="comment">
     <a href="#"><img src="u_images/1.jpg" class="author-pic" /></a>
     <span class="author-name"><a href="#">Ihre Werbung</a></span>
     <aside class="feedback">
       <span class="ion-ios-close-outline" title="Delete comment?"></span>
       <span class="ion-ios-redo-outline share" title="Share comment?"></span>
       <span class="ion-ios-heart-outline heart" data-hearts="{{$item.like}}" title="Like comment?"></span>
     </aside>
     <div class="comment-content">Lorem ipsum sed dolor situm, ist Euch eigentlich schonmal aufgefallen, dass ich der einzige Blindext hier bin?</div>

     <div class="comment">
     <a href="#"><img src="u_images/2.jpg" class="author-pic" /></a>
     <span class="author-name"><a href="#">Klickstarkpositioniert</a></span>
     <div class="comment-content">Kraeeess, Dude!</div>
    </div>
    </div>

    comments:{{if $item.comment}}
     {{$item.comment}}
  	{{/if}}over


    {{if $item.total_comments_num}}
    	{{if $item.threaded}}{{if $item.comment}}{{if $item.thread_level==1}}
    		<div class="wall-item-comment-wrapper" id="item-comments-{{$item.id}}">{{$item.comment}}</div>
    	{{/if}}{{/if}}{{/if}}

    	{{if $item.flatten}}
    		<div class="wall-item-comment-wrapper" id="item-comments-{{$item.id}}">{{$item.comment}}</div>
    	{{/if}}
    {{else}}
    	{{if $item.threaded}}{{if $item.comment}}{{if $item.thread_level==1}}
    		<div class="wall-item-comment-wrapper" id="item-comments-{{$item.id}}" style="display: none;">{{$item.comment}}</div>
    	{{/if}}{{/if}}{{/if}}

    	{{if $item.flatten}}
    		<div class="wall-item-comment-wrapper" id="item-comments-{{$item.id}}" style="display: none;">{{$item.comment}}</div>
    	{{/if}}{{/if}}

   </div><!-- /.comments -->

  </div><!-- /.stream-entry -->
