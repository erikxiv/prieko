$ ->
	$('body').append(template)
	
template = "<script type='text/html' id='pivot_template'>
<div id='pivot_container'>
<div id='pivot_table'>
<table class='metro'>
	<% for (var ri = 0; ri < data.length; ri++) { %>
		<tr>
		<% for (var ci = 0; ci < data[ri].length; ci++) { %>
			<td class='<%=data[ri][ci].class%>'>
			<%=data[ri][ci].data ? data[ri][ci].data.replace(' ', '&nbsp;') : ''%>
			</td>
		<% } %>
		</tr>
	<% } %>
</table>
</div>
<div id='pivot_graph'>
<h2>Income</h2>
<div id='pivot_graph_pos' style='width:600px;height:300px;'></div>
<h2>Expenditures</h2>
<div id='pivot_graph_neg' style='width:600px;height:300px;'></div>
</div>
</div>
</script>"