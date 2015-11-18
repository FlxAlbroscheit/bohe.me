$(document).ready(function(){

 activePopupId = false;
 activePopupCaller = false;
 activeLightboxId = false;
 activeAspectButton = false;

 // TODO LOAD NEW CONTENT VIA AJAX, THEN...
 bohemeInitStream();

 $(window).resize(function(){
   $("#content").stalactite({ duration : 0 });
 });

 $('.flip-album').bxSlider({ controls : false, adaptiveHeight : true });
 // TODO PUT THIS INTO BOHEMEINITSTREAM WITHOUT CRASH...
 
 $('a').click(function(){
  return false;
 });

 $(window).scroll(function(){

   /* Fix for mobile screen's with horizontal #alert */

  ppHeight = -91;

  if ($('#alert').css('position') == 'relative' && $('#alert').css('display') == 'block' ) {
   ppHeight = -136;
  }

  if (($('#content').offset().top - $(window).scrollTop()) <= 57) {
   $('#pp').css({ 'margin-top' : ppHeight });
   $('#page-nav').addClass('on-top');
   $('#content').addClass('is-scrolled');
   $('.popup').fadeOut('fast');
  } else {
   $('#pp').css({ 'margin-top' : ('-' + $(window).scrollTop() - 103) });
   $('#page-nav').removeClass('on-top');
   $('#content').removeClass('is-scrolled');
  }
 });

 composerSlider = $('#composer-slide').bxSlider({ controls: false, pager : false, mode : 'fade',
                                                  onSliderLoad : function(){  $('#composer .writers-toolbar').addClass('active'); } });

 $('.lightbox-header .multi-list li').click(function(){
  composerSlider.goToSlide($(this).attr('data-slider-nr'));
  $('.lightbox-header .multi-list .active').removeClass('active');
  $(this).addClass('active');
 });

 $('#composer .share-entry').click(function(){
  $(this).addClass('loading');
  $(this).attr('value', ' Processing...');
 });

 
 $('.aspect-list li').click(function(){
  $(this).addClass('selected');
  $(activePopupCaller).html($(this).find('a').html());
  });

 $('.popup-link').click(function(){

   var popupCaller = $(this);
   var target = $(this).attr('href');

   if (target.toString() == activePopupId.toString()) {

     activePopupId = target;
     activePopupCaller = popupCaller;
     $(popupCaller).addClass('active');
     $(target).fadeIn('fast');

   } else {

     $(activePopupCaller).removeClass('active');
     $(activePopupId).fadeOut('fast');
     activePopupId = target;
     activePopupCaller = popupCaller;
     $(popupCaller).addClass('active');
     $(target).fadeIn('fast');

   }

  return false;

 });

 $('html').click(function(el){
  if ($(el.target).closest('.popup').css('display') != 'block') {
   $(activePopupCaller).removeClass('active');
   $(activePopupId).fadeOut('fast');
   activePopupId = false;
   activePopupCaller = false;
  }
 });

 $('.lightbox-close').click(function(el){
  $(activeLightboxId).fadeOut('fast');
  activeLightboxId = '';
 });

 /* $("#action-drag").dropzone({ url: "#", dictDefaultMessage: "" });

 $(window).on('dragenter', function(){
  $('#upload-bg').fadeIn('fast');
 });

 $('#action-drag').on('dragenter', function(){
  $(this).addClass('dragged');
 });

 $('#action-drag').on('dragleave', function(){
   $(this).removeClass('dragged');
 });

 $('#action-drag').on('drop', function(){
   $('#upload-bg').fadeOut('fast');
   $('.action-upload').addClass('active');
   $('#upload-service').fadeIn('fast');
 }); */

 $('.action-open-lightbox').click(function(){
  activeLightboxId = $(this).attr('href');
  $(activeLightboxId).fadeIn('fast');
  composerSlider.reloadSlider();

  $(document).keyup(function(e) {
   // Closes lightbox when hitting "escape".
   if (e.keyCode == 27) $('.lightbox-close').click();
  });

  $('.comments-count').click(function(){
   $(this).parent().parent().find('.comments').addClass('active');
  });

  $('.acl-list-item').click(function(){
   if ( $(this).find('.acl-check').hasClass('acl-active') ) {
     $(this).find('.acl-check').removeClass('acl-active');
   } else {
     $(this).find('.acl-check').addClass('acl-active');
   }
  });

  return false;
 });

 /*$('.action-upload').click(function(){
  $('#upload-service').fadeIn('fast');
  $(this).addClass('active');
 });

 $('.action-add-friend').click(function(){
  $('#add-friend').fadeIn('fast');
  $(this).addClass('active');
}); */

 $('#upload-service li a').click(function(){
  $(this).parent().fadeOut('fast');
  return false;
 });

 $('.multi-button.selectable li a').click(function(){
  $(this).parent().parent().find('.active').removeClass('active');
  $(this).addClass('active');
 });

// ONLY TO BE CALLED ONCE :
 $('.action-toggle').click(function(){
  if ($('#pp').hasClass('smallWidth')) $('#pp').removeClass('smallWidth');
  else $('#pp').addClass('smallWidth');
 });

 /* Let's give the button's their feedback after clicking */

 var support = { animations : Modernizr.cssanimations },
   animEndEventNames = { 'WebkitAnimation' : 'webkitAnimationEnd', 'OAnimation' : 'oAnimationEnd', 'msAnimation' : 'MSAnimationEnd', 'animation' : 'animationend' },
   animEndEventName = animEndEventNames[ Modernizr.prefixed( 'animation' ) ],
   onEndAnimation = function( el, callback ) {
     var onEndCallbackFn = function( ev ) {
       if( support.animations ) {
         if( ev.target != this ) return;
         this.removeEventListener( animEndEventName, onEndCallbackFn );
       }
       if( callback && typeof callback === 'function' ) { callback.call(); }
     };
     if( support.animations ) {
       el.addEventListener( animEndEventName, onEndCallbackFn );
     }
     else {
       onEndCallbackFn();
     }
   },
   eventtype = mobilecheck() ? 'touchstart' : 'click';

 [].slice.call( document.querySelectorAll( '.animate' ) ).forEach( function( el ) {
   el.addEventListener( eventtype, function( ev ) {
     classie.add( el, 'animate--click' );
     onEndAnimation( classie.has( el, 'animate--complex' ) ? el.querySelector( '.animate__helper' ) : el, function() {
       classie.remove( el, 'animate--click' );
     });
   });
 });

 /* MOBILE ONLY */

 $('.pagetitle').click(function(){
  if($(this).hasClass('menu-open')) {
   $(this).parent().find('#page-categories').fadeOut('fast');
   $(this).removeClass('menu-open');
  } else {
   $(this).parent().find('#page-categories').fadeIn('fast');
   $(this).addClass('menu-open');
  }
 });

// Reset Font Size
var originalFontSize = $('html').css('font-size');

$('.scaleFont.originalSize').click(function(){
  $('html').css('font-size', originalFontSize);
});

$(".scaleFont.maxSize").click(function(){
  var newFontSizeNum = parseFloat(originalFontSize, 10);
  var newFontSize = newFontSizeNum*1.1;
  $('html').css('font-size', newFontSize);
  return false;
});

$(".scaleFont.maxMaxSize").click(function(){
  var newFontSizeNum = parseFloat(originalFontSize, 10);
  var newFontSize = newFontSizeNum*1.25;
  $('html').css('font-size', newFontSize);
  return false;
});
});

