# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
	$('#_List').click ->
		changeTab($(this))
	window.spa.changeTab.List = -> changeTab($("#_List"))

# Change content when header menu item is clicked
changeTab = (menuElement) ->
	# Change content
	$('#content').html("Loading...<br/>")
	#pivotData = JSON.parse(fakeJsonTable)
	$.get '/verifications.json'+window.spa.query.toString(), (data) ->
		$('#content').html(tmpl("list_template",{data: data}))

fakeListHtml = '	<table class="metro">
		<thead class="metro">
	  <tr class="metro">
	    <th class="metro">Date</th>
	    <th class="metro">Description</th>
	    <th class="metro">Amount</th>

	    <th class="metro">Category</th>
	    <th class="metro">Pattern</th>
	    <th class="metro"></th>
	  </tr>
		</thead>

	<tbody>
	  <tr class="metro">
	    <td class="metro">2012-07-02</td>

		<td class="metro">54033106596</td>
	    <td class="metro number negative-number">10000.0</td>
		<td class="metro">Sparkonto</td>
		<td class="metro">16
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-06-30</td>
		<td class="metro">CITY&nbspSTORMAR</td>
	    <td class="metro number negative-number">626.0</td>
		<td class="metro">Övrigt</td>
		<td class="metro">191
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-06-30</td>
		<td class="metro">WALLINS&nbspBAGE</td>
	    <td class="metro number negative-number">22.0</td>
		<td class="metro">Mat</td>
		<td class="metro">731

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-30</td>
		<td class="metro">WHYRED</td>
	    <td class="metro number negative-number">2300.0</td>
		<td class="metro">Kläder</td>
		<td class="metro">658

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-29</td>
		<td class="metro">CORDON&nbspBLEU</td>
	    <td class="metro number negative-number">548.0</td>
		<td class="metro">Övrigt</td>
		<td class="metro">201

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-29</td>
		<td class="metro">GÖTGATANS&nbspSN</td>
	    <td class="metro number negative-number">600.0</td>
		<td class="metro">Övrigt</td>
		<td class="metro">699

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-29</td>
		<td class="metro">WIJNJAS&nbspGROS</td>
	    <td class="metro number negative-number">614.48</td>
		<td class="metro">Mat</td>
		<td class="metro">732

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-28</td>
		<td class="metro">AKADEMIKERNAS&nbsp&nbspA-KASSA</td>
	    <td class="metro number negative-number">90.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">720

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-28</td>
		<td class="metro">APOTEK&nbspHJÄRT</td>
	    <td class="metro number negative-number">75.5</td>
		<td class="metro">Övrigt</td>

		<td class="metro">729
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-28</td>
		<td class="metro">AVANZA&nbspBANK</td>
	    <td class="metro number negative-number">1000.0</td>

		<td class="metro">Sparkonto</td>
		<td class="metro">114
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-28</td>
		<td class="metro">ENKLA&nbspVARDAG</td>

	    <td class="metro number negative-number">25.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">679
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-28</td>

		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">246.28</td>
		<td class="metro">Mat</td>
		<td class="metro">292
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-06-28</td>
		<td class="metro">RADIOTJÄNST&nbspI&nbspKIRUNA&nbspAB</td>
	    <td class="metro number negative-number">519.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">464
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-06-28</td>
		<td class="metro">TELGE&nbspENERGI&nbspAB</td>
	    <td class="metro number negative-number">157.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">607

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-28</td>
		<td class="metro">TEXAS&nbspBURGER</td>
	    <td class="metro number negative-number">270.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">611

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-27</td>
		<td class="metro">COM&nbspHEM&nbspAB</td>
	    <td class="metro number negative-number">249.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">701

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-26</td>
		<td class="metro">APPLE&nbspITUNES</td>
	    <td class="metro number negative-number">15.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">68

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-26</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">315.2</td>
		<td class="metro">Mat</td>
		<td class="metro">292

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-26</td>
		<td class="metro">TELE2&nbspSVERIGE&nbspAB&nbspATT:&nbspKU</td>
	    <td class="metro number negative-number">177.0</td>
		<td class="metro">Hushåll</td>

		<td class="metro">605
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-25</td>
		<td class="metro">BONUS</td>
	    <td class="metro number negative-number">3861.0</td>

		<td class="metro">Kattis</td>
		<td class="metro">152
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-25</td>
		<td class="metro">KAFFEMASKINE</td>

	    <td class="metro number negative-number">115.0</td>
		<td class="metro">Mat</td>
		<td class="metro">338
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-25</td>

		<td class="metro">SYSTEMBOLAGE</td>
	    <td class="metro number negative-number">860.0</td>
		<td class="metro">Systembolaget</td>
		<td class="metro">594
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-06-24</td>
		<td class="metro">AKADEMIKERNAS&nbsp&nbspA-KASSA</td>
	    <td class="metro number negative-number">90.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">720
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-06-24</td>
		<td class="metro">BOSTADS&nbspAB&nbspGRINDSHAGE</td>
	    <td class="metro number negative-number">6655.0</td>
		<td class="metro">Hyra</td>
		<td class="metro">155

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-24</td>
		<td class="metro">DAGENS&nbspNYHETER&nbspAB</td>
	    <td class="metro number negative-number">1542.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">207

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-24</td>
		<td class="metro">HYRESGÄSTFÖRENINGEN,&nbspSTH</td>
	    <td class="metro number negative-number">240.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">311

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-24</td>
		<td class="metro">TELIASONERA&nbspSVERIGE&nbspAB&nbspC</td>
	    <td class="metro number negative-number">237.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">609

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-22</td>
		<td class="metro">APPLE&nbspITUNES</td>
	    <td class="metro number negative-number">22.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">68

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-21</td>
		<td class="metro">E-MAN&nbspAB</td>
	    <td class="metro number positive-number">39699.0</td>
		<td class="metro">Lön</td>
		<td class="metro">228

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-21</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">456.18</td>
		<td class="metro">Mat</td>
		<td class="metro">292

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-20</td>
		<td class="metro">PRESSBYRAN&nbsp8</td>
	    <td class="metro number negative-number">212.0</td>
		<td class="metro">Cigaretter</td>
		<td class="metro">678

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-20</td>
		<td class="metro">REST&nbspGYLLENE</td>
	    <td class="metro number negative-number">76.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">488

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-20</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">58.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-19</td>
		<td class="metro">EUROPCAR&nbspSWE</td>
	    <td class="metro number positive-number">500.0</td>

		<td class="metro">Resa</td>
		<td class="metro">727
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-19</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>

	    <td class="metro number negative-number">44.71</td>
		<td class="metro">Mat</td>
		<td class="metro">292
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-19</td>

		<td class="metro">KAJENS&nbspFIK</td>
	    <td class="metro number negative-number">120.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">733
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-06-19</td>
		<td class="metro">PRESSBYRAN&nbsp8</td>
	    <td class="metro number negative-number">106.0</td>
		<td class="metro">Cigaretter</td>
		<td class="metro">678
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-06-19</td>
		<td class="metro">SJ&nbspREGIONAL</td>
	    <td class="metro number negative-number">139.0</td>
		<td class="metro">Lön</td>
		<td class="metro">531

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-19</td>
		<td class="metro">SJ&nbspREGIONAL</td>
	    <td class="metro number negative-number">139.0</td>
		<td class="metro">Lön</td>
		<td class="metro">531

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-19</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">44.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-18</td>
		<td class="metro">ERIK&nbspLARSSON</td>
	    <td class="metro number positive-number">3500.0</td>

		<td class="metro">Sparkonto</td>
		<td class="metro">230
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-18</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>

	    <td class="metro number negative-number">71.38</td>
		<td class="metro">Mat</td>
		<td class="metro">292
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-18</td>

		<td class="metro">SL&nbspGULLMARSP</td>
	    <td class="metro number negative-number">790.0</td>
		<td class="metro">Transport</td>
		<td class="metro">730
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-06-18</td>
		<td class="metro">STATOIL&nbspHAMM</td>
	    <td class="metro number negative-number">189.33</td>
		<td class="metro">Resa</td>
		<td class="metro">728
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-06-18</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">49.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-16</td>
		<td class="metro">EUROPCAR&nbspSWE</td>
	    <td class="metro number negative-number">500.0</td>
		<td class="metro">Resa</td>
		<td class="metro">727

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-16</td>
		<td class="metro">PRESSBYRAN&nbsp8</td>
	    <td class="metro number negative-number">106.0</td>
		<td class="metro">Cigaretter</td>
		<td class="metro">678

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-16</td>
		<td class="metro">SYSTEMBOLAGE</td>
	    <td class="metro number negative-number">522.0</td>
		<td class="metro">Systembolaget</td>
		<td class="metro">594

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-15</td>
		<td class="metro">LOUIS&nbspJAZZKL</td>
	    <td class="metro number negative-number">380.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">681

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-15</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">64.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-14</td>
		<td class="metro">REST&nbspGYLLENE</td>
	    <td class="metro number negative-number">300.0</td>

		<td class="metro">Lunch</td>
		<td class="metro">488
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-14</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>

	    <td class="metro number negative-number">64.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-14</td>

		<td class="metro">SURFTOWN&nbspAS</td>
	    <td class="metro number negative-number">555.0</td>
		<td class="metro">Övrigt</td>
		<td class="metro">586
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-06-13</td>
		<td class="metro">ARLANDA&nbspEXPR</td>
	    <td class="metro number negative-number">1100.0</td>
		<td class="metro">Lön</td>
		<td class="metro">69
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-06-13</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">304.6</td>
		<td class="metro">Mat</td>
		<td class="metro">292

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-13</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">64.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-12</td>
		<td class="metro">APPLE&nbspITUNES</td>
	    <td class="metro number negative-number">49.0</td>

		<td class="metro">Nöje</td>
		<td class="metro">68
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-12</td>
		<td class="metro">PRESSBYRAN&nbsp8</td>

	    <td class="metro number negative-number">106.0</td>
		<td class="metro">Cigaretter</td>
		<td class="metro">678
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-12</td>

		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">94.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-06-11</td>
		<td class="metro">035314999610</td>
	    <td class="metro number negative-number">715.81</td>
		<td class="metro">Resa</td>
		<td class="metro">721
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-06-11</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">337.72</td>
		<td class="metro">Mat</td>
		<td class="metro">292

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-11</td>
		<td class="metro">MONDIAL&nbspASSI</td>
	    <td class="metro number negative-number">118.0</td>
		<td class="metro">Resa</td>
		<td class="metro">

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-11</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">64.0</td>

		<td class="metro">Lunch</td>
		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-10</td>
		<td class="metro">CYKELRINGEN</td>

	    <td class="metro number negative-number">344.0</td>
		<td class="metro">Övrigt</td>
		<td class="metro">723
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-08</td>

		<td class="metro">APPLE&nbspITUNES</td>
	    <td class="metro number negative-number">14.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">68
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-06-08</td>
		<td class="metro">PIG&nbspAND&nbspWHIS</td>
	    <td class="metro number negative-number">360.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">449
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-06-07</td>
		<td class="metro">7-ELEVEN&nbsp191</td>
	    <td class="metro number negative-number">106.0</td>
		<td class="metro">Cigaretter</td>
		<td class="metro">23

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-07</td>
		<td class="metro">CAFE&nbspCHATEAU</td>
	    <td class="metro number negative-number">83.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">170

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-07</td>
		<td class="metro">COOP&nbspEXTRA&nbspM</td>
	    <td class="metro number negative-number">25.95</td>
		<td class="metro">Mat</td>
		<td class="metro">726

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-07</td>
		<td class="metro">HARGENGET&nbsp/A</td>
	    <td class="metro number negative-number">650.0</td>
		<td class="metro">Övrigt</td>

		<td class="metro">725
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-07</td>
		<td class="metro">ICA&nbspSUPERMAR</td>
	    <td class="metro number negative-number">140.5</td>

		<td class="metro">Mat</td>
		<td class="metro">317
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-07</td>
		<td class="metro">PANINI&nbspSÖDER</td>

	    <td class="metro number negative-number">24.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">443
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-07</td>

		<td class="metro">PANINI&nbspSÖDER</td>
	    <td class="metro number negative-number">93.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">443
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-06-05</td>
		<td class="metro">7-ELEVEN&nbsp151</td>
	    <td class="metro number negative-number">106.0</td>
		<td class="metro">Cigaretter</td>
		<td class="metro">682
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-06-05</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">64.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-05</td>
		<td class="metro">SYSTEMBOLAGE</td>
	    <td class="metro number negative-number">417.0</td>
		<td class="metro">Systembolaget</td>
		<td class="metro">594

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-04</td>
		<td class="metro">REST&nbspGYLLENE</td>
	    <td class="metro number negative-number">300.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">488

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-04</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">40.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-02</td>
		<td class="metro">FOLKETS&nbspKEBA</td>
	    <td class="metro number negative-number">65.0</td>

		<td class="metro">Lunch</td>
		<td class="metro">247
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-02</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>

	    <td class="metro number negative-number">332.12</td>
		<td class="metro">Mat</td>
		<td class="metro">292
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-06-01</td>

		<td class="metro">AVANZA&nbspBANK</td>
	    <td class="metro number positive-number">7577.51</td>
		<td class="metro">Sparkonto</td>
		<td class="metro">114
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-06-01</td>
		<td class="metro">LA&nbspPETITE</td>
	    <td class="metro number negative-number">55.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">724
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-06-01</td>
		<td class="metro">LULLES&nbspFAGEL</td>
	    <td class="metro number negative-number">115.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-31</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">148.35</td>
		<td class="metro">Mat</td>
		<td class="metro">292

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-31</td>
		<td class="metro">PRESSBYRAN&nbsp8</td>
	    <td class="metro number negative-number">106.0</td>
		<td class="metro">Cigaretter</td>
		<td class="metro">678

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-31</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">40.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-30</td>
		<td class="metro">AKADEMIKERNAS&nbsp&nbspA-KASSA</td>
	    <td class="metro number negative-number">90.0</td>

		<td class="metro">Hushåll</td>
		<td class="metro">720
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-30</td>
		<td class="metro">CENTRALA&nbspSTUDIESTÖDSNÄMN</td>

	    <td class="metro number negative-number">1703.0</td>
		<td class="metro">CSN</td>
		<td class="metro">185
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-30</td>

		<td class="metro">CENTRALA&nbspSTUDIESTÖDSNÄMN</td>
	    <td class="metro number negative-number">5085.0</td>
		<td class="metro">CSN</td>
		<td class="metro">185
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-05-30</td>
		<td class="metro">ENKLA&nbspVARDAG</td>
	    <td class="metro number negative-number">25.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">679
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-05-30</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">40.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-30</td>
		<td class="metro">TELGE&nbspENERGI&nbspAB</td>
	    <td class="metro number negative-number">162.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">607

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-30</td>
		<td class="metro">TR0157722571</td>
	    <td class="metro number negative-number">7186.0</td>
		<td class="metro">Resa</td>
		<td class="metro">

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-29</td>
		<td class="metro">COM&nbspHEM&nbspAB</td>
	    <td class="metro number negative-number">249.0</td>
		<td class="metro">Hushåll</td>

		<td class="metro">701
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-29</td>
		<td class="metro">DHL&nbspFREIGHT&nbsp(SWEDEN)&nbspAB</td>
	    <td class="metro number negative-number">223.0</td>

		<td class="metro">Kläder</td>
		<td class="metro">
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-28</td>
		<td class="metro">54033106596</td>

	    <td class="metro number negative-number">3000.0</td>
		<td class="metro">Sparkonto</td>
		<td class="metro">16
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-28</td>

		<td class="metro">AKADEMIKERNAS&nbsp&nbspA-KASSA</td>
	    <td class="metro number negative-number">90.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">720
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-05-28</td>
		<td class="metro">AVANZA&nbspBANK</td>
	    <td class="metro number negative-number">1000.0</td>
		<td class="metro">Sparkonto</td>
		<td class="metro">114
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-05-28</td>
		<td class="metro">BOSTADS&nbspAB&nbspGRINDSHAGE</td>
	    <td class="metro number negative-number">6140.0</td>
		<td class="metro">Hyra</td>
		<td class="metro">155

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-28</td>
		<td class="metro">CENTRALA&nbspSTUDIESTÖDSNÄMN</td>
	    <td class="metro number negative-number">2334.0</td>
		<td class="metro">CSN</td>

		<td class="metro">185
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-28</td>
		<td class="metro">FORTUM&nbspMARKETS&nbspAB&nbspKUNDRE</td>
	    <td class="metro number negative-number">287.0</td>

		<td class="metro">Hushåll</td>
		<td class="metro">255
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-28</td>
		<td class="metro">GUNNARSONS&nbspS</td>

	    <td class="metro number negative-number">45.0</td>
		<td class="metro">Mat</td>
		<td class="metro">276
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-28</td>

		<td class="metro">ICA&nbspSUPERMAR</td>
	    <td class="metro number negative-number">86.6</td>
		<td class="metro">Mat</td>
		<td class="metro">317
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-05-28</td>
		<td class="metro">NORDIC&nbspLENSES</td>
	    <td class="metro number negative-number">980.0</td>
		<td class="metro">Övrigt</td>
		<td class="metro">426
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-05-28</td>
		<td class="metro">PRESSBYRAN&nbsp8</td>
	    <td class="metro number negative-number">106.0</td>
		<td class="metro">Cigaretter</td>
		<td class="metro">678

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-28</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">40.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-28</td>
		<td class="metro">SYSTEMBOLAGE</td>
	    <td class="metro number negative-number">373.0</td>

		<td class="metro">Systembolaget</td>
		<td class="metro">594
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-28</td>
		<td class="metro">TELE2&nbspSVERIGE&nbspAB&nbspATT:&nbspKU</td>

	    <td class="metro number negative-number">172.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">605
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-28</td>

		<td class="metro">TELIASONERA&nbspSVERIGE&nbspAB&nbspC</td>
	    <td class="metro number negative-number">248.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">609
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-05-26</td>
		<td class="metro">BAR&nbspCENTRAL</td>
	    <td class="metro number negative-number">180.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">722
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-05-26</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">105.02</td>
		<td class="metro">Mat</td>
		<td class="metro">292

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-26</td>
		<td class="metro">RISKORNET</td>
	    <td class="metro number negative-number">160.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">497

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-25</td>
		<td class="metro">JENSENS&nbspBÖFH</td>
	    <td class="metro number negative-number">360.0</td>
		<td class="metro">Nöje</td>

		<td class="metro">716
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-25</td>
		<td class="metro">L?N</td>
	    <td class="metro number positive-number">31535.0</td>

		<td class="metro">Lön</td>
		<td class="metro">373
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-25</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>

	    <td class="metro number negative-number">40.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-24</td>

		<td class="metro">7-ELEVEN&nbsp151</td>
	    <td class="metro number negative-number">106.0</td>
		<td class="metro">Cigaretter</td>
		<td class="metro">682
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-05-24</td>
		<td class="metro">9415386167</td>
	    <td class="metro number negative-number">441.24</td>
		<td class="metro">Kläder</td>
		<td class="metro">717
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-05-24</td>
		<td class="metro">MEDIS&nbspKÖK&nbsp&</td>
	    <td class="metro number negative-number">89.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">715

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-24</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">40.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-24</td>
		<td class="metro">TACO&nbspBAR</td>
	    <td class="metro number negative-number">124.0</td>

		<td class="metro">Nöje</td>
		<td class="metro">714
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-23</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>

	    <td class="metro number negative-number">167.83</td>
		<td class="metro">Mat</td>
		<td class="metro">292
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-23</td>

		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">40.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-05-22</td>
		<td class="metro">ICA&nbspSUPERMAR</td>
	    <td class="metro number negative-number">282.43</td>
		<td class="metro">Mat</td>
		<td class="metro">317
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-05-22</td>
		<td class="metro">RESTAURANG&nbspR</td>
	    <td class="metro number negative-number">328.0</td>
		<td class="metro">Lön</td>
		<td class="metro">712

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-22</td>
		<td class="metro">SJ&nbspREGIONAL</td>
	    <td class="metro number negative-number">135.0</td>
		<td class="metro">Lön</td>
		<td class="metro">531

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-22</td>
		<td class="metro">SJ&nbspREGIONAL</td>
	    <td class="metro number negative-number">135.0</td>
		<td class="metro">Lön</td>
		<td class="metro">531

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-22</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">44.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-22</td>
		<td class="metro">WAYNES&nbspCOFFE</td>
	    <td class="metro number negative-number">34.0</td>

		<td class="metro">Lunch</td>
		<td class="metro">654
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-21</td>
		<td class="metro">LEVI&nbspS&nbspSTORE</td>

	    <td class="metro number positive-number">999.0</td>
		<td class="metro">Kläder</td>
		<td class="metro">708
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-21</td>

		<td class="metro">SJ&nbspREGIONAL</td>
	    <td class="metro number negative-number">135.0</td>
		<td class="metro">Lön</td>
		<td class="metro">531
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-05-21</td>
		<td class="metro">SJ&nbspREGIONAL</td>
	    <td class="metro number negative-number">135.0</td>
		<td class="metro">Lön</td>
		<td class="metro">531
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-05-21</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">44.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-20</td>
		<td class="metro">9415386167</td>
	    <td class="metro number negative-number">73.33</td>
		<td class="metro">Kläder</td>
		<td class="metro">717

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-20</td>
		<td class="metro">ÅHLENS</td>
	    <td class="metro number negative-number">700.0</td>
		<td class="metro">Kläder</td>
		<td class="metro">693

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-20</td>
		<td class="metro">ÅHLENS</td>
	    <td class="metro number negative-number">1499.0</td>
		<td class="metro">Kläder</td>
		<td class="metro">693

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-20</td>
		<td class="metro">ERIK&nbspLARSSON</td>
	    <td class="metro number positive-number">3000.0</td>
		<td class="metro">Sparkonto</td>
		<td class="metro">230

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-20</td>
		<td class="metro">ERIK&nbspLARSSON</td>
	    <td class="metro number positive-number">3000.0</td>
		<td class="metro">Sparkonto</td>
		<td class="metro">230

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-20</td>
		<td class="metro">PAYPAL&nbsp&nbspLEVI</td>
	    <td class="metro number negative-number">812.25</td>
		<td class="metro">Kläder</td>
		<td class="metro">709

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-19</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">115.95</td>
		<td class="metro">Mat</td>
		<td class="metro">292

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-19</td>
		<td class="metro">ICA&nbspSUPERMAR</td>
	    <td class="metro number negative-number">204.9</td>
		<td class="metro">Mat</td>
		<td class="metro">317

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-19</td>
		<td class="metro">LARSSON&nbspERIK</td>
	    <td class="metro number positive-number">2000.0</td>
		<td class="metro">Sparkonto</td>
		<td class="metro">361

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-19</td>
		<td class="metro">LEVI&nbspS&nbspSTORE</td>
	    <td class="metro number negative-number">1998.0</td>
		<td class="metro">Kläder</td>
		<td class="metro">708

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-18</td>
		<td class="metro">ESPRESSO&nbspHOU</td>
	    <td class="metro number negative-number">38.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">234

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-18</td>
		<td class="metro">PRESSBYRAN&nbsp8</td>
	    <td class="metro number negative-number">53.0</td>
		<td class="metro">Cigaretter</td>
		<td class="metro">678

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-18</td>
		<td class="metro">SL&nbspSKANSTULL</td>
	    <td class="metro number negative-number">790.0</td>
		<td class="metro">Transport</td>
		<td class="metro">540

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-16</td>
		<td class="metro">PAYPAL&nbsp&nbspTRAN</td>
	    <td class="metro number negative-number">278.75</td>
		<td class="metro">Nöje</td>
		<td class="metro">

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-14</td>
		<td class="metro">ARLANDA&nbspEXPR</td>
	    <td class="metro number negative-number">1100.0</td>
		<td class="metro">Lön</td>

		<td class="metro">69
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-14</td>
		<td class="metro">PRESSBYRAN&nbsp8</td>
	    <td class="metro number negative-number">106.0</td>

		<td class="metro">Cigaretter</td>
		<td class="metro">678
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-14</td>
		<td class="metro">REST&nbspGYLLENE</td>

	    <td class="metro number negative-number">300.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">488
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-14</td>

		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">58.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-05-13</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">321.74</td>
		<td class="metro">Mat</td>
		<td class="metro">292
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-05-12</td>
		<td class="metro">BAGPIPERS&nbspST</td>
	    <td class="metro number negative-number">460.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">120

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-12</td>
		<td class="metro">BÖNOR&nbsp&&nbspBLAD</td>
	    <td class="metro number negative-number">124.0</td>
		<td class="metro">Mat</td>

		<td class="metro">151
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-12</td>
		<td class="metro">GUNNARSONS&nbspS</td>
	    <td class="metro number negative-number">45.0</td>

		<td class="metro">Mat</td>
		<td class="metro">276
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-12</td>
		<td class="metro">ICA&nbspSUPERMAR</td>

	    <td class="metro number negative-number">216.02</td>
		<td class="metro">Mat</td>
		<td class="metro">317
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-12</td>

		<td class="metro">PRESSBYRAN&nbsp5</td>
	    <td class="metro number negative-number">53.0</td>
		<td class="metro">Cigaretter</td>
		<td class="metro">455
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-05-11</td>
		<td class="metro">BISHOPS&nbspARMS</td>
	    <td class="metro number negative-number">129.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">140
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-05-11</td>
		<td class="metro">SJ&nbspREGIONAL</td>
	    <td class="metro number negative-number">135.0</td>
		<td class="metro">Lön</td>
		<td class="metro">531

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-11</td>
		<td class="metro">SJ&nbspREGIONAL</td>
	    <td class="metro number negative-number">135.0</td>
		<td class="metro">Lön</td>
		<td class="metro">531

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-11</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">39.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-11</td>
		<td class="metro">WAYNES&nbspCOFFE</td>
	    <td class="metro number negative-number">106.0</td>

		<td class="metro">Lunch</td>
		<td class="metro">654
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-10</td>
		<td class="metro">SJ&nbspREGIONAL</td>

	    <td class="metro number negative-number">135.0</td>
		<td class="metro">Lön</td>
		<td class="metro">531
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-10</td>

		<td class="metro">SJ&nbspREGIONAL</td>
	    <td class="metro number negative-number">135.0</td>
		<td class="metro">Lön</td>
		<td class="metro">531
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-05-10</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">39.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-09</td>
		<td class="metro">PRESSBYRAN&nbsp8</td>
	    <td class="metro number negative-number">106.0</td>
		<td class="metro">Cigaretter</td>
		<td class="metro">678

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-09</td>
		<td class="metro">RESTAURANG&nbspK</td>
	    <td class="metro number negative-number">375.0</td>
		<td class="metro">Lön</td>
		<td class="metro">711

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-09</td>
		<td class="metro">SJ&nbspREGIONAL</td>
	    <td class="metro number negative-number">135.0</td>
		<td class="metro">Lön</td>
		<td class="metro">531

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-09</td>
		<td class="metro">SJ&nbspREGIONAL</td>
	    <td class="metro number negative-number">135.0</td>
		<td class="metro">Lön</td>
		<td class="metro">531

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-09</td>
		<td class="metro">SSP&nbspBURGER&nbspK</td>
	    <td class="metro number negative-number">55.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">718

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-09</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">39.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-08</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">172.21</td>

		<td class="metro">Mat</td>
		<td class="metro">292
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-08</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>

	    <td class="metro number negative-number">35.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-07</td>

		<td class="metro">ERIK&nbspLARSSON</td>
	    <td class="metro number positive-number">1500.0</td>
		<td class="metro">Sparkonto</td>
		<td class="metro">230
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-05-07</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">65.8</td>
		<td class="metro">Mat</td>
		<td class="metro">292
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-05-07</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">64.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-07</td>
		<td class="metro">SVENSEXA</td>
	    <td class="metro number negative-number">1500.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-05</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">368.67</td>
		<td class="metro">Mat</td>

		<td class="metro">292
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-05</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">106.0</td>

		<td class="metro">Mat</td>
		<td class="metro">292
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-04</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>

	    <td class="metro number negative-number">178.37</td>
		<td class="metro">Mat</td>
		<td class="metro">292
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-04</td>

		<td class="metro">SJ&nbspREGIONAL</td>
	    <td class="metro number negative-number">135.0</td>
		<td class="metro">Lön</td>
		<td class="metro">531
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-05-04</td>
		<td class="metro">SJ&nbspREGIONAL</td>
	    <td class="metro number negative-number">135.0</td>
		<td class="metro">Lön</td>
		<td class="metro">531
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-05-04</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">35.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-03</td>
		<td class="metro">STOCKHOLMS&nbspSTADS&nbspBOSTADS</td>
	    <td class="metro number negative-number">225.0</td>
		<td class="metro">Övrigt</td>
		<td class="metro">569

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-03</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">39.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-02</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">106.0</td>

		<td class="metro">Mat</td>
		<td class="metro">292
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-02</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>

	    <td class="metro number negative-number">100.99</td>
		<td class="metro">Mat</td>
		<td class="metro">292
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-02</td>

		<td class="metro">REST&nbspGYLLENE</td>
	    <td class="metro number negative-number">300.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">488
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-05-02</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">39.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-05-01</td>
		<td class="metro">HEADWEB</td>
	    <td class="metro number negative-number">239.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">284

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-30</td>
		<td class="metro">AVANZA&nbspBANK</td>
	    <td class="metro number negative-number">1000.0</td>
		<td class="metro">Sparkonto</td>
		<td class="metro">114

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-29</td>
		<td class="metro">AKADEMIKERNAS&nbsp&nbspA-KASSA</td>
	    <td class="metro number negative-number">90.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">720

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-29</td>
		<td class="metro">AKADEMIKERNAS&nbsp&nbspA-KASSA</td>
	    <td class="metro number negative-number">90.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">720

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-29</td>
		<td class="metro">BOSTADS&nbspAB&nbspGRINDSHAGE</td>
	    <td class="metro number negative-number">6140.0</td>
		<td class="metro">Hyra</td>
		<td class="metro">155

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-29</td>
		<td class="metro">HYRESGÄSTFÖRENINGEN,&nbspSTH</td>
	    <td class="metro number negative-number">240.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">311

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-29</td>
		<td class="metro">NORDEA&nbspFINANS&nbspSVERIGE&nbspAB</td>
	    <td class="metro number negative-number">1218.0</td>
		<td class="metro">Övrigt</td>
		<td class="metro">

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-29</td>
		<td class="metro">TELGE&nbspENERGI&nbspAB</td>
	    <td class="metro number negative-number">172.0</td>
		<td class="metro">Hushåll</td>

		<td class="metro">607
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-29</td>
		<td class="metro">TELIASONERA&nbspSVERIGE&nbspAB&nbspC</td>
	    <td class="metro number negative-number">201.0</td>

		<td class="metro">Hushåll</td>
		<td class="metro">609
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-28</td>
		<td class="metro">ARKEN&nbspBAR&nbsp&</td>

	    <td class="metro number negative-number">99.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">719
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-28</td>

		<td class="metro">ARKEN&nbspBAR&nbsp&</td>
	    <td class="metro number negative-number">163.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">719
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-04-28</td>
		<td class="metro">GUNNARSONS&nbspS</td>
	    <td class="metro number negative-number">45.0</td>
		<td class="metro">Mat</td>
		<td class="metro">276
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-04-28</td>
		<td class="metro">ICA&nbspSUPERMAR</td>
	    <td class="metro number negative-number">254.88</td>
		<td class="metro">Mat</td>
		<td class="metro">317

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-28</td>
		<td class="metro">PRESSBYRAN&nbsp8</td>
	    <td class="metro number negative-number">62.0</td>
		<td class="metro">Cigaretter</td>
		<td class="metro">678

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-28</td>
		<td class="metro">SF&nbspBIO&nbspFILMS</td>
	    <td class="metro number negative-number">54.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">680

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-27</td>
		<td class="metro">ENKLA&nbspVARDAG</td>
	    <td class="metro number negative-number">25.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">679

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-27</td>
		<td class="metro">KROGEN&nbspSOLDA</td>
	    <td class="metro number negative-number">158.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">710

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-27</td>
		<td class="metro">PRESSBYRAN&nbsp8</td>
	    <td class="metro number negative-number">106.0</td>
		<td class="metro">Cigaretter</td>
		<td class="metro">678

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-27</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">58.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-26</td>
		<td class="metro">AVANZA</td>
	    <td class="metro number negative-number">9000.0</td>

		<td class="metro">Sparkonto</td>
		<td class="metro">113
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-26</td>
		<td class="metro">BONUS</td>

	    <td class="metro number negative-number">6984.0</td>
		<td class="metro">Kattis</td>
		<td class="metro">152
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-26</td>

		<td class="metro">COM&nbspHEM&nbspAB</td>
	    <td class="metro number negative-number">179.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">701
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-04-26</td>
		<td class="metro">SET/INTERNET</td>
	    <td class="metro number negative-number">188.11</td>
		<td class="metro">Övrigt</td>
		<td class="metro">516
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-04-26</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">58.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-26</td>
		<td class="metro">TELE2&nbspSVERIGE&nbspAB&nbspATT:&nbspKU</td>
	    <td class="metro number negative-number">242.0</td>
		<td class="metro">Hushåll</td>

		<td class="metro">605
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-25</td>
		<td class="metro">54033106596</td>
	    <td class="metro number negative-number">2000.0</td>

		<td class="metro">Sparkonto</td>
		<td class="metro">16
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-25</td>
		<td class="metro">EPAYMENT&nbspSERVICE&nbspEUROPE</td>

	    <td class="metro number negative-number">148.0</td>
		<td class="metro">Övrigt</td>
		<td class="metro">
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-25</td>

		<td class="metro">L?N</td>
	    <td class="metro number positive-number">36909.0</td>
		<td class="metro">Lön</td>
		<td class="metro">373
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-04-25</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">58.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-24</td>
		<td class="metro">PAYPAL&nbsp&nbspREAD</td>
	    <td class="metro number negative-number">17.49</td>
		<td class="metro">Övrigt</td>
		<td class="metro">713

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-24</td>
		<td class="metro">PAYPAL&nbsp&nbspREAD</td>
	    <td class="metro number negative-number">11.87</td>
		<td class="metro">Övrigt</td>
		<td class="metro">713

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-23</td>
		<td class="metro">PRESSBYRAN&nbsp8</td>
	    <td class="metro number negative-number">106.0</td>
		<td class="metro">Cigaretter</td>
		<td class="metro">678

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-23</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">61.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-23</td>
		<td class="metro">SYSTEMBOLAGE</td>
	    <td class="metro number negative-number">323.0</td>

		<td class="metro">Systembolaget</td>
		<td class="metro">594
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-21</td>
		<td class="metro">7-ELEVEN&nbsp161</td>

	    <td class="metro number negative-number">69.0</td>
		<td class="metro">Cigaretter</td>
		<td class="metro">19
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-21</td>

		<td class="metro">PIG&nbspO&nbspWHISTL</td>
	    <td class="metro number negative-number">157.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">450
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-04-18</td>
		<td class="metro">PANINI&nbspSÖDER</td>
	    <td class="metro number negative-number">20.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">443

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-18</td>
		<td class="metro">SEA&nbspSUSHI</td>
	    <td class="metro number negative-number">180.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">705

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-17</td>
		<td class="metro">ESPRESSO&nbspHOU</td>
	    <td class="metro number negative-number">65.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">234

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-17</td>
		<td class="metro">KAFFEMASKINE</td>
	    <td class="metro number negative-number">115.0</td>
		<td class="metro">Mat</td>
		<td class="metro">338

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-17</td>
		<td class="metro">PRESSBYRAN&nbsp8</td>
	    <td class="metro number negative-number">106.0</td>
		<td class="metro">Cigaretter</td>
		<td class="metro">678

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-17</td>
		<td class="metro">RESTAURANGBO</td>
	    <td class="metro number negative-number">75.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">703

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-17</td>
		<td class="metro">SYSTEMBOLAGE</td>
	    <td class="metro number negative-number">333.0</td>
		<td class="metro">Systembolaget</td>
		<td class="metro">594

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-16</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">319.65</td>
		<td class="metro">Mat</td>
		<td class="metro">292

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-16</td>
		<td class="metro">SL&nbspSKANSTULL</td>
	    <td class="metro number negative-number">790.0</td>
		<td class="metro">Transport</td>
		<td class="metro">540

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-16</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">58.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-14</td>
		<td class="metro">LARSSON&nbspERIK</td>
	    <td class="metro number positive-number">2000.0</td>

		<td class="metro">Sparkonto</td>
		<td class="metro">361
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-13</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>

	    <td class="metro number negative-number">161.5</td>
		<td class="metro">Mat</td>
		<td class="metro">292
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-13</td>

		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">58.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-04-12</td>
		<td class="metro">7-ELEVEN&nbsp161</td>
	    <td class="metro number negative-number">106.0</td>
		<td class="metro">Cigaretter</td>
		<td class="metro">19
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-04-12</td>
		<td class="metro">SCANDINAVIAN</td>
	    <td class="metro number negative-number">55.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">706

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-12</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">58.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-11</td>
		<td class="metro">ICA&nbspSUPERMAR</td>
	    <td class="metro number negative-number">45.2</td>

		<td class="metro">Mat</td>
		<td class="metro">317
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-11</td>
		<td class="metro">REST&nbspGYLLENE</td>

	    <td class="metro number negative-number">47.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">488
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-11</td>

		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">58.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-04-11</td>
		<td class="metro">SYSTEMBOLAGE</td>
	    <td class="metro number negative-number">339.1</td>
		<td class="metro">Systembolaget</td>
		<td class="metro">594
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-04-10</td>
		<td class="metro">INFO&nbspARLANDA</td>
	    <td class="metro number negative-number">1100.0</td>
		<td class="metro">Lön</td>
		<td class="metro">704

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-10</td>
		<td class="metro">RISKORNET</td>
	    <td class="metro number negative-number">160.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">497

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-10</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">58.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-09</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">326.79</td>

		<td class="metro">Mat</td>
		<td class="metro">292
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-08</td>
		<td class="metro">REST&nbspHO&nbspS</td>

	    <td class="metro number negative-number">450.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">700
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-06</td>

		<td class="metro">TRANAN&nbspRESTA</td>
	    <td class="metro number negative-number">240.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">621
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-04-05</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">58.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-04</td>
		<td class="metro">PRESSBYRAN&nbsp8</td>
	    <td class="metro number negative-number">106.0</td>
		<td class="metro">Cigaretter</td>
		<td class="metro">678

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-04</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">64.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-03</td>
		<td class="metro">ICA&nbspSUPERMAR</td>
	    <td class="metro number negative-number">321.44</td>

		<td class="metro">Mat</td>
		<td class="metro">317
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-03</td>
		<td class="metro">PANINI&nbspSÖDER</td>

	    <td class="metro number negative-number">20.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">443
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-04-02</td>

		<td class="metro">BAGEL&nbspSTREET</td>
	    <td class="metro number negative-number">69.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">118
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-04-02</td>
		<td class="metro">GUNNARSONS&nbspS</td>
	    <td class="metro number negative-number">45.0</td>
		<td class="metro">Mat</td>
		<td class="metro">276
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-04-02</td>
		<td class="metro">PANINI&nbspSÖDER</td>
	    <td class="metro number negative-number">89.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">443

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-31</td>
		<td class="metro">ERIKDALS&nbspMIN</td>
	    <td class="metro number negative-number">106.0</td>
		<td class="metro">Cigaretter</td>
		<td class="metro">707

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-31</td>
		<td class="metro">HEADWEB</td>
	    <td class="metro number negative-number">229.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">284

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-31</td>
		<td class="metro">RESTAURANG&nbspB</td>
	    <td class="metro number negative-number">480.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">478

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-31</td>
		<td class="metro">SF&nbspBOKHANDEL</td>
	    <td class="metro number negative-number">238.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">521

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-30</td>
		<td class="metro">GRODAN&nbspSERGE</td>
	    <td class="metro number negative-number">300.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">702

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-30</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">58.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-29</td>
		<td class="metro">AKADEMIKERNAS&nbspERKÄNDA&nbspA-</td>
	    <td class="metro number negative-number">90.0</td>

		<td class="metro">Hushåll</td>
		<td class="metro">54
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-29</td>
		<td class="metro">AKADEMIKERNAS&nbspERKÄNDA&nbspA-</td>

	    <td class="metro number negative-number">90.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">54
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-29</td>

		<td class="metro">APPLE&nbspITUNES</td>
	    <td class="metro number negative-number">38.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">68
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-03-29</td>
		<td class="metro">BOSTADS&nbspAB&nbspGRINDSHAGE</td>
	    <td class="metro number negative-number">6140.0</td>
		<td class="metro">Hyra</td>
		<td class="metro">155
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-03-29</td>
		<td class="metro">ENKLA&nbspVARDAG</td>
	    <td class="metro number negative-number">25.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">679

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-29</td>
		<td class="metro">GRODAN&nbspSERGE</td>
	    <td class="metro number negative-number">49.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">702

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-29</td>
		<td class="metro">HYRESGÄSTFÖRENINGEN,&nbspSTH</td>
	    <td class="metro number negative-number">80.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">311

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-29</td>
		<td class="metro">RADIOTJÄNST&nbspI&nbspKIRUNA&nbspAB</td>
	    <td class="metro number negative-number">519.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">464

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-29</td>
		<td class="metro">REST&nbspGYLLENE</td>
	    <td class="metro number negative-number">600.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">488

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-29</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">58.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-29</td>
		<td class="metro">TELGE&nbspENERGI&nbspAB</td>
	    <td class="metro number negative-number">205.0</td>

		<td class="metro">Hushåll</td>
		<td class="metro">607
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-29</td>
		<td class="metro">TELIASONERA&nbspSVERIGE&nbspAB&nbspC</td>

	    <td class="metro number negative-number">211.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">609
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-28</td>

		<td class="metro">AVANZA&nbspBANK</td>
	    <td class="metro number negative-number">1000.0</td>
		<td class="metro">Sparkonto</td>
		<td class="metro">114
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-03-28</td>
		<td class="metro">COM&nbspHEM&nbspAB</td>
	    <td class="metro number negative-number">364.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">701
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-03-28</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">158.85</td>
		<td class="metro">Mat</td>
		<td class="metro">292

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-28</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">58.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-27</td>
		<td class="metro">7-ELEVEN&nbsp161</td>
	    <td class="metro number negative-number">106.0</td>

		<td class="metro">Cigaretter</td>
		<td class="metro">19
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-27</td>
		<td class="metro">ICA&nbspSUPERMAR</td>

	    <td class="metro number negative-number">322.84</td>
		<td class="metro">Mat</td>
		<td class="metro">317
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-27</td>

		<td class="metro">SCANDINAVIAN</td>
	    <td class="metro number negative-number">55.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">706
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-03-27</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">58.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-26</td>
		<td class="metro">54033106596</td>
	    <td class="metro number negative-number">10000.0</td>
		<td class="metro">Sparkonto</td>
		<td class="metro">16

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-26</td>
		<td class="metro">BONUS</td>
	    <td class="metro number negative-number">6675.0</td>
		<td class="metro">Kattis</td>
		<td class="metro">152

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-26</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">58.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-26</td>
		<td class="metro">TELE2&nbspSVERIGE&nbspAB&nbspATT:&nbspKU</td>
	    <td class="metro number negative-number">182.0</td>

		<td class="metro">Hushåll</td>
		<td class="metro">605
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-23</td>
		<td class="metro">L?N</td>

	    <td class="metro number positive-number">34219.0</td>
		<td class="metro">Lön</td>
		<td class="metro">373
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-23</td>

		<td class="metro">PRESSBYRAN&nbsp8</td>
	    <td class="metro number negative-number">106.0</td>
		<td class="metro">Cigaretter</td>
		<td class="metro">678
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-03-23</td>
		<td class="metro">SYSTEMBOLAGE</td>
	    <td class="metro number negative-number">341.0</td>
		<td class="metro">Systembolaget</td>
		<td class="metro">594
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-03-22</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">291.37</td>
		<td class="metro">Mat</td>
		<td class="metro">292

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-22</td>
		<td class="metro">REST&nbspGYLLENE</td>
	    <td class="metro number negative-number">300.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">488

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-22</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">58.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-21</td>
		<td class="metro">ERIK&nbspLARSSON</td>
	    <td class="metro number positive-number">87.06</td>

		<td class="metro">Sparkonto</td>
		<td class="metro">230
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-21</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>

	    <td class="metro number negative-number">58.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-20</td>

		<td class="metro">APPLE&nbspITUNES</td>
	    <td class="metro number negative-number">35.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">68
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-03-20</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">26.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-20</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">35.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-19</td>
		<td class="metro">7-ELEVEN&nbsp151</td>
	    <td class="metro number negative-number">106.0</td>

		<td class="metro">Cigaretter</td>
		<td class="metro">682
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-19</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>

	    <td class="metro number negative-number">58.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-18</td>

		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">307.02</td>
		<td class="metro">Mat</td>
		<td class="metro">292
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-03-17</td>
		<td class="metro">KONTANTEN&nbspFO</td>
	    <td class="metro number negative-number">1000.0</td>
		<td class="metro">Kontant</td>
		<td class="metro">353
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-03-17</td>
		<td class="metro">LARSSON&nbspERIK</td>
	    <td class="metro number positive-number">2000.0</td>
		<td class="metro">Sparkonto</td>
		<td class="metro">361

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-17</td>
		<td class="metro">PRESSBYRAN&nbsp8</td>
	    <td class="metro number negative-number">73.0</td>
		<td class="metro">Cigaretter</td>
		<td class="metro">678

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-16</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">171.07</td>
		<td class="metro">Mat</td>
		<td class="metro">292

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-16</td>
		<td class="metro">SJ&nbspREGIONAL</td>
	    <td class="metro number negative-number">135.0</td>
		<td class="metro">Lön</td>
		<td class="metro">531

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-16</td>
		<td class="metro">SJ&nbspREGIONAL</td>
	    <td class="metro number negative-number">135.0</td>
		<td class="metro">Lön</td>
		<td class="metro">531

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-16</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">35.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-15</td>
		<td class="metro">PRESSBYRAN&nbsp8</td>
	    <td class="metro number negative-number">106.0</td>

		<td class="metro">Cigaretter</td>
		<td class="metro">678
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-15</td>
		<td class="metro">SL&nbspSKANSTULL</td>

	    <td class="metro number negative-number">790.0</td>
		<td class="metro">Transport</td>
		<td class="metro">540
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-15</td>

		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">58.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-03-14</td>
		<td class="metro">GÖTGATANS&nbspSN</td>
	    <td class="metro number negative-number">290.0</td>
		<td class="metro">Övrigt</td>
		<td class="metro">699
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-03-14</td>
		<td class="metro">LARSSON&nbspERIK</td>
	    <td class="metro number positive-number">2000.0</td>
		<td class="metro">Sparkonto</td>
		<td class="metro">361

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-14</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">58.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-14</td>
		<td class="metro">SYSTEMBOLAGE</td>
	    <td class="metro number negative-number">339.0</td>

		<td class="metro">Systembolaget</td>
		<td class="metro">594
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-13</td>
		<td class="metro">ICA&nbspSUPERMAR</td>

	    <td class="metro number negative-number">123.11</td>
		<td class="metro">Mat</td>
		<td class="metro">317
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-13</td>

		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">58.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-03-12</td>
		<td class="metro">APPLE&nbspITUNES</td>
	    <td class="metro number negative-number">38.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">68
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-03-12</td>
		<td class="metro">JOLO&nbsp&&nbspCO</td>
	    <td class="metro number negative-number">345.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">333

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-12</td>
		<td class="metro">PRESSBYRAN&nbsp8</td>
	    <td class="metro number negative-number">106.0</td>
		<td class="metro">Cigaretter</td>
		<td class="metro">678

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-12</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">64.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-12</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">35.0</td>

		<td class="metro">Lunch</td>
		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-10</td>
		<td class="metro">SF&nbspBOKHANDEL</td>

	    <td class="metro number negative-number">254.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">521
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-10</td>

		<td class="metro">TAKEBACK&nbspAB</td>
	    <td class="metro number negative-number">183.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">697
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-03-09</td>
		<td class="metro">ARLANDA&nbspEXPR</td>
	    <td class="metro number negative-number">1100.0</td>
		<td class="metro">Lön</td>
		<td class="metro">69
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-03-09</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">150.83</td>
		<td class="metro">Mat</td>
		<td class="metro">292

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-09</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">39.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-08</td>
		<td class="metro">GUNNARSONS&nbspS</td>
	    <td class="metro number negative-number">62.0</td>

		<td class="metro">Mat</td>
		<td class="metro">276
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-08</td>
		<td class="metro">PRESSBYRAN&nbsp8</td>

	    <td class="metro number negative-number">106.0</td>
		<td class="metro">Cigaretter</td>
		<td class="metro">678
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-08</td>

		<td class="metro">SET/INTERNET</td>
	    <td class="metro number negative-number">440.32</td>
		<td class="metro">Övrigt</td>
		<td class="metro">516
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-03-08</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">58.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-07</td>
		<td class="metro">HEADWEB</td>
	    <td class="metro number negative-number">239.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">284

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-07</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">255.25</td>
		<td class="metro">Mat</td>
		<td class="metro">292

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-07</td>
		<td class="metro">SJ&nbspREGIONAL</td>
	    <td class="metro number negative-number">135.0</td>
		<td class="metro">Lön</td>
		<td class="metro">531

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-07</td>
		<td class="metro">SJ&nbspREGIONAL</td>
	    <td class="metro number negative-number">135.0</td>
		<td class="metro">Lön</td>
		<td class="metro">531

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-07</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">32.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-07</td>
		<td class="metro">STRIKE</td>
	    <td class="metro number negative-number">89.0</td>

		<td class="metro">Lunch</td>
		<td class="metro">577
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-06</td>
		<td class="metro">REST&nbspGYLLENE</td>

	    <td class="metro number negative-number">600.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">488
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-06</td>

		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">58.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-03-05</td>
		<td class="metro">JOLO&nbsp&&nbspCO</td>
	    <td class="metro number negative-number">444.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">333

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-05</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">58.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-04</td>
		<td class="metro">APPLE&nbspITUNES</td>
	    <td class="metro number negative-number">165.0</td>

		<td class="metro">Nöje</td>
		<td class="metro">68
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-03</td>
		<td class="metro">7-ELEVEN&nbsp161</td>

	    <td class="metro number negative-number">98.0</td>
		<td class="metro">Cigaretter</td>
		<td class="metro">19
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-03</td>

		<td class="metro">ESPRESSO&nbspHOU</td>
	    <td class="metro number negative-number">83.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">234
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-03-03</td>
		<td class="metro">HARGENGET</td>
	    <td class="metro number negative-number">550.0</td>
		<td class="metro">Övrigt</td>
		<td class="metro">281
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-03-03</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">229.17</td>
		<td class="metro">Mat</td>
		<td class="metro">292

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-03</td>
		<td class="metro">SYSTEMBOLAGE</td>
	    <td class="metro number negative-number">367.0</td>
		<td class="metro">Systembolaget</td>
		<td class="metro">594

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-02</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">151.67</td>
		<td class="metro">Mat</td>
		<td class="metro">292

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-02</td>
		<td class="metro">RISKORNET</td>
	    <td class="metro number negative-number">160.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">497

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-02</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">39.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-01</td>
		<td class="metro">KONTANTEN&nbspST</td>
	    <td class="metro number negative-number">400.0</td>

		<td class="metro">Kontant</td>
		<td class="metro">698
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-03-01</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>

	    <td class="metro number negative-number">58.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-29</td>

		<td class="metro">BONUS</td>
	    <td class="metro number negative-number">5184.0</td>
		<td class="metro">Kattis</td>
		<td class="metro">152
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-02-29</td>
		<td class="metro">ERIK&nbspLARSSON</td>
	    <td class="metro number positive-number">2000.0</td>
		<td class="metro">Sparkonto</td>
		<td class="metro">230
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-02-29</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">266.53</td>
		<td class="metro">Mat</td>
		<td class="metro">292

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-29</td>
		<td class="metro">PRESSBYRAN&nbsp8</td>
	    <td class="metro number negative-number">106.0</td>
		<td class="metro">Cigaretter</td>
		<td class="metro">678

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-29</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">58.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-28</td>
		<td class="metro">AKADEMIKERNAS&nbspERKÄNDA&nbspA-</td>
	    <td class="metro number negative-number">90.0</td>

		<td class="metro">Hushåll</td>
		<td class="metro">54
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-28</td>
		<td class="metro">AKADEMIKERNAS&nbspERKÄNDA&nbspA-</td>

	    <td class="metro number negative-number">90.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">54
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-28</td>

		<td class="metro">AVANZA&nbspBANK</td>
	    <td class="metro number negative-number">1000.0</td>
		<td class="metro">Sparkonto</td>
		<td class="metro">114
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-02-28</td>
		<td class="metro">BOSTADS&nbspAB&nbspGRINDSHAGE</td>
	    <td class="metro number negative-number">6140.0</td>
		<td class="metro">Hyra</td>
		<td class="metro">155
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-02-28</td>
		<td class="metro">CENTRALA&nbspSTUDIESTÖDSNÄMN</td>
	    <td class="metro number negative-number">1703.0</td>
		<td class="metro">CSN</td>
		<td class="metro">185

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-28</td>
		<td class="metro">CENTRALA&nbspSTUDIESTÖDSNÄMN</td>
	    <td class="metro number negative-number">2334.0</td>
		<td class="metro">CSN</td>

		<td class="metro">185
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-28</td>
		<td class="metro">CENTRALA&nbspSTUDIESTÖDSNÄMN</td>
	    <td class="metro number negative-number">5085.0</td>

		<td class="metro">CSN</td>
		<td class="metro">185
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-28</td>
		<td class="metro">ENKLA&nbspVARDAG</td>

	    <td class="metro number negative-number">25.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">679
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-28</td>

		<td class="metro">FOLKSAM</td>
	    <td class="metro number negative-number">1333.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">248
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-02-28</td>
		<td class="metro">FORTUM&nbspMARKETS&nbspAB&nbspKUNDRE</td>
	    <td class="metro number negative-number">291.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">255
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-02-28</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">58.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-28</td>
		<td class="metro">TELE2&nbspSVERIGE&nbspAB&nbspATT:&nbspKU</td>
	    <td class="metro number negative-number">176.0</td>
		<td class="metro">Hushåll</td>

		<td class="metro">605
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-28</td>
		<td class="metro">TELGE&nbspENERGI&nbspAB</td>
	    <td class="metro number negative-number">197.0</td>

		<td class="metro">Hushåll</td>
		<td class="metro">607
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-28</td>
		<td class="metro">TELIASONERA&nbspSVERIGE&nbspAB&nbspC</td>

	    <td class="metro number negative-number">276.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">609
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-27</td>

		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">58.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-02-26</td>
		<td class="metro">APPLE&nbspITUNES</td>
	    <td class="metro number negative-number">130.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">68
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-02-24</td>
		<td class="metro">ÅHLENS</td>
	    <td class="metro number negative-number">1495.0</td>
		<td class="metro">Kläder</td>
		<td class="metro">693

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-24</td>
		<td class="metro">APPLE&nbspITUNES</td>
	    <td class="metro number negative-number">14.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">68

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-24</td>
		<td class="metro">L?N</td>
	    <td class="metro number positive-number">32190.0</td>
		<td class="metro">Lön</td>
		<td class="metro">373

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-24</td>
		<td class="metro">PRESSBYRAN&nbsp8</td>
	    <td class="metro number negative-number">106.0</td>
		<td class="metro">Cigaretter</td>
		<td class="metro">678

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-24</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">32.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-24</td>
		<td class="metro">SYSTEMBOLAGE</td>
	    <td class="metro number negative-number">89.0</td>

		<td class="metro">Systembolaget</td>
		<td class="metro">594
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-23</td>
		<td class="metro">SCANDINAVIAN</td>

	    <td class="metro number negative-number">55.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-23</td>

		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">32.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-02-22</td>
		<td class="metro">7-ELEVEN&nbsp151</td>
	    <td class="metro number negative-number">106.0</td>
		<td class="metro">Cigaretter</td>
		<td class="metro">682
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-02-22</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">239.66</td>
		<td class="metro">Mat</td>
		<td class="metro">292

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-22</td>
		<td class="metro">REST&nbspGYLLENE</td>
	    <td class="metro number negative-number">600.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">488

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-22</td>
		<td class="metro">VETE-KATTEN</td>
	    <td class="metro number negative-number">456.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">692

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-21</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">32.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-20</td>
		<td class="metro">JOLO&nbsp&&nbspCO</td>
	    <td class="metro number negative-number">278.0</td>

		<td class="metro">Nöje</td>
		<td class="metro">333
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-20</td>
		<td class="metro">LARSSON&nbspERIK</td>

	    <td class="metro number positive-number">2000.0</td>
		<td class="metro">Sparkonto</td>
		<td class="metro">361
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-19</td>

		<td class="metro">ICA&nbspSUPERMAR</td>
	    <td class="metro number negative-number">236.87</td>
		<td class="metro">Mat</td>
		<td class="metro">317
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-02-17</td>
		<td class="metro">7-ELEVEN&nbsp151</td>
	    <td class="metro number negative-number">106.0</td>
		<td class="metro">Cigaretter</td>
		<td class="metro">682
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-02-17</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">326.75</td>
		<td class="metro">Mat</td>
		<td class="metro">292

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-17</td>
		<td class="metro">REST&nbspGYLLENE</td>
	    <td class="metro number negative-number">76.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">488

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-17</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">39.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-16</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">39.0</td>

		<td class="metro">Lunch</td>
		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-15</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>

	    <td class="metro number negative-number">104.85</td>
		<td class="metro">Mat</td>
		<td class="metro">292
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-15</td>

		<td class="metro">SIGURDSGATAN</td>
	    <td class="metro number negative-number">78.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">694
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-02-15</td>
		<td class="metro">SJ&nbspREGIONAL</td>
	    <td class="metro number negative-number">135.0</td>
		<td class="metro">Lön</td>
		<td class="metro">531
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-02-15</td>
		<td class="metro">SJ&nbspREGIONAL</td>
	    <td class="metro number negative-number">135.0</td>
		<td class="metro">Lön</td>
		<td class="metro">531

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-15</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">32.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-14</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">113.57</td>

		<td class="metro">Mat</td>
		<td class="metro">292
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-14</td>
		<td class="metro">LARSSON&nbspERIK</td>

	    <td class="metro number positive-number">2000.0</td>
		<td class="metro">Sparkonto</td>
		<td class="metro">361
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-14</td>

		<td class="metro">SL&nbspSKANSTULL</td>
	    <td class="metro number negative-number">790.0</td>
		<td class="metro">Transport</td>
		<td class="metro">540
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-02-14</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">64.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-13</td>
		<td class="metro">JOLO&nbsp&&nbspCO</td>
	    <td class="metro number negative-number">45.0</td>
		<td class="metro">Nöje</td>

		<td class="metro">333
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-13</td>
		<td class="metro">JOLO&nbsp&&nbspCO</td>
	    <td class="metro number negative-number">64.0</td>

		<td class="metro">Nöje</td>
		<td class="metro">333
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-13</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>

	    <td class="metro number negative-number">64.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-11</td>

		<td class="metro">FOLKTANDVARD</td>
	    <td class="metro number negative-number">1095.0</td>
		<td class="metro">Övrigt</td>
		<td class="metro">250
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-02-11</td>
		<td class="metro">GUNNARSONS&nbspS</td>
	    <td class="metro number negative-number">48.0</td>
		<td class="metro">Mat</td>
		<td class="metro">276
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-02-11</td>
		<td class="metro">ICA&nbspSUPERMAR</td>
	    <td class="metro number negative-number">168.29</td>
		<td class="metro">Mat</td>
		<td class="metro">317

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-11</td>
		<td class="metro">SYSTEMBOLAGE</td>
	    <td class="metro number negative-number">272.0</td>
		<td class="metro">Systembolaget</td>
		<td class="metro">594

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-10</td>
		<td class="metro">APPLE&nbspITUNES</td>
	    <td class="metro number negative-number">7.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">68

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-10</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">81.13</td>
		<td class="metro">Mat</td>
		<td class="metro">292

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-10</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">39.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-09</td>
		<td class="metro">ESPRESSO&nbspHOU</td>
	    <td class="metro number negative-number">76.0</td>

		<td class="metro">Lunch</td>
		<td class="metro">234
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-09</td>
		<td class="metro">GUNNARSONS&nbspS</td>

	    <td class="metro number negative-number">45.0</td>
		<td class="metro">Mat</td>
		<td class="metro">276
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-09</td>

		<td class="metro">ICA&nbspSUPERMAR</td>
	    <td class="metro number negative-number">94.25</td>
		<td class="metro">Mat</td>
		<td class="metro">317
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-02-09</td>
		<td class="metro">PAYPAL&nbsp&nbspPASS</td>
	    <td class="metro number negative-number">148.89</td>
		<td class="metro">Övrigt</td>
		<td class="metro">

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-09</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">58.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-08</td>
		<td class="metro">ARLANDA&nbspEXPR</td>
	    <td class="metro number negative-number">1050.0</td>

		<td class="metro">Lön</td>
		<td class="metro">69
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-08</td>
		<td class="metro">BELGOBAREN</td>

	    <td class="metro number negative-number">156.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">695
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-08</td>

		<td class="metro">BISTRO&nbspBOHEM</td>
	    <td class="metro number negative-number">340.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">141
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-02-08</td>
		<td class="metro">PRESSBYRAN&nbsp8</td>
	    <td class="metro number negative-number">106.0</td>
		<td class="metro">Cigaretter</td>
		<td class="metro">678
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-02-08</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">29.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-08</td>
		<td class="metro">VETE-KATTEN</td>
	    <td class="metro number negative-number">520.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">692

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-07</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">77.85</td>
		<td class="metro">Mat</td>
		<td class="metro">292

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-07</td>
		<td class="metro">REST&nbspGYLLENE</td>
	    <td class="metro number negative-number">600.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">488

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-07</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">49.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-06</td>
		<td class="metro">SJ&nbspREGIONAL</td>
	    <td class="metro number negative-number">244.0</td>

		<td class="metro">Lön</td>
		<td class="metro">531
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-06</td>
		<td class="metro">SJ&nbspREGIONAL</td>

	    <td class="metro number negative-number">244.0</td>
		<td class="metro">Lön</td>
		<td class="metro">531
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-06</td>

		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">64.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-02-05</td>
		<td class="metro">APPLE&nbspITUNES</td>
	    <td class="metro number negative-number">599.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">68
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-02-05</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">288.97</td>
		<td class="metro">Mat</td>
		<td class="metro">292

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-04</td>
		<td class="metro">HEADWEB</td>
	    <td class="metro number negative-number">239.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">284

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-03</td>
		<td class="metro">7-ELEVEN&nbsp151</td>
	    <td class="metro number negative-number">106.0</td>
		<td class="metro">Cigaretter</td>
		<td class="metro">682

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-03</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">146.97</td>
		<td class="metro">Mat</td>
		<td class="metro">292

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-03</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">64.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-02</td>
		<td class="metro">SCANDINAVIAN</td>
	    <td class="metro number negative-number">55.0</td>

		<td class="metro">Lunch</td>
		<td class="metro">
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-02</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>

	    <td class="metro number negative-number">39.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-02-02</td>

		<td class="metro">SYSTEMBOLAGE</td>
	    <td class="metro number negative-number">353.0</td>
		<td class="metro">Systembolaget</td>
		<td class="metro">594
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-02-01</td>
		<td class="metro">FOLKTANDVARD</td>
	    <td class="metro number negative-number">540.0</td>
		<td class="metro">Övrigt</td>
		<td class="metro">250
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-02-01</td>
		<td class="metro">PANINI&nbspSÖDER</td>
	    <td class="metro number negative-number">95.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">443

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-31</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">64.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-31</td>
		<td class="metro">TEXAS&nbspBURGER</td>
	    <td class="metro number negative-number">246.0</td>

		<td class="metro">Nöje</td>
		<td class="metro">611
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-30</td>
		<td class="metro">AKADEMIKERNAS&nbspERKÄNDA&nbspA-</td>

	    <td class="metro number negative-number">90.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">54
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-30</td>

		<td class="metro">AVANZA&nbspBANK</td>
	    <td class="metro number negative-number">1000.0</td>
		<td class="metro">Sparkonto</td>
		<td class="metro">114
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-01-30</td>
		<td class="metro">ENKLA&nbspVARDAG</td>
	    <td class="metro number negative-number">25.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">679
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-01-30</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">98.0</td>
		<td class="metro">Mat</td>
		<td class="metro">292

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-30</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">194.56</td>
		<td class="metro">Mat</td>
		<td class="metro">292

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-30</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">64.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-30</td>
		<td class="metro">TELGE&nbspENERGI&nbspAB</td>
	    <td class="metro number negative-number">187.0</td>

		<td class="metro">Hushåll</td>
		<td class="metro">607
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-27</td>
		<td class="metro">54033106596</td>

	    <td class="metro number negative-number">3000.0</td>
		<td class="metro">Sparkonto</td>
		<td class="metro">16
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-27</td>

		<td class="metro">AVANZA</td>
	    <td class="metro number negative-number">6000.0</td>
		<td class="metro">Sparkonto</td>
		<td class="metro">113
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-01-27</td>
		<td class="metro">BONUS</td>
	    <td class="metro number negative-number">7893.0</td>
		<td class="metro">Kattis</td>
		<td class="metro">152
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-01-27</td>
		<td class="metro">PRESSBYRAN&nbsp8</td>
	    <td class="metro number negative-number">49.0</td>
		<td class="metro">Cigaretter</td>
		<td class="metro">678

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-27</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">64.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-26</td>
		<td class="metro">AKADEMIKERNAS&nbspERKÄNDA&nbspA-</td>
	    <td class="metro number negative-number">90.0</td>

		<td class="metro">Hushåll</td>
		<td class="metro">54
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-26</td>
		<td class="metro">APPLE&nbspITUNES</td>

	    <td class="metro number negative-number">105.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">68
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-26</td>

		<td class="metro">BOSTADS&nbspAB&nbspGRINDSHAGE</td>
	    <td class="metro number negative-number">6140.0</td>
		<td class="metro">Hyra</td>
		<td class="metro">155
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-01-26</td>
		<td class="metro">HSB&nbspSTOCKHOLM&nbspEK&nbspFÖR&nbspMED</td>
	    <td class="metro number negative-number">250.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">696

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-26</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">64.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-26</td>
		<td class="metro">TELE2&nbspSVERIGE&nbspAB&nbspATT:&nbspKU</td>
	    <td class="metro number negative-number">203.0</td>

		<td class="metro">Hushåll</td>
		<td class="metro">605
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-26</td>
		<td class="metro">TELIASONERA&nbspSVERIGE&nbspAB&nbspC</td>

	    <td class="metro number negative-number">311.0</td>
		<td class="metro">Hushåll</td>
		<td class="metro">609
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-25</td>

		<td class="metro">7-ELEVEN&nbsp151</td>
	    <td class="metro number negative-number">106.0</td>
		<td class="metro">Cigaretter</td>
		<td class="metro">682
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-01-25</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">117.05</td>
		<td class="metro">Mat</td>
		<td class="metro">292
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-01-25</td>
		<td class="metro">L?N</td>
	    <td class="metro number positive-number">33660.0</td>
		<td class="metro">Lön</td>
		<td class="metro">

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-25</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">54.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">574
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-24</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">58.0</td>

		<td class="metro">Lunch</td>
		<td class="metro">
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-23</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>

	    <td class="metro number negative-number">64.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-23</td>

		<td class="metro">SYSTEMBOLAGE</td>
	    <td class="metro number negative-number">335.0</td>
		<td class="metro">Systembolaget</td>
		<td class="metro">
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-01-22</td>
		<td class="metro">APPLE&nbspITUNES</td>
	    <td class="metro number negative-number">299.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-22</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">330.34</td>
		<td class="metro">Mat</td>
		<td class="metro">

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-20</td>
		<td class="metro">7-ELEVEN&nbsp151</td>
	    <td class="metro number negative-number">98.0</td>
		<td class="metro">Cigaretter</td>

		<td class="metro">682
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-20</td>
		<td class="metro">ICA&nbspSUPERMAR</td>
	    <td class="metro number negative-number">208.9</td>

		<td class="metro">Mat</td>
		<td class="metro">
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-20</td>
		<td class="metro">PANINI&nbspSÖDER</td>

	    <td class="metro number negative-number">20.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-20</td>

		<td class="metro">SUSHI&nbspYAMA</td>
	    <td class="metro number negative-number">89.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">683
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-01-19</td>
		<td class="metro">ERIK&nbspLARSSON</td>
	    <td class="metro number positive-number">3000.0</td>
		<td class="metro">Sparkonto</td>
		<td class="metro">

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-19</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">116.21</td>
		<td class="metro">Mat</td>
		<td class="metro">

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-19</td>
		<td class="metro">REST&nbspGYLLENE</td>
	    <td class="metro number negative-number">600.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-19</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">58.0</td>

		<td class="metro">Lunch</td>
		<td class="metro">
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-18</td>
		<td class="metro">MASTER&nbspANDER</td>

	    <td class="metro number negative-number">850.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-18</td>

		<td class="metro">REST&nbspGYLLENE</td>
	    <td class="metro number negative-number">54.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-01-18</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">58.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-17</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">64.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-16</td>
		<td class="metro">PRESSBYRAN&nbsp8</td>
	    <td class="metro number negative-number">110.0</td>

		<td class="metro">Lunch</td>
		<td class="metro">
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-16</td>
		<td class="metro">SL&nbspSKANSTULL</td>

	    <td class="metro number negative-number">790.0</td>
		<td class="metro">Transport</td>
		<td class="metro">
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-16</td>

		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">32.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-01-16</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">58.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-15</td>
		<td class="metro">HEADWEB</td>
	    <td class="metro number negative-number">239.0</td>
		<td class="metro">Nöje</td>

		<td class="metro">
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-14</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">349.99</td>

		<td class="metro">Mat</td>
		<td class="metro">
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-13</td>
		<td class="metro">HEADWEB</td>

	    <td class="metro number negative-number">229.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-12</td>

		<td class="metro">LOUIS&nbspJAZZKL</td>
	    <td class="metro number negative-number">85.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">681
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-01-12</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">58.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-11</td>
		<td class="metro">ICA&nbspSUPERMAR</td>
	    <td class="metro number negative-number">122.5</td>
		<td class="metro">Mat</td>
		<td class="metro">

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-11</td>
		<td class="metro">REST&nbspGYLLENE</td>
	    <td class="metro number negative-number">14.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-11</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">64.0</td>

		<td class="metro">Lunch</td>
		<td class="metro">
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-11</td>
		<td class="metro">SYSTEMBOLAGE</td>

	    <td class="metro number negative-number">353.0</td>
		<td class="metro">Systembolaget</td>
		<td class="metro">
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-10</td>

		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">64.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">
	  </tr>

	  <tr class="metro">
	    <td class="metro">2012-01-09</td>
		<td class="metro">APPLE&nbspITUNES</td>
	    <td class="metro number negative-number">7.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-09</td>
		<td class="metro">ARLANDA&nbspEXPR</td>
	    <td class="metro number negative-number">1050.0</td>
		<td class="metro">Lön</td>
		<td class="metro">

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-09</td>
		<td class="metro">RISKORNET</td>
	    <td class="metro number negative-number">160.0</td>
		<td class="metro">Lunch</td>

		<td class="metro">
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-09</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">32.0</td>

		<td class="metro">Lunch</td>
		<td class="metro">
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-09</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>

	    <td class="metro number negative-number">26.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-08</td>

		<td class="metro">APPLE&nbspCOMPUT</td>
	    <td class="metro number negative-number">808.0</td>
		<td class="metro">Övrigt</td>
		<td class="metro">
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-01-08</td>
		<td class="metro">ICA&nbspSUPERMAR</td>
	    <td class="metro number negative-number">273.59</td>
		<td class="metro">Mat</td>
		<td class="metro">

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-06</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">196.47</td>
		<td class="metro">Mat</td>
		<td class="metro">

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-04</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">34.95</td>
		<td class="metro">Mat</td>

		<td class="metro">
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-04</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">63.0</td>

		<td class="metro">Lunch</td>
		<td class="metro">
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-03</td>
		<td class="metro">APPLE&nbspITUNES</td>

	    <td class="metro number negative-number">15.0</td>
		<td class="metro">Nöje</td>
		<td class="metro">
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-03</td>

		<td class="metro">PRESSBYRAN&nbsp8</td>
	    <td class="metro number negative-number">98.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">
	  </tr>
	  <tr class="metro">

	    <td class="metro">2012-01-03</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">67.0</td>
		<td class="metro">Lunch</td>
		<td class="metro">

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-02</td>
		<td class="metro">HEMKÖP&nbspSTHLM</td>
	    <td class="metro number negative-number">235.82</td>
		<td class="metro">Mat</td>
		<td class="metro">

	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-02</td>
		<td class="metro">JULKLAPP</td>
	    <td class="metro number positive-number">1600.0</td>
		<td class="metro">Övrigt</td>

		<td class="metro">
	  </tr>
	  <tr class="metro">
	    <td class="metro">2012-01-02</td>
		<td class="metro">STORE&nbsp&&nbspCOFF</td>
	    <td class="metro number negative-number">35.0</td>

		<td class="metro">Lunch</td>
		<td class="metro">
	  </tr>
	</tbody>
	</table>'