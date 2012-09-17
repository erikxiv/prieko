//= require main

window.eco.views.master = Backbone.View.extend({
	el: '#page'
	render: (event) ->
		window.eco.debug.log_event("master.render", event)
		this.$el.html(this.template(this.model.toJSON()))
		this.urlChanged()
		this
	urlChanged: () ->
		window.eco.debug.log_event("master.urlChanged", null)
		# Update queries on main menu links
		$('#_pivot').attr("href","#pivot"+window.eco.state.router.modifyQuery())
		$('#_list').attr("href","#list"+window.eco.state.router.modifyQuery())
		$('#_patterns').attr("href","#patterns"+window.eco.state.router.modifyQuery())
		# Recolor header links
		$('.header_menu_item').removeClass('selected')
		menuElement = $("#_"+window.eco.state.router.path)
		menuElement.addClass('selected')
		# Get page name to show
		pageName = menuElement.html()
		document.title = "Prieko - " + pageName
	initialize: (options) ->
		window.eco.debug.log_event("master.initialize", options)
		that = this
		this.model.on('change', this.urlChanged)
		$("body").click((e) -> that.hide_popup(e))
		$("body").keypress((e) -> that.keyboard_shortcut(e))
	events:
		"click .filter_menu" : "toggle_popup"
		"click .header_button" : "toggle_popup"
		"click #reset" : "reset"
		"click #import_button" : "focus_on_import"
		"keypress #import_input" : "importOnEnter"
	keyboard_shortcut: (event) ->
		if $(document.activeElement).is("input")
			window.eco.debug.log_event("master.keyboard_shortcut " + event.keyCode + " passed through", event)
		else
			window.eco.debug.log_event("master.keyboard_shortcut " + event.keyCode + " caught", event)
			if event.keyCode == 105 # letter 'i'
				if $("#import_popup").is(":visible")
					this.hide_popup()
				else
					this.hide_popup()
					$("#import_popup").toggle()
					this.focus_on_import()
			event.stopPropagation()
			false
	focus_on_import: (event) ->
		window.eco.debug.log_event("master.focus_on_import", event)
		$("#import_input").focus()
	toggle_popup: (event) ->
		window.eco.debug.log_event("master.toggle_popup", event)
		$(".popup_menu:visible").not($('.popup_menu', this)).hide();
		$('.popup_menu', event.currentTarget).toggle();
		event.stopPropagation();
		return false;
	hide_popup: (event) ->
		window.eco.debug.log_event("master.hide_popup", event)
		$(".popup_menu:visible").hide();
	reset: (event) ->
		window.eco.debug.log_event("master.reset", event)
	ignore: (event) ->
		window.eco.debug.log_event("master.ignore", event)
		event.stopPropagation()
		false
	importCsv: ->
		# Update verifications collection with imported lines
		window.eco.state.verifications.parse_csv($("#import_input").val())
		# Save new verifications
		window.eco.state.verifications.each((m) -> m.save())
		# Empty input box
		$("#import_input").val("")
		this.hide_popup()
	importOnEnter: (event) ->
		if (event.keyCode == 13)
			window.eco.debug.log_event("master.importOnEnter", event)
			this.importCsv()
			false
			event.stopPropagation()
	template: _.template("
	<div id=\"header\">
		<div class=\"header_button link\">
			<img src=\"images/settings.png\"/>
			<div class=\"popup_menu\" id=\"settings_popup\">
			    Need to get user from backend...
			</div>
		</div>
		<div class=\"header_button link\" id=\"import_button\">
			<img src=\"images/upload.png\"/>
			<div class=\"popup_menu\" id=\"import_popup\">
				<textarea id=\"import_input\"></textarea>
			</div>
		</div>
		<div class=\"header_button\">
			<a href=\"verifications.csv\" id=\"_export_button\" class=\"header_button href\"><img src=\"images/download.png\"/></a>
		</div>
		<div class=\"nofloat\"></div>

		<a href=\"#pivot\" id=\"_pivot\" class=\"header_menu_item selected\">Pivot</a>
		<a href=\"#list\" id=\"_list\" class=\"header_menu_item\">List</a>
		<a href=\"#patterns\" id=\"_patterns\" class=\"header_menu_item\">Patterns</a>
		<div class=\"nofloat\"></div>

		<div class=\"filter_menu\">
			<span class=\"filter_menu_item link\">Date range: <b id = \"date_range_filter_value\">Last year</b></span>
			<div class=\"popup_menu triangle-border\" id=\"date_range_filter_menu\">
				<div class=\"column\">
					<a href=\"#\" class=\"nav\" data-filter-name=\"DateRange,Year,Month\">All</a><br/>
					<a href=\"#\" class=\"nav\" data-filter-name=\"DateRange,Year,Month\" data-filter-value=\"LastYear\">Last year</a><br/>
					<a href=\"#\" class=\"nav\" data-filter-name=\"DateRange,Year,Month\" data-filter-value=\"LastMonth\">Last month</a><br/>
				</div>
				<div class=\"column\">
					<a href=\"#\" class=\"nav\" data-filter-name=\"Year,DateRange\" data-filter-value=\"2012\">2012</a><br/>
					<a href=\"#\" class=\"nav\" data-filter-name=\"Year,DateRange\" data-filter-value=\"2011\">2011</a><br/>
					<a href=\"#\" class=\"nav\" data-filter-name=\"Year,DateRange\" data-filter-value=\"2010\">2010</a><br/>
					<a href=\"#\" class=\"nav\" data-filter-name=\"Year,DateRange\" data-filter-value=\"2009\">2009</a><br/>
					<a href=\"#\" class=\"nav\" data-filter-name=\"Year,DateRange\" data-filter-value=\"2008\">2008</a><br/>
				</div>
				<div class=\"column\">
					<a href=\"#\" class=\"nav\" data-filter-name=\"Month,DateRange\" data-filter-value=\"1\">January</a><br/>
					<a href=\"#\" class=\"nav\" data-filter-name=\"Month,DateRange\" data-filter-value=\"2\">February</a><br/>
					<a href=\"#\" class=\"nav\" data-filter-name=\"Month,DateRange\" data-filter-value=\"3\">March</a><br/>
					<a href=\"#\" class=\"nav\" data-filter-name=\"Month,DateRange\" data-filter-value=\"4\">April</a><br/>
					<a href=\"#\" class=\"nav\" data-filter-name=\"Month,DateRange\" data-filter-value=\"5\">May</a><br/>
					<a href=\"#\" class=\"nav\" data-filter-name=\"Month,DateRange\" data-filter-value=\"6\">June</a><br/>
					<a href=\"#\" class=\"nav\" data-filter-name=\"Month,DateRange\" data-filter-value=\"7\">July</a><br/>
					<a href=\"#\" class=\"nav\" data-filter-name=\"Month,DateRange\" data-filter-value=\"8\">August</a><br/>
					<a href=\"#\" class=\"nav\" data-filter-name=\"Month,DateRange\" data-filter-value=\"9\">September</a><br/>
					<a href=\"#\" class=\"nav\" data-filter-name=\"Month,DateRange\" data-filter-value=\"10\">October</a><br/>
					<a href=\"#\" class=\"nav\" data-filter-name=\"Month,DateRange\" data-filter-value=\"11\">November</a><br/>
					<a href=\"#\" class=\"nav\" data-filter-name=\"Month,DateRange\" data-filter-value=\"12\">December</a><br/>
				</div>
				<div class=\"nofloat\"></div>
			</div>
		</div>
		<div class=\"filter_menu\">
			<span class=\"filter_menu_item link\">Category: <b id=\"category_filter_value\"><%=window.eco.state.category%></b></span>
			<div class=\"popup_menu\" id=\"category_filter_menu\">
				<div class=\"column\">
					<a href=\"#\" class=\"nav\">All</a><br/>
				</div>
				<div class=\"nofloat\"></div>
			</div>
		</div>
		<div class=\"filter_menu\">
			<span class=\"filter_menu_item link\">Description: <b id=\"description_filter_value\">All</b></span>
			<div class=\"popup_menu\" id=\"description_filter_menu\">
				<div class=\"column\">
					<a href=\"#\" class=\"nav\">All</a><br/>
				</div>
				<div class=\"nofloat\"></div>
			</div>
		</div>

		<div class=\"filter_menu\">
			<span class=\"filter_menu_item link\">Pivot view: <b id=\"pivot_view_value\">Graph</b></span>
			<div class=\"popup_menu\" id=\"pivot_view_menu\">
				<div class=\"column\">
					<a href=\"#\" class=\"nav\" data-filter-name=\"PivotView\" data-filter-value=\"Graph\">Graph</a><br/>
					<a href=\"#\" class=\"nav\" data-filter-name=\"PivotView\" data-filter-value=\"Table\">Table</a><br/>
				</div>
				<div class=\"nofloat\"></div>
			</div>
		</div>
		<div class=\"nofloat\"></div>

	</div>
	<div id=\"content\"></div>
	<div id=\"footer\"></div>
	<div id=\"hidden\">
		<div id=\"_list_table_view\"></div>
		<div id=\"_patterns_table_view\"></div>
		<div id=\"_pivot_table_view\"></div>
		<div id=\"_pivot_graph_view\"></div>
	</div>
	")
})