/* Function to active event-handler's on new loaded content */

function bohemeInitStream() {

  $('textarea').markItUp(bohemeSettings);

  $('.write-comment .sendComment').click(function(){
   $('#bohemeLoader').clone().appendTo('.comment:last-child').fadeIn('fast');
   // NEHME letztes Element von .comments, mache neues .comment-div, kopiere .loader da rein
   // removeId('#bohemeLoader')
  });

 //if (typeof window.stalactite == 'function') { alert('D'); 
  $("#content").stalactite({ 
    duration : 120,
    complete : function(v){ 
        //alert(v); 
    }
});
  
  // }

   $('.stream-entry .comments-count').click(function(){
    $(this).parent().parent().find('.comments').addClass('active').find('textarea').autosize();
    $("#content").stalactite({ duration : 0 });
    return false;
   });

   $('.stream-entry .heart').click(function(){
    $(this).addClass('active');
   });

   $('.stream-entry .share').click(function(){
    $(this).addClass('active');
    alert('Open #composer in share-style...');
   });

   $('.stream-entry .mark').click(function(){
    $(this).addClass('active');
   });

}

// http://stackoverflow.com/a/11381730/989439

function mobilecheck() {
  var check = false;
  (function(a){if(/(android|ipad|playbook|silk|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i.test(a)||/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(a.substr(0,4)))check = true})(navigator.userAgent||navigator.vendor||window.opera);
  return check;
}
