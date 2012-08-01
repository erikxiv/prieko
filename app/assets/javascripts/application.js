// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require lib/jquery.flot.js
//= require lib/jquery.flot.stack.js
//= require_tree .

$(document).ready(function() {
	$(".filter_menu").click(function(event) {
		$(".popup_menu:visible").not($('.popup_menu', this)).hide();
		$('.popup_menu', this).toggle();
		event.stopPropagation();
		return false;
	});
	$("body").click(function(event) {
		$(".popup_menu:visible").hide();
	});
	
	// Initialize jquery-address
	$.address.strict(false);
	$.address.wrap(true);
	$.address.init(function(event) {
		if (event.path && window.spa.changeTab[event.path]) {
			handleQuery(event);
			window.spa.changeTab.Header(event.path);
			window.spa.changeTab[event.path]();
		}
		else {
			$.address.value("Pivot");
			window.spa.changeTab["Pivot"]();
		}
	}).change(function(event) {
		// Set URL
		//$.address.value(1);
		handleQuery(event);
		if (event.path && window.spa.changeTab[event.path]) {
			window.spa.changeTab[event.path]();
		}
	});

	$('a').address(function() {  
	    return $(this).attr('href').replace(/^#/,'');
	});
});

function handleQuery(event) {
	// Update query object
	window.spa.query.parse(event.queryString)
	
	// Update displayed filters
	if (window.spa.query.get("DateRange"))
		$("#date_range_filter_value").html(window.spa.query.get("DateRange"));
	else if (window.spa.query.get("Year")) {
		if (window.spa.query.get("Month"))
			$("#date_range_filter_value").html(window.spa.query.get("Year")+"-"+window.spa.query.get("Month"));
		else
			$("#date_range_filter_value").html(window.spa.query.get("Year"));
	}
	else
		$("#date_range_filter_value").html("All");
	if (window.spa.query.get("Category")) {
		$("#category_filter_value").html(window.spa.query.get("Category"));
	}
	else
		$("#category_filter_value").html("All");
	if (window.spa.query.get("PivotView")) {
		$("#pivot_view_value").html(window.spa.query.get("PivotView"));
	}

	// Change all page links to include query strings
	$('a.header_menu_item').attr('href',function() {
		return "#" + $(this).html() + window.spa.query.toString();
	});
	// Change all nav links to include query strings
	$('a.nav').attr('href',function() {
		data_filter_name = $(this).attr('data-filter-name');
		data_filter_value = $(this).attr('data-filter-value');
		return event.path.replace(/^/,'#').replace(/$/,window.spa.query.copy(data_filter_name,data_filter_value).toString())
	});
}