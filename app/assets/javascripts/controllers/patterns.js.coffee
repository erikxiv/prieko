# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
	$('#_Patterns').click ->
		changeTab($(this))
	window.spa.changeTab.Patterns = -> changeTab($("#_Patterns"))

# Change content when header menu item is clicked
changeTab = (menuElement) ->
	# Change content
	$('#content').html(fakePatternsHtml)

fakePatternsHtml = '	<table class="metro">
	  <tr class="metro">
	    <th class="metro">Pattern</th>
	    <th class="metro">Category</th>
	  </tr>
	  <tr class="metro">
	    <td class="metro number negative-number"></td>
	    <td class="metro">Lön</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">0135640084</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">035314999610</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">1371 KONTANT</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">16145 7-ELEV</td>
	    <td class="metro">Cigaretter</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">17107 7-ELEV</td>
	    <td class="metro">Cigaretter</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">18116 7-ELEV</td>
	    <td class="metro">Cigaretter</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">21128 7-ELEV</td>
	    <td class="metro">Cigaretter</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">2126629807</td>
	    <td class="metro">Transport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">212-METROCAR</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">2 RUM OCH KO</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">310 ÅHL NS S</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">320 ÅHLENS C</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">33100 TAMPER</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">480-5058855</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">498924447350</td>
	    <td class="metro">Transport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">54033106596</td>
	    <td class="metro">Sparkonto</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">630-241-6800</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">7812180300</td>
	    <td class="metro">Kattis</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">7-ELEVEN 151</td>
	    <td class="metro">Cigaretter</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">7-ELEVEN 161</td>
	    <td class="metro">Cigaretter</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">7 ELEVEN 170</td>
	    <td class="metro">Cigaretter</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">7-ELEVEN 171</td>
	    <td class="metro">Cigaretter</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">7-ELEVEN 181</td>
	    <td class="metro">Cigaretter</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">7-ELEVEN 191</td>
	    <td class="metro">Cigaretter</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">7-ELEVEN 411</td>
	    <td class="metro">Cigaretter</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">7-ELEVEN 421</td>
	    <td class="metro">Cigaretter</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">7-ELEVEN 422</td>
	    <td class="metro">Cigaretter</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">800-7433868</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">81001 PRESSB</td>
	    <td class="metro">Cigaretter</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">8106 PRESSBY</td>
	    <td class="metro">Cigaretter</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">8110 PRESSBY</td>
	    <td class="metro">Cigaretter</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">8141 PRESSBY</td>
	    <td class="metro">Cigaretter</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">8174 PRESSBY</td>
	    <td class="metro">Cigaretter</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">81 ANS SPEL</td>
	    <td class="metro">Cigaretter</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">8507 PRESSBY</td>
	    <td class="metro">Cigaretter</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">8810 PRESSBY</td>
	    <td class="metro">Cigaretter</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">9415386167</td>
	    <td class="metro">Kläder</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">949-420-0697</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">95505745069</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AB DAGENS NYHETER C/O UP</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ÅBERG S</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ABO</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AB STORSTOCK</td>
	    <td class="metro">Transport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AB SVENSK BILPROVNING</td>
	    <td class="metro">Transport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ACNE JEANS B</td>
	    <td class="metro">Kläder</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ACNE STUDIO</td>
	    <td class="metro">Kläder</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ADIDAS CS ST</td>
	    <td class="metro">Kläder</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AGNES DOP</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ÅHLENS</td>
	    <td class="metro">Kläder</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ÅHLENS CAFE</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ÅHLéNS CITY</td>
	    <td class="metro">Kläder</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ÅHLENS FRIDH</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ÅHLéNS SKANS</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AIG TRAVEL I</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AKADEMIBOKH</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AKADEMIKERNAS  A-KASSA</td>
	    <td class="metro">Hushåll</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AKADEMIKERNAS ERKäNDA A-</td>
	    <td class="metro">Hushåll</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AKADEMIKERNAS ERKÄNDA A-</td>
	    <td class="metro">Hushåll</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ALLER MAGAZINE AB</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ALLER MEDIA AB</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ALLERS FöRLAG AB ALLERS</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ALLMENNA GAL</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ALPHA RETAIL</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AMAZON MKTPL</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AMICA KABYSS</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AMICA LINGON</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AMZN COM/BIL</td>
	    <td class="metro">Lön</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ANETTE</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">APOTEKET SäL</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">APOTEK HJÄRT</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">APPLE CENTER</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">APPLE COMPUT</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">APPLE ITUNES</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ARKEN BAR &amp;</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ARLANDA EXPR</td>
	    <td class="metro">Lön</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ARLANDA/PARK</td>
	    <td class="metro">Lön</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ARLANDA WALK</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ASIAN SUSHI</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ÅT EKOLOGISKA RåVAROR AB</td>
	    <td class="metro">Mat</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ATG OMBUD NR</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ATM</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AULOS MUSIK</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT06:40 UTL</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT09-17</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT09-46</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT10-21</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT10-24</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT11-37</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT11-58</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT11-59</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT12-07</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT12-15</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT12-42</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT12-43</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT12-45</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT13-03</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT13-05</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT13-07</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT13-08</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT13-40</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT13-59</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT14-49</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT15-28</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT15-29</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT16-06</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT16-08</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT16-58</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT17-04</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT17:32</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT17-35</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT17-44</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT17-59</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT18-07</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT18:55</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT19-08</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT19-18</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT19-37</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AUT22-14</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AVANZA</td>
	    <td class="metro">Sparkonto</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AVANZA BANK</td>
	    <td class="metro">Sparkonto</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AVD TRYSIL</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">AWESOME RAGS</td>
	    <td class="metro">Kläder</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BABYLON</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BAGEL STREET</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BAGPIPERS IN</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BAGPIPERS ST</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BAKERSFIELD</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BALLBREAKER</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BANK På TFN</td>
	    <td class="metro">Sparkonto</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BARA BISTRO</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BAR CENTRAL</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BARISTA NK</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BEIJER BYGGM</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BEIJING8BETA</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BELGOBAREN</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BELLA NOTTE</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BEOLINK</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BERGIANSKA T</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BERNS SALONG</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BETALSERV. INTERNET 2008</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BETALSERV. INTERNET 2009</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BIG SUR</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BILERSäTTN.</td>
	    <td class="metro">Transport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BILJARDPALAT</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BILJ AUTOMAT</td>
	    <td class="metro">Lön</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BIOPALATSET</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BISHOP ARMS</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BISHOPS ARMS</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BISTRO BOHEM</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BK BAR OCH K</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BLOCKET</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BLOMMS BLOMM</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BLOMSTERRING</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BLUEBOX GIFT</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BOKIA</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BOKILUR</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BOK-SKOTTEN</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BöNOR &amp; BLAD</td>
	    <td class="metro">Mat</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BÖNOR &amp; BLAD</td>
	    <td class="metro">Mat</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BONUS</td>
	    <td class="metro">Kattis</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BONUS+FLYG</td>
	    <td class="metro">Kattis</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BOOMERANG BA</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BOSTADS AB GRINDSHAGE</td>
	    <td class="metro">Hyra</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BOULE1 AB</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BREDBAR K K</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BREDBAR KöK</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BREDBAR KÖK</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BR-LEKSAKER</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BROBERGS TOB</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BRUUNS BAZAA</td>
	    <td class="metro">Kläder</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BUELLTON</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BURGER KING</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">BYGGMAX/1316</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CA-BA GRILLE</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CAFE 11350</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CAFE BLåBäR</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CAFE BLÅBÄR</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CAFE CHATEAU</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CAFE CREEM</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CAFE DAVID B</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CAFE FIX</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CAFE GRäNDEN</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CAFE GRÄNDEN</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CAFE GRENDEN</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CAFé JåJ</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CAFE LA CORN</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CAFE LAVANCE</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CAFE LEVINSK</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CAFE TABAC</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CAFé UMBRA</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CARLSSONS TR</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CENTRALA STUDIESTöDSNäMN</td>
	    <td class="metro">CSN</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CENTRALA STUDIESTÖDSNÄMN</td>
	    <td class="metro">CSN</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CERVERA RING</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CHICAGO</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CHICKEN AND</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CHINA CORNER</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CITY POLISMÄ</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CITY STORMAR</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">COCTAIL DE L</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">COFFEE HOUSE</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">COM HEM AB</td>
	    <td class="metro">Hushåll</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">COMPLE KONDI</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">COMPUTER CIT</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">COMVIQ 0200</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">COMVIQ TANKA</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CONVIVIUM ST</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">COOP EXTRA M</td>
	    <td class="metro">Mat</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">COOP FORUM N</td>
	    <td class="metro">Mat</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">COPPERFIELDS</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CORDON BLEU</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CORNETTO BAR</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CORTADO</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CSN</td>
	    <td class="metro">CSN</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CYKEL</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CYKEL EXPO/Ö</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">CYKELRINGEN</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">DAGENS NYHETER AB</td>
	    <td class="metro">Hushåll</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">DAGLIVS</td>
	    <td class="metro">Mat</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">DAMMSUGARPåSAR NU I SVER</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">DECKONLINE</td>
	    <td class="metro">Transport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">DESIGNTORGET</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">DIV LANDET</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">DöD ÅT CSN</td>
	    <td class="metro">Kattis</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">DUBBEL W</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">DUCKEN</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">DUKA RINGEN</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">DUVEL CAFE</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">DUVEL CAFE/P</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">EDEBYHAMN</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">EKBACKEN I T</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ELECTRUM RES</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ELEGANZA</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">EL-GIGANTEN</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ELGIGANTEN H</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ELITE PALACE</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ELITE STADSH</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ELMSTA FARG</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">E-MAN AB</td>
	    <td class="metro">Lön</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ENKLA VARDAG</td>
	    <td class="metro">Hushåll</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">EPPE KEBAB</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ERIKDALS MIN</td>
	    <td class="metro">Cigaretter</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ERIK LARSSON</td>
	    <td class="metro">Sparkonto</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ERIK L FöRSK</td>
	    <td class="metro">Lön</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ERIKSDALSBAD</td>
	    <td class="metro">Sport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ESPRESSO BAR</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ESPRESSO HOU</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ESSINGEKIOSK</td>
	    <td class="metro">Cigaretter</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ESSINGE SPEL</td>
	    <td class="metro">Cigaretter</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ETT LITET KO</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">EUROPCAR SWE</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">EVEDALS VäRD</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">EXTRA BONUS</td>
	    <td class="metro">Kattis</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">F12 GRILL</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">FAB STOCKHOL</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">FAC FLYGBUSS</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">FBK BAR &amp; Kö</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">FEST E&amp;K</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">FILMSTADEN S</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">FINNAIR</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">FOLKETS KEBA</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">FOLKSAM</td>
	    <td class="metro">Hushåll</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">FOLKSAM ÖMSESIDIG LIVFöR</td>
	    <td class="metro">Hushåll</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">FOLKTANDVARD</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">FOREX RINGVä</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">FORMAGGIO PI</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">FORNO ROMANO</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">FORTUM MARKETS AB</td>
	    <td class="metro">Hushåll</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">FORTUM MARKETS AB KUNDRE</td>
	    <td class="metro">Hushåll</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">FOTOGRAFISK</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">FRANK DANDY</td>
	    <td class="metro">Kläder</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">FRANKFURT</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">FRED BUTLER</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">FREDELLS TRE</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">F R KISTA AB</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">GALLERIX 87</td>
	    <td class="metro">Lön</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">GAMESTOP</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">GAME VESTER</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">GLEN FIDDICH</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">GORANTERASSE</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">GÖTGATANS SN</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">GOUTER</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">GRANDPA</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">GRANIT</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">GRANIT FUNKT</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">GREKISKA GRI</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">GREKISKA KOL</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">GREKISK KOLG</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">GRET INDIAN</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">GRODAN SERGE</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">GULDFYND TO</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">GUNNARSONS S</td>
	    <td class="metro">Mat</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">GUNNARSSONS</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">GURU</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">GUSTO</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">HAIR AND FAC</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">HARGENGET</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">HARGENGET /A</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">HARVEST HOME</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">HAUGAARD STOCKHOLM AB</td>
	    <td class="metro">Mat</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">HEADWEB</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">HEADWEB AB</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">HE LIND AB</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">HELLSTEDT AB L E</td>
	    <td class="metro">Hyra</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">HELT ONöDIGT</td>
	    <td class="metro">Kläder</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">HEMKÖP ODENP</td>
	    <td class="metro">Mat</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">HEMKöP SKANS</td>
	    <td class="metro">Mat</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">HEMKÖP SKANS</td>
	    <td class="metro">Mat</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">HEMKÖP STHLM</td>
	    <td class="metro">Mat</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">HEMTEX 148</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">HEMTEX 54</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">HEMTEX 95</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">H M GOTGATAN</td>
	    <td class="metro">Kläder</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">HMSHOST SWED</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">HOKAIDO SUSH</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">HOPE OUTLETS</td>
	    <td class="metro">Kläder</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">HOST MARRIOT</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">HOTEL DIPLOM</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">HOTELL HAVSB</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">HOTELS COM S</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">HOTORGETS JO</td>
	    <td class="metro">Kläder</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">HOUNSLOW</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">HOUSE OF ALE</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">HSB STOCKHOLM EK FÖR MED</td>
	    <td class="metro">Hushåll</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">HUMAC AB</td>
	    <td class="metro">Lön</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">HYRA BIL</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">HYRA MM</td>
	    <td class="metro">Kattis</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">HYRESGäSTFöRENINGEN, STH</td>
	    <td class="metro">Hushåll</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">HYRESGÄSTFÖRENINGEN, STH</td>
	    <td class="metro">Hushåll</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ICA FLYGFYRE</td>
	    <td class="metro">Mat</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ICA GILLET</td>
	    <td class="metro">Mat</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ICA HANTVERK</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ICA NäRA BER</td>
	    <td class="metro">Mat</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ICA S T ERIK</td>
	    <td class="metro">Mat</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ICA SUPERMAR</td>
	    <td class="metro">Mat</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ICA SUPERM S</td>
	    <td class="metro">Mat</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">IKEA BARKARB</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">IL CAFFE</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">IL FORNO DA</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">INDIAN CURRY</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">INDIGO</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">INFO ARLANDA</td>
	    <td class="metro">Lön</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ITAMAE</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ITUNES MUSIC</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">I-TUNES-SEK</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ITUNES-SEK</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">JAM JAM</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">JAMSA</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">JAPAN PHOTO</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">JENSENS BöFH</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">JENSENS BÖFH</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">JOHN WALL</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">JOLO &amp; CO</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">JT RESTAURAN</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">JULIET</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">JUS DESIGN A</td>
	    <td class="metro">Kläder</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">JYSK AB</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">KAFFEMASKINE</td>
	    <td class="metro">Mat</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">KAJENS FIK</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">KALIKÅ</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">KALIMERA</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">KANTIN</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">KASTRUP</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">KATRINES BER</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">KATTIS</td>
	    <td class="metro">Kattis</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">K C BLOMMOR</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">KELLSTROMS K</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">KHARAZMI MAT</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">KICKIS BAR &amp;</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">KINGSBURG</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">KLIPPET DAGL</td>
	    <td class="metro">Mat</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">KNAPPKARLSSO</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">KONSULTLöN</td>
	    <td class="metro">Kattis</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">KONTANTEN FO</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">KONTANTEN ST</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">KöREN CANTARE C/O HJULST</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">KöRKORTSAVGIFTER TRANSPO</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">KORTAVG VISA</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">KROGEN SOLDA</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">KRÖNS TRÄDGÅ</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">KUMMIN</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">L55 LEVIéS S</td>
	    <td class="metro">Kläder</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">LäNNA MöBLER</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">LA PETITE</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">LARSSON ERIK</td>
	    <td class="metro">Sparkonto</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">LAS VEGAS</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">LEFKOSE</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">L E HELLSTEDT AB</td>
	    <td class="metro">Hyra</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">LEJONET&amp;BJÖR</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">LEMON BAR</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">LENTOASEMA</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">LEVI S STORE</td>
	    <td class="metro">Kläder</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">LIBANESISKA</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">LILLA HOTELL</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">LIMONE ITALI</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">LINDHAGENS S</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">LITTLE INDIA</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">L?N</td>
	    <td class="metro">Lön</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">LONDON</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">LöPLABBET CI</td>
	    <td class="metro">Sport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">LÖPLABBET CI</td>
	    <td class="metro">Sport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">LOS ANGELES</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">LOUIS JAZZKL</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MACBOOK AIR</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MACHE</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MAGGIES KROG</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MALTA/ERIK</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MANGAL</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MASTER ANDER</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MäSTER ANDER</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MATUTLäGG</td>
	    <td class="metro">Mat</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MAX STOCKHOL</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MCDONALDS</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MCDONALDS LU</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MCDONALD S S</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MCDONALDS S</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MCDONALDS ST</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MEDIS KÖK &amp;</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MELLOW BAR</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MERIOT</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MINBIL I STO</td>
	    <td class="metro">Transport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MINNE</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MIO &amp; CO</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MIX IT UP CA</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MOLDAUS BAR</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MONKS CAFE</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MONROEVILLE</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MONTEREY</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MOON TWP</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MORGAN HILL</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MOSEBACKE AT</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MOTHER INDIA</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MQ STOCKHOLM</td>
	    <td class="metro">Kläder</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">M/S ECKERO</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MT PLEASANT</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MUSIKBöRSEN</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MYNTINS</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">MY WAY KISTA</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">M-ZONE STOCK</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">NADA</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">NADA BAR</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">NATURKOMPANI</td>
	    <td class="metro">Kläder</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">NAVIYA-A CON</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">NESPRESSO SW</td>
	    <td class="metro">Lön</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">NEWBURY PARK</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">NEW YORK</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">NICOLA DUNNE</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">NINTENDOSPEL</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">NISSKIOSKEN</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">NK HERRSKOR</td>
	    <td class="metro">Kläder</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">NOCO</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">NON SOLO BAR</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">NORDIC LENSES</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">NORR MELARST</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">NYA WIENERKO</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">N Y C</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">NYMATSEDELN</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">OCH HIMMELEN</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">OLANCHA</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">O LEARYS KIS</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">O LEARYS OST</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">OLIVER TWIST</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">OME</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ORIO AL SERI</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ÖSTASIATISKA</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ÖTRASSAVGIFT</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">OUZO BAR &amp; M</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ÖVERFöRT</td>
	    <td class="metro">Kattis</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">PAHRUMP</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">PANINI SÖDER</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">PAPA RAY RAY</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">PARKERINGSSE</td>
	    <td class="metro">Transport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">PAYPAL  LEVI</td>
	    <td class="metro">Kläder</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">PAYPAL PASS</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">PAYPAL  READ</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">PC CITY SICK</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">PET SOUNDS B</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">PIG AND WHIS</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">PIG O WHISTL</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">PITTSBURGH</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">PONG LINDHAG</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">PRESSBYRåN 0</td>
	    <td class="metro">Cigaretter</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">PRESSBYRAN 4</td>
	    <td class="metro">Cigaretter</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">PRESSBYRAN 5</td>
	    <td class="metro">Cigaretter</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">PRESSBYRAN 8</td>
	    <td class="metro">Cigaretter</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">PRESSBYRåN B</td>
	    <td class="metro">Cigaretter</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">PRIMO CIAO C</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">PRISXTRA FRI</td>
	    <td class="metro">Mat</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">PUB</td>
	    <td class="metro">Kläder</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">PUB STRINGFE</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">PUNKT SHOPEN</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RÅDHUSCAFEET</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RADIOTJäNST I KIRUNA AB</td>
	    <td class="metro">Hushåll</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RADIOTJÄNST I KIRUNA AB</td>
	    <td class="metro">Hushåll</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RAKETSPORT I</td>
	    <td class="metro">Sport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RAMA KUMMIN</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RäNTA</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RATIONELL PA</td>
	    <td class="metro">Transport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RAZMAHAL IND</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RAZMONI AB</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RED CHILI TA</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">REKL.10429</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RES.DELN.</td>
	    <td class="metro">Lön</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RESEFöRSK EL</td>
	    <td class="metro">Lön</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">REST ATRIUM</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RESTAURANG A</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RESTAURANG Ä</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RESTAURANG B</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RESTAURANGBO</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RESTAURANG D</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RESTAURANG F</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RESTAURANG H</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RESTAURANG I</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RESTAURANG K</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RESTAURANG M</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RESTAURANG P</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RESTAURANG R</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RESTAURANG S</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RESTAURANT A</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RESTAURANT P</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">REST GYLLENE</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">REST HO S</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">REST NORRPOR</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">REST SALT</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">REST SJOGRES</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">REST TENNSTO</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">REST THE LON</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RESUL YESIL</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RIGOLETTO</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RINGENS BLOM</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RISKORNET</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RIZZO 411</td>
	    <td class="metro">Kläder</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ROBERTS COFF</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RODEBJER</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">RODENGO SAIA</td>
	    <td class="metro">Kläder</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ROSLAGSHALLE</td>
	    <td class="metro">Sport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SAFFETS</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SALA THAI</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SALA THAI SK</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SALE MARASIN</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SAMBAL OELEK</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SANDYS</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SANGRIA TAPA</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SAS FLIGHT S</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SAWADEE FAST</td>
	    <td class="metro">Mat</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SCANDIC  MAL</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SCANDINAVIAN</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SCORETT 146</td>
	    <td class="metro">Kläder</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SEA SUSHI</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SEDLAR</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SEMESTER</td>
	    <td class="metro">Kattis</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SET/INTERNET</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SEURAHUONE</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SF ANYTIME</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SF BIO AB IN</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SF BIO FILM</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SF BIO FILMS</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SF BOKHANDEL</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SHELL</td>
	    <td class="metro">Transport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SHELLEYS SPA</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SHELL NAS</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SIGURDSGATAN</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SIMA GODIS /</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SINTH BAR &amp;</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SJ AB OMBORD</td>
	    <td class="metro">Lön</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SJ AUT 11 Vä</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SJ AUT VÄSTE</td>
	    <td class="metro">Lön</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SJ KUNDBOKNI</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SJ REGIONAL</td>
	    <td class="metro">Lön</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SK7707240052</td>
	    <td class="metro">Lön</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SKANSTULL</td>
	    <td class="metro">Mat</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SKEPPSBAR</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SKEPPSBAR I</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SKOBELL AKTI</td>
	    <td class="metro">Kläder</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SKOR</td>
	    <td class="metro">Sport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SKOSNABBBEN</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SL AUTOMATER</td>
	    <td class="metro">Transport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SL GULLMARSP</td>
	    <td class="metro">Transport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SL SKANSTULL</td>
	    <td class="metro">Transport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SNF</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SÖDERMALMS H</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SODERMALMS S</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SÖDERMANNA V</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SöDERS KONDI</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SöDRA BOWLIN</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SODRA TEATER</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SOLO SMåLAND</td>
	    <td class="metro">Kläder</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SOLVANG</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SOM CONCEPT</td>
	    <td class="metro">Kläder</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SOUTHAM</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SOUTH PLAINF</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SPARBANKEN A</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SPELBITEN</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SPICY HOT ST</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SSP BURGER K</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ST 1</td>
	    <td class="metro">Transport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">STADSHAGEN T</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">STALANDS ÅSö</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">STATOIL</td>
	    <td class="metro">Transport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">STATOIL HAMM</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">STH 132 IDROTTSFöRVALTNI</td>
	    <td class="metro">Sport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">STH GATUFAST</td>
	    <td class="metro">Transport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">STHLM KEBAB</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">STHLMS STAD</td>
	    <td class="metro">Transport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">STHLM TåG IS</td>
	    <td class="metro">Transport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">STH TRAFIKKONTORET EKONO</td>
	    <td class="metro">Transport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ST JULIANS</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">STOCKHOLM FO</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">STOCKHOLMS G</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">STOCKHOLMS STADS BOSTADS</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">STOCKHOLMS U</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">STOCKHOLMS UNIVERSITETS</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">STOCKHOLM TR</td>
	    <td class="metro">Lön</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">STORA BRENNB</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">STORE &amp; COFF</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">STORSTAD OL</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ST PAUL</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">STRIKE</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">STRINGFELLOW</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">STROMS I STO</td>
	    <td class="metro">Kläder</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">STUK MANUFAK</td>
	    <td class="metro">Kläder</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">STUREGATAN P</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SUBWAY</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SUBWAY GLOBE</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SULZANO</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SUPERMARKET</td>
	    <td class="metro">Mat</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SURFTOWN AS</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SUSHIBAR DOS</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SUSHI/SASHIM</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SUSHI YAMA</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SVAR RESTAUR</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SVART KAFFE</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SVENSKA SHEL</td>
	    <td class="metro">Transport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SVENSK FORM</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SWEDBANK ATM</td>
	    <td class="metro">Kontant</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">SYSTEMBOLAGE</td>
	    <td class="metro">Systembolaget</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">TACO BAR</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">TACO BAR STI</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">TAKEBACK AB</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">TAXI 299-8 S</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">TAXIKURIR ST</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">TAXI VASTERA</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">TAXIVERKET I</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">TEATERBAREN</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">TEGNERS GOMS</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">TEKNIKMAGASI</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">TEKNISKA MUS</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">TELE2 SVERIGE AB</td>
	    <td class="metro">Hushåll</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">TELE2 SVERIGE AB ATT: KU</td>
	    <td class="metro">Hushåll</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">TELENOR 723</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">TELGE ENERGI AB</td>
	    <td class="metro">Hushåll</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">TELIASONERA</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">TELIASONERA SVERIGE AB C</td>
	    <td class="metro">Hushåll</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">TERRA SOLNA</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">TEXAS BURGER</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">TEXAS LONG H</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">THAI FASTFOO</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">THE CASBAH</td>
	    <td class="metro">Kläder</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">THE DOORS</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">THEDUCATION</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">TIDSKRIFTEN OPERA</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">TILL ERIK</td>
	    <td class="metro">Kattis</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">TöSAB 2</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">TRAFIKKONTOR</td>
	    <td class="metro">Transport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">TRANAN RESTA</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">TRäNGSELSKATT TRANSPORTS</td>
	    <td class="metro">Transport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">TRYGG HANSA</td>
	    <td class="metro">Transport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">TRYSIL</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">TURKU</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">TUSEN OCH EN</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">TVå SYSTRAR</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">URBAN CAFE</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">URBAN DELI</td>
	    <td class="metro">Mat</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">UTD E-MAN</td>
	    <td class="metro">Lön</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">UTD ERIK L</td>
	    <td class="metro">Lön</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">UTTAGSAVGIFT</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">VAGABOND</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">VäGVERKET</td>
	    <td class="metro">Transport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">VäGVERKET FELPARKERINGS-</td>
	    <td class="metro">Transport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">VäGVERKET FELPARKERINGSA</td>
	    <td class="metro">Transport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">VäGVERKET FORDONSSKATT</td>
	    <td class="metro">Transport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">VäGVERKET TRAFIKREG.TRäN</td>
	    <td class="metro">Transport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">VäGVERKET TRäNGSELSKATT</td>
	    <td class="metro">Transport</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">VANTAA</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">VAPIANO</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">VA PIANO</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">VÄSTERMALMSG</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">VERONA</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">VETE-KATTEN</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">VIKING KEM</td>
	    <td class="metro">Hushåll</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">VIKING LINE</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">VIKING LINE ABP</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">VI KLIPPET H</td>
	    <td class="metro">Mat</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">VINO DE VERA</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">VIVALDI</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">WAAN THAI/ J</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">WALLINS BAGE</td>
	    <td class="metro">Mat</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">WARDSHUSET U</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">WAXHOLMSBOLA</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">WAYNE S COFF</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">WAYNES COFFE</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">WEBHALLEN</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">WEBHALLEN SE</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">WESTMANS TOB</td>
	    <td class="metro">Cigaretter</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">WHYRED</td>
	    <td class="metro">Kläder</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">WHYRED RETAI</td>
	    <td class="metro">Kläder</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">WIJNJAS GROS</td>
	    <td class="metro">Mat</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">WILLYS HäGGV</td>
	    <td class="metro">Mat</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">WILLYS SICKL</td>
	    <td class="metro">Mat</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">WINBLADS</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">WINJAS GROSS</td>
	    <td class="metro">Mat</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">WIRSTRÖMS JÄ</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">WIRSTRÖMS PU</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">WOBBLER LOUN</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">WP-THE CLOUD</td>
	    <td class="metro">Lön</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">WWW ARLANDAE</td>
	    <td class="metro">Resa</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">WWW FLYGBUSS</td>
	    <td class="metro">Lön</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">WWW SF SE</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">WWW SODRATEA</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">WWW STOCKHOL</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">YOSRY GRILL</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ZARA</td>
	    <td class="metro">Kläder</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ZENIT</td>
	    <td class="metro">Lunch</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ZINIO COM</td>
	    <td class="metro">Nöje</td>
	  </tr>
	  <tr class="metro">
	    <td class="metro">ZUG</td>
	    <td class="metro">Övrigt</td>
	  </tr>
	</table>
'