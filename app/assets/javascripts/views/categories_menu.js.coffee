$ ->
	$('body').append(template)

template = "<script type='text/html' id='categories_menu_template'>
<div class=\"column\">
	<a href=\"#\" class=\"nav\" data-filter-name=\"Category\" data-filter-value=\"\">All</a><br/>
	<% for (var i = 0; i < categories.length; i++) {
		var category = categories[i]; %>
	<a href=\"#\" class=\"nav\" data-filter-name=\"Category\" data-filter-value=\"<%=category%>\"><%=category%></a><br/>
	<% } %>
</div>
<div class=\"nofloat\"></div>
</script>"