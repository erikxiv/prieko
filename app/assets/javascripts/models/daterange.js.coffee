//= require main

window.eco.models.daterange = Backbone.Model.extend({
	defaults : {
		special : [
			{id: "all", label: "All", "filter-name":"DateRange,Year,Month", "filter-value":""},
			{id: "LastYear", label: "Last Year", "filter-name":"DateRange,Year,Month", "filter-value":"LastYear"},
			{id: "LastMonth", label: "Last Month", "filter-name":"DateRange,Year,Month", "filter-value":"LastMonth"}
		]
		years : [
			{id: "2012", label: "2012", "filter-name":"Year,DateRange", "filter-value":"2012"},
			{id: "2011", label: "2011", "filter-name":"Year,DateRange", "filter-value":"2011"},
			{id: "2010", label: "2010", "filter-name":"Year,DateRange", "filter-value":"2010"},
			{id: "2009", label: "2009", "filter-name":"Year,DateRange", "filter-value":"2009"},
			{id: "2008", label: "2008", "filter-name":"Year,DateRange", "filter-value":"2008"},
			{id: "2007", label: "2007", "filter-name":"Year,DateRange", "filter-value":"2007"}
		]
		months : [
			{id: "1",  label: "January",   "filter-name":"Month,DateRange", "filter-value":"1"},
			{id: "2",  label: "February",  "filter-name":"Month,DateRange", "filter-value":"2"},
			{id: "3",  label: "March",     "filter-name":"Month,DateRange", "filter-value":"3"},
			{id: "4",  label: "April",     "filter-name":"Month,DateRange", "filter-value":"4"},
			{id: "5",  label: "May",       "filter-name":"Month,DateRange", "filter-value":"5"},
			{id: "6",  label: "June",      "filter-name":"Month,DateRange", "filter-value":"6"},
			{id: "7",  label: "July",      "filter-name":"Month,DateRange", "filter-value":"7"},
			{id: "8",  label: "August",    "filter-name":"Month,DateRange", "filter-value":"8"},
			{id: "9",  label: "September", "filter-name":"Month,DateRange", "filter-value":"9"},
			{id: "10", label: "October",   "filter-name":"Month,DateRange", "filter-value":"10"},
			{id: "11", label: "November",  "filter-name":"Month,DateRange", "filter-value":"11"},
			{id: "12", label: "December",  "filter-name":"Month,DateRange", "filter-value":"12"}
		]
	}
})
