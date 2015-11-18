// ----------------------------------------------------------------------------
// markItUp!
// ----------------------------------------------------------------------------
// Copyright (C) 2008 Jay Salvat
// http://markitup.jaysalvat.com/
// ----------------------------------------------------------------------------
// BBCode tags example
// http://en.wikipedia.org/wiki/Bbcode
// ----------------------------------------------------------------------------
// Feel free to add more tags
// ----------------------------------------------------------------------------
bohemeSettings = {
	previewParserPath:	'', // path to your BBCode parser
	markupSet: [
		{name:'B', key:'B', openWith:'[b]', closeWith:'[/b]'},
		{name:'i', key:'I', openWith:'[i]', closeWith:'[/i]'},
		{name:'U', key:'U', openWith:'[u]', closeWith:'[/u]'},
		{name:'"', openWith:'[quote]', closeWith:'[/quote]'},
		{name:'', key:'P', replaceWith:'[img][![Url]!][/img]', className:"ion-ios-camera-outline"},
		{name:'', key:'L', openWith:'[url=[![Url]!]]', closeWith:'[/url]', className:"ion-link", placeHolder:'Your text to link here...'},
		{name:'',className:'ion-ios-checkmark-outline right'}
	]
}
