$ ->
	$('body').append(template)

template = "<script type='text/html' id='list_template'>
<table class=\"metro\">
	  <tr>
	    <td class=\"header\">Date</td>
	    <td class=\"header\">Description</td>
	    <td class=\"header\">Amount</td>
	    <td class=\"header\">Category</td>
	  </tr>
	<% for (var i = 0; i < data.length; i++) {
		var verification = data[i]; %>
	  <tr>
	    <td class=\"\"><%=verification.verification_date%></td>
		<td class=\"\"><%=verification.description%></td>
	    <td class=\"number <%= verification.amount > 0 ? 'positive-number' : 'negative-number' %>\"><%=verification.amount.toFixed(0)%></td>
		<td class=\"\"><%=verification.category%></td>
	  </tr>
	<% } %>
</table>
</script>"