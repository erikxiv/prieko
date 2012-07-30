$ ->
	$('body').append(template)
	
template = "<script type='text/html' id='pivot_template'>
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
<div id='pivot_graph' style='width:600px;height:300px;'>
</div>
<script language='javascript' type='text/javascript' src='/flot/jquery.flot.js'></script>
<script language='javascript' type='text/javascript' src='/flot/jquery.flot.stack.js'></script>
</script>"