$ ->
	$('body').append(template)
	
template = "<script type='text/html' id='pivot_template'>
<table class='metro'>
	<% for (var ri = 0; ri < data.length; ri++) { %>
		<tr>
		<% for (var ci = 0; ci < data[ri].length; ci++) { %>
			<td class='<%=data[ri][ci].class%>'>
			<%=data[ri][ci].data%>
			</td>
		<% } %>
		</tr>
	<% } %>
	</table>
</script>"