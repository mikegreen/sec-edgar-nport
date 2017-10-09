<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xsl:stylesheet  [
<!ENTITY ndash "&#8211;">
]>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


	<xsl:output method="html" indent="no" encoding="UTF-8"
		doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" />

	<xsl:template name="stateDescription">
		<xsl:param name="stateCode" />
		<xsl:choose>
			<xsl:when test="$stateCode='US-AK'">
				ALASKA
			</xsl:when>
			<xsl:when test="$stateCode='US-AL'">
				ALABAMA
			</xsl:when>
			<xsl:when test="$stateCode='US-AR'">
				ARKANSAS
			</xsl:when>
			<xsl:when test="$stateCode='US-AZ'">
				ARIZONA
			</xsl:when>
			<xsl:when test="$stateCode='US-CA'">
				CALIFORNIA
			</xsl:when>
			<xsl:when test="$stateCode='US-CO'">
				COLORADO
			</xsl:when>
			<xsl:when test="$stateCode='US-CT'">
				CONNECTICUT
			</xsl:when>
			<xsl:when test="$stateCode='US-DC'">
				DISTRICT OF COLUMBIA
			</xsl:when>
			<xsl:when test="$stateCode='US-DE'">
				DELAWARE
			</xsl:when>
			<xsl:when test="$stateCode='US-FL'">
				FLORIDA
			</xsl:when>
			<xsl:when test="$stateCode='US-GA'">
				GEORGIA
			</xsl:when>
			<xsl:when test="$stateCode='US-HI'">
				HAWAII
			</xsl:when>
			<xsl:when test="$stateCode='US-IA'">
				IOWA
			</xsl:when>
			<xsl:when test="$stateCode='US-ID'">
				IDAHO
			</xsl:when>
			<xsl:when test="$stateCode='US-IL'">
				ILLINOIS
			</xsl:when>
			<xsl:when test="$stateCode='US-IN'">
				INDIANA
			</xsl:when>
			<xsl:when test="$stateCode='US-KS'">
				KANSAS
			</xsl:when>
			<xsl:when test="$stateCode='US-KY'">
				KENTUCKY
			</xsl:when>
			<xsl:when test="$stateCode='US-LA'">
				LOUISIANA
			</xsl:when>
			<xsl:when test="$stateCode='US-MA'">
				MASSACHUSETTS
			</xsl:when>
			<xsl:when test="$stateCode='US-MD'">
				MARYLAND
			</xsl:when>
			<xsl:when test="$stateCode='US-ME'">
				MAINE
			</xsl:when>
			<xsl:when test="$stateCode='US-MI'">
				MICHIGAN
			</xsl:when>
			<xsl:when test="$stateCode='US-MN'">
				MINNESOTA
			</xsl:when>
			<xsl:when test="$stateCode='US-MO'">
				MISSOURI
			</xsl:when>
			<xsl:when test="$stateCode='US-MS'">
				MISSISSIPPI
			</xsl:when>
			<xsl:when test="$stateCode='US-MT'">
				MONTANA
			</xsl:when>
			<xsl:when test="$stateCode='US-NC'">
				NORTH CAROLINA
			</xsl:when>
			<xsl:when test="$stateCode='US-ND'">
				NORTH DAKOTA
			</xsl:when>
			<xsl:when test="$stateCode='US-NE'">
				NEBRASKA
			</xsl:when>
			<xsl:when test="$stateCode='US-NH'">
				NEW HAMPSHIRE
			</xsl:when>
			<xsl:when test="$stateCode='US-NJ'">
				NEW JERSEY
			</xsl:when>
			<xsl:when test="$stateCode='US-NM'">
				NEW MEXICO
			</xsl:when>
			<xsl:when test="$stateCode='US-NV'">
				NEVADA
			</xsl:when>
			<xsl:when test="$stateCode='US-NY'">
				NEW YORK
			</xsl:when>
			<xsl:when test="$stateCode='US-OH'">
				OHIO
			</xsl:when>
			<xsl:when test="$stateCode='US-OK'">
				OKLAHOMA
			</xsl:when>
			<xsl:when test="$stateCode='US-OR'">
				OREGON
			</xsl:when>
			<xsl:when test="$stateCode='US-PA'">
				PENNSYLVANIA
			</xsl:when>
			<xsl:when test="$stateCode='US-RI'">
				RHODE ISLAND
			</xsl:when>
			<xsl:when test="$stateCode='US-SC'">
				SOUTH CAROLINA
			</xsl:when>
			<xsl:when test="$stateCode='US-SD'">
				SOUTH DAKOTA
			</xsl:when>
			<xsl:when test="$stateCode='US-TN'">
				TENNESSEE
			</xsl:when>
			<xsl:when test="$stateCode='US-TX'">
				TEXAS
			</xsl:when>
			<xsl:when test="$stateCode='US-UT'">
				UTAH
			</xsl:when>
			<xsl:when test="$stateCode='US-VA'">
				VIRGINIA
			</xsl:when>
			<xsl:when test="$stateCode='US-VT'">
				VERMONT
			</xsl:when>
			<xsl:when test="$stateCode='US-WA'">
				WASHINGTON
			</xsl:when>
			<xsl:when test="$stateCode='US-WI'">
				WISCONSIN
			</xsl:when>
			<xsl:when test="$stateCode='US-WV'">
				WEST VIRGINIA
			</xsl:when>
			<xsl:when test="$stateCode='US-WY'">
				WYOMING
			</xsl:when>
			<xsl:when test="$stateCode='US-AS'">
				AMERICAN SAMOA
			</xsl:when>
			<xsl:when test="$stateCode='US-GU'">
				GUAM
			</xsl:when>
			<xsl:when test="$stateCode='US-MP'">
				NORTHERN MARIANA ISLANDS
			</xsl:when>
			<xsl:when test="$stateCode='US-PR'">
				PUERTO RICO
			</xsl:when>
			<xsl:when test="$stateCode='US-UM'">
				UNITED STATES MINOR OUTLYING ISLANDS
			</xsl:when>
			<xsl:when test="$stateCode='US-VI'">
				VIRGIN ISLANDS, U.S.
			</xsl:when>
			<xsl:when test="$stateCode='US'">
				UNITED STATES OF AMERICA
			</xsl:when>
			<xsl:when test="$stateCode='CA-AB'">
				ALBERTA, CANADA
			</xsl:when>
			<xsl:when test="$stateCode='CA-BC'">
				BRITISH COLUMBIA, CANADA
			</xsl:when>
			<xsl:when test="$stateCode='CA-MB'">
				MANITOBA, CANADA
			</xsl:when>
			<xsl:when test="$stateCode='CA-NB'">
				NEW BRUNSWICK, CANADA
			</xsl:when>
			<xsl:when test="$stateCode='CA-NL'">
				NEWFOUNDLAND, CANADA
			</xsl:when>
			<xsl:when test="$stateCode='CA-NS'">
				NOVA SCOTIA, CANADA
			</xsl:when>
			<xsl:when test="$stateCode='CA-ON'">
				ONTARIO, CANADA
			</xsl:when>
			<xsl:when test="$stateCode='CA-PE'">
				PRINCE EDWARD ISLAND, CANADA
			</xsl:when>
			<xsl:when test="$stateCode='CA-QC'">
				QUEBEC, CANADA
			</xsl:when>
			<xsl:when test="$stateCode='CA-SK'">
				SASKATCHEWAN, CANADA
			</xsl:when>
			<xsl:when test="$stateCode='CA-NT'">
				NORTHWEST TERRITORIES, CANADA
			</xsl:when>
			<xsl:when test="$stateCode='CA-NU'">
				NUNAVUT, CANADA
			</xsl:when>
			<xsl:when test="$stateCode='CA-YT'">
				YUKON, CANADA
			</xsl:when>
			<xsl:when test="$stateCode='CA'">
				CANADA (FEDERAL LEVEL)
			</xsl:when>
			<xsl:when test="$stateCode='AI'">
				ANGUILLA
			</xsl:when>
			<xsl:when test="$stateCode='AM'">
				ARMENIA
			</xsl:when>
			<xsl:when test="$stateCode='AW'">
				ARUBA
			</xsl:when>
			<xsl:when test="$stateCode='AZ'">
				AZERBAIJAN
			</xsl:when>
			<xsl:when test="$stateCode='BA'">
				BOSNIA AND HERZEGOVINA
			</xsl:when>
			<xsl:when test="$stateCode='BY'">
				BELARUS
			</xsl:when>
			<xsl:when test="$stateCode='DJ'">
				DJIBOUTI
			</xsl:when>
			<xsl:when test="$stateCode='EE'">
				ESTONIA
			</xsl:when>
			<xsl:when test="$stateCode='ER'">
				ERITREA
			</xsl:when>
			<xsl:when test="$stateCode='FM'">
				MICRONESIA (FEDERATED STATES OF)
			</xsl:when>
			<xsl:when test="$stateCode='GS'">
				SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS
			</xsl:when>
			<xsl:when test="$stateCode='HR'">
				CROATIA
			</xsl:when>
			<xsl:when test="$stateCode='KG'">
				KYRGYZSTAN
			</xsl:when>
			<xsl:when test="$stateCode='KZ'">
				KAZAKHSTAN
			</xsl:when>
			<xsl:when test="$stateCode='LT'">
				LITHUANIA
			</xsl:when>
			<xsl:when test="$stateCode='LV'">
				LATVIA
			</xsl:when>
			<xsl:when test="$stateCode='MD'">
				MOLDOVA (THE REPUBLIC OF)
			</xsl:when>
			<xsl:when test="$stateCode='MH'">
				MARSHALL ISLANDS
			</xsl:when>
			<xsl:when test="$stateCode='MK'">
				MACEDONIA (THE FORMER YUGOSLAV REPUBLIC OF)
			</xsl:when>
			<xsl:when test="$stateCode='MP'">
				NORTHERN MARIANA ISLANDS
			</xsl:when>
			<xsl:when test="$stateCode='NC'">
				NEW CALEDONIA
			</xsl:when>
			<xsl:when test="$stateCode='PS'">
				PALESTINE, STATE OF
			</xsl:when>
			<xsl:when test="$stateCode='PW'">
				PALAU
			</xsl:when>
			<xsl:when test="$stateCode='RU'">
				RUSSIAN FEDERATION
			</xsl:when>
			<xsl:when test="$stateCode='SI'">
				SLOVENIA
			</xsl:when>
			<xsl:when test="$stateCode='SK'">
				SLOVAKIA
			</xsl:when>
			<xsl:when test="$stateCode='TF'">
				FRENCH SOUTHERN TERRITORIES
			</xsl:when>
			<xsl:when test="$stateCode='TJ'">
				TAJIKISTAN
			</xsl:when>
			<xsl:when test="$stateCode='TM'">
				TURKMENISTAN
			</xsl:when>
			<xsl:when test="$stateCode='TV'">
				TUVALU
			</xsl:when>
			<xsl:when test="$stateCode='UA'">
				UKRAINE
			</xsl:when>
			<xsl:when test="$stateCode='UM'">
				UNITED STATES MINOR OUTLYING ISLANDS
			</xsl:when>
			<xsl:when test="$stateCode='UZ'">
				UZBEKISTAN
			</xsl:when>
			<xsl:when test="$stateCode='VU'">
				VANUATU
			</xsl:when>
			<xsl:when test="$stateCode='DE'">
				GERMANY
			</xsl:when>
			<xsl:when test="$stateCode='YT'">
				MAYOTTE
			</xsl:when>
			<xsl:when test="$stateCode='GE'">
				GEORGIA
			</xsl:when>
			<xsl:when test="$stateCode='BW'">
				BOTSWANA
			</xsl:when>
			<xsl:when test="$stateCode='AF'">
				AFGHANISTAN
			</xsl:when>
			<xsl:when test="$stateCode='AL'">
				ALBANIA
			</xsl:when>
			<xsl:when test="$stateCode='DZ'">
				ALGERIA
			</xsl:when>
			<xsl:when test="$stateCode='AS'">
				AMERICAN SAMOA
			</xsl:when>
			<xsl:when test="$stateCode='AD'">
				ANDORRA
			</xsl:when>
			<xsl:when test="$stateCode='AO'">
				ANGOLA
			</xsl:when>
			<xsl:when test="$stateCode='AQ'">
				ANTARCTICA
			</xsl:when>
			<xsl:when test="$stateCode='AG'">
				ANTIGUA AND BARBUDA
			</xsl:when>
			<xsl:when test="$stateCode='AE'">
				UNITED ARAB EMIRATES
			</xsl:when>
			<xsl:when test="$stateCode='AR'">
				ARGENTINA
			</xsl:when>
			<xsl:when test="$stateCode='AU'">
				AUSTRALIA
			</xsl:when>
			<xsl:when test="$stateCode='AT'">
				AUSTRIA
			</xsl:when>
			<xsl:when test="$stateCode='BS'">
				BAHAMAS
			</xsl:when>
			<xsl:when test="$stateCode='BH'">
				BAHRAIN
			</xsl:when>
			<xsl:when test="$stateCode='BD'">
				BANGLADESH
			</xsl:when>
			<xsl:when test="$stateCode='BB'">
				BARBADOS
			</xsl:when>
			<xsl:when test="$stateCode='BE'">
				BELGIUM
			</xsl:when>
			<xsl:when test="$stateCode='BM'">
				BERMUDA
			</xsl:when>
			<xsl:when test="$stateCode='BZ'">
				BELIZE
			</xsl:when>
			<xsl:when test="$stateCode='BT'">
				BHUTAN
			</xsl:when>
			<xsl:when test="$stateCode='BO'">
				BOLIVIA (PLURINATIONAL STATE OF)
			</xsl:when>
			<xsl:when test="$stateCode='BV'">
				BOUVET ISLAND
			</xsl:when>
			<xsl:when test="$stateCode='BR'">
				BRAZIL
			</xsl:when>
			<xsl:when test="$stateCode='IO'">
				BRITISH INDIAN OCEAN TERRITORY
			</xsl:when>
			<xsl:when test="$stateCode='SB'">
				SOLOMON ISLANDS
			</xsl:when>
			<xsl:when test="$stateCode='VG'">
				VIRGIN ISLANDS (BRITISH)
			</xsl:when>
			<xsl:when test="$stateCode='BN'">
				BRUNEI DARUSSALAM
			</xsl:when>
			<xsl:when test="$stateCode='BG'">
				BULGARIA
			</xsl:when>
			<xsl:when test="$stateCode='MM'">
				MYANMAR
			</xsl:when>
			<xsl:when test="$stateCode='BI'">
				BURUNDI
			</xsl:when>
			<xsl:when test="$stateCode='KH'">
				CAMBODIA
			</xsl:when>
			<xsl:when test="$stateCode='CM'">
				CAMEROON
			</xsl:when>
			<xsl:when test="$stateCode='CV'">
				CABO VERDE
			</xsl:when>
			<xsl:when test="$stateCode='KY'">
				CAYMAN ISLANDS
			</xsl:when>
			<xsl:when test="$stateCode='CF'">
				CENTRAL AFRICAN REPUBLIC
			</xsl:when>
			<xsl:when test="$stateCode='LK'">
				SRI LANKA
			</xsl:when>
			<xsl:when test="$stateCode='TD'">
				CHAD
			</xsl:when>
			<xsl:when test="$stateCode='CL'">
				CHILE
			</xsl:when>
			<xsl:when test="$stateCode='CN'">
				CHINA
			</xsl:when>
			<xsl:when test="$stateCode='TW'">
				TAIWAN (PROVINCE OF CHINA)
			</xsl:when>
			<xsl:when test="$stateCode='CX'">
				CHRISTMAS ISLAND
			</xsl:when>
			<xsl:when test="$stateCode='CC'">
				COCOS (KEELING) ISLANDS
			</xsl:when>
			<xsl:when test="$stateCode='CO'">
				COLOMBIA
			</xsl:when>
			<xsl:when test="$stateCode='KM'">
				COMOROS
			</xsl:when>
			<xsl:when test="$stateCode='CG'">
				CONGO
			</xsl:when>
			<xsl:when test="$stateCode='CK'">
				COOK ISLANDS
			</xsl:when>
			<xsl:when test="$stateCode='CR'">
				COSTA RICA
			</xsl:when>
			<xsl:when test="$stateCode='CU'">
				CUBA
			</xsl:when>
			<xsl:when test="$stateCode='CY'">
				CYPRUS
			</xsl:when>
			<xsl:when test="$stateCode='BJ'">
				BENIN
			</xsl:when>
			<xsl:when test="$stateCode='DK'">
				DENMARK
			</xsl:when>
			<xsl:when test="$stateCode='DO'">
				DOMINICAN REPUBLIC
			</xsl:when>
			<xsl:when test="$stateCode='DM'">
				DOMINICA
			</xsl:when>
			<xsl:when test="$stateCode='GU'">
				GUAM
			</xsl:when>
			<xsl:when test="$stateCode='EC'">
				ECUADOR
			</xsl:when>
			<xsl:when test="$stateCode='EG'">
				EGYPT
			</xsl:when>
			<xsl:when test="$stateCode='SV'">
				EL SALVADOR
			</xsl:when>
			<xsl:when test="$stateCode='GQ'">
				EQUATORIAL GUINEA
			</xsl:when>
			<xsl:when test="$stateCode='ET'">
				ETHIOPIA
			</xsl:when>
			<xsl:when test="$stateCode='FO'">
				FAROE ISLANDS
			</xsl:when>
			<xsl:when test="$stateCode='FK'">
				FALKLAND ISLANDS[MALVINAS]
			</xsl:when>
			<xsl:when test="$stateCode='FJ'">
				FIJI
			</xsl:when>
			<xsl:when test="$stateCode='FI'">
				FINLAND
			</xsl:when>
			<xsl:when test="$stateCode='FR'">
				FRANCE
			</xsl:when>
			<xsl:when test="$stateCode='GF'">
				FRENCH GUIANA
			</xsl:when>
			<xsl:when test="$stateCode='PF'">
				FRENCH POLYNESIA
			</xsl:when>
			<xsl:when test="$stateCode='GA'">
				GABON
			</xsl:when>
			<xsl:when test="$stateCode='GM'">
				GAMBIA
			</xsl:when>
			<xsl:when test="$stateCode='GH'">
				GHANA
			</xsl:when>
			<xsl:when test="$stateCode='GI'">
				GIBRALTAR
			</xsl:when>
			<xsl:when test="$stateCode='KI'">
				KIRIBATI
			</xsl:when>
			<xsl:when test="$stateCode='GR'">
				GREECE
			</xsl:when>
			<xsl:when test="$stateCode='GL'">
				GREENLAND
			</xsl:when>
			<xsl:when test="$stateCode='GD'">
				GRENADA
			</xsl:when>
			<xsl:when test="$stateCode='GP'">
				GUADELOUPE
			</xsl:when>
			<xsl:when test="$stateCode='GT'">
				GUATEMALA
			</xsl:when>
			<xsl:when test="$stateCode='GN'">
				GUINEA
			</xsl:when>
			<xsl:when test="$stateCode='GY'">
				GUYANA
			</xsl:when>
			<xsl:when test="$stateCode='HT'">
				HAITI
			</xsl:when>
			<xsl:when test="$stateCode='HN'">
				HONDURAS
			</xsl:when>
			<xsl:when test="$stateCode='HK'">
				HONG KONG
			</xsl:when>
			<xsl:when test="$stateCode='HM'">
				HEARD ISLAND AND MCDONALD ISLANDS
			</xsl:when>
			<xsl:when test="$stateCode='HU'">
				HUNGARY
			</xsl:when>
			<xsl:when test="$stateCode='IS'">
				ICELAND
			</xsl:when>
			<xsl:when test="$stateCode='IN'">
				INDIA
			</xsl:when>
			<xsl:when test="$stateCode='ID'">
				INDONESIA
			</xsl:when>
			<xsl:when test="$stateCode='IR'">
				IRAN (ISLAMIC REPUBLIC OF)
			</xsl:when>
			<xsl:when test="$stateCode='IQ'">
				IRAQ
			</xsl:when>
			<xsl:when test="$stateCode='IE'">
				IRELAND
			</xsl:when>
			<xsl:when test="$stateCode='IL'">
				ISRAEL
			</xsl:when>
			<xsl:when test="$stateCode='IT'">
				ITALY
			</xsl:when>
			<xsl:when test="$stateCode='CI'">
				COTE D'IVOIRE
			</xsl:when>
			<xsl:when test="$stateCode='JM'">
				JAMAICA
			</xsl:when>
			<xsl:when test="$stateCode='SJ'">
				SVALBARD AND JAN MAYEN
			</xsl:when>
			<xsl:when test="$stateCode='JP'">
				JAPAN
			</xsl:when>
			<xsl:when test="$stateCode='JO'">
				JORDAN
			</xsl:when>
			<xsl:when test="$stateCode='KE'">
				KENYA
			</xsl:when>
			<xsl:when test="$stateCode='KP'">
				KOREA (THE DEMOCRATIC PEOPLE'S REPUBLIC OF)
			</xsl:when>
			<xsl:when test="$stateCode='KR'">
				KOREA (THE REPUBLIC OF)
			</xsl:when>
			<xsl:when test="$stateCode='KW'">
				KUWAIT
			</xsl:when>
			<xsl:when test="$stateCode='LA'">
				LAO PEOPLE'S DEMOCRATIC REPUBLIC
			</xsl:when>
			<xsl:when test="$stateCode='LB'">
				LEBANON
			</xsl:when>
			<xsl:when test="$stateCode='LS'">
				LESOTHO
			</xsl:when>
			<xsl:when test="$stateCode='LR'">
				LIBERIA
			</xsl:when>
			<xsl:when test="$stateCode='LY'">
				LIBYA
			</xsl:when>
			<xsl:when test="$stateCode='LI'">
				LIECHTENSTEIN
			</xsl:when>
			<xsl:when test="$stateCode='LU'">
				LUXEMBOURG
			</xsl:when>
			<xsl:when test="$stateCode='MO'">
				MACAO
			</xsl:when>
			<xsl:when test="$stateCode='MG'">
				MADAGASCAR
			</xsl:when>
			<xsl:when test="$stateCode='MW'">
				MALAWI
			</xsl:when>
			<xsl:when test="$stateCode='MY'">
				MALAYSIA
			</xsl:when>
			<xsl:when test="$stateCode='MV'">
				MALDIVES
			</xsl:when>
			<xsl:when test="$stateCode='ML'">
				MALI
			</xsl:when>
			<xsl:when test="$stateCode='MT'">
				MALTA
			</xsl:when>
			<xsl:when test="$stateCode='MQ'">
				MARTINIQUE
			</xsl:when>
			<xsl:when test="$stateCode='MR'">
				MAURITANIA
			</xsl:when>
			<xsl:when test="$stateCode='MU'">
				MAURITIUS
			</xsl:when>
			<xsl:when test="$stateCode='MX'">
				MEXICO
			</xsl:when>
			<xsl:when test="$stateCode='MC'">
				MONACO
			</xsl:when>
			<xsl:when test="$stateCode='MN'">
				MONGOLIA
			</xsl:when>
			<xsl:when test="$stateCode='MS'">
				MONTSERRAT
			</xsl:when>
			<xsl:when test="$stateCode='MA'">
				MOROCCO
			</xsl:when>
			<xsl:when test="$stateCode='MZ'">
				MOZAMBIQUE
			</xsl:when>
			<xsl:when test="$stateCode='OM'">
				OMAN
			</xsl:when>
			<xsl:when test="$stateCode='NR'">
				NAURU
			</xsl:when>
			<xsl:when test="$stateCode='NP'">
				NEPAL
			</xsl:when>
			<xsl:when test="$stateCode='NL'">
				NETHERLANDS
			</xsl:when>
			<xsl:when test="$stateCode='PR'">
				PUERTO RICO
			</xsl:when>
			<xsl:when test="$stateCode='VN'">
				VIET NAM
			</xsl:when>
			<xsl:when test="$stateCode='NZ'">
				NEW ZEALAND
			</xsl:when>
			<xsl:when test="$stateCode='NI'">
				NICARAGUA
			</xsl:when>
			<xsl:when test="$stateCode='NE'">
				NIGER
			</xsl:when>
			<xsl:when test="$stateCode='NG'">
				NIGERIA
			</xsl:when>
			<xsl:when test="$stateCode='NU'">
				NIUE
			</xsl:when>
			<xsl:when test="$stateCode='NF'">
				NORFOLK ISLAND
			</xsl:when>
			<xsl:when test="$stateCode='NO'">
				NORWAY
			</xsl:when>
			<xsl:when test="$stateCode='PK'">
				PAKISTAN
			</xsl:when>
			<xsl:when test="$stateCode='PA'">
				PANAMA
			</xsl:when>
			<xsl:when test="$stateCode='PG'">
				PAPUA NEW GUINEA
			</xsl:when>
			<xsl:when test="$stateCode='PY'">
				PARAGUAY
			</xsl:when>
			<xsl:when test="$stateCode='PE'">
				PERU
			</xsl:when>
			<xsl:when test="$stateCode='PH'">
				PHILIPPINES
			</xsl:when>
			<xsl:when test="$stateCode='PN'">
				PITCAIRN
			</xsl:when>
			<xsl:when test="$stateCode='PL'">
				POLAND
			</xsl:when>
			<xsl:when test="$stateCode='GW'">
				GUINEA-BISSAU
			</xsl:when>
			<xsl:when test="$stateCode='PT'">
				PORTUGAL
			</xsl:when>
			<xsl:when test="$stateCode='QA'">
				QATAR
			</xsl:when>
			<xsl:when test="$stateCode='RE'">
				REUNION
			</xsl:when>
			<xsl:when test="$stateCode='RO'">
				ROMANIA
			</xsl:when>
			<xsl:when test="$stateCode='RW'">
				RWANDA
			</xsl:when>
			<xsl:when test="$stateCode='SM'">
				SAN MARINO
			</xsl:when>
			<xsl:when test="$stateCode='ST'">
				SAO TOME AND PRINCIPE
			</xsl:when>
			<xsl:when test="$stateCode='SA'">
				SAUDI ARABIA
			</xsl:when>
			<xsl:when test="$stateCode='SN'">
				SENEGAL
			</xsl:when>
			<xsl:when test="$stateCode='SC'">
				SEYCHELLES
			</xsl:when>
			<xsl:when test="$stateCode='ZA'">
				SOUTH AFRICA
			</xsl:when>
			<xsl:when test="$stateCode='NA'">
				NAMIBIA
			</xsl:when>
			<xsl:when test="$stateCode='YE'">
				YEMEN
			</xsl:when>
			<xsl:when test="$stateCode='SL'">
				SIERRA LEONE
			</xsl:when>
			<xsl:when test="$stateCode='SG'">
				SINGAPORE
			</xsl:when>
			<xsl:when test="$stateCode='SO'">
				SOMALIA
			</xsl:when>
			<xsl:when test="$stateCode='ES'">
				SPAIN
			</xsl:when>
			<xsl:when test="$stateCode='EH'">
				WESTERN SAHARA
			</xsl:when>
			<xsl:when test="$stateCode='KN'">
				SAINT KITTS AND NEVIS
			</xsl:when>
			<xsl:when test="$stateCode='SH'">
				SAINT HELENA, ASCENSION AND TRISTAN DA CUNHA
			</xsl:when>
			<xsl:when test="$stateCode='LC'">
				SAINT LUCIA
			</xsl:when>
			<xsl:when test="$stateCode='PM'">
				SAINT PIERRE AND MIQUELON
			</xsl:when>
			<xsl:when test="$stateCode='VC'">
				SAINT VINCENT AND THE GRENADINES
			</xsl:when>
			<xsl:when test="$stateCode='SD'">
				SUDAN
			</xsl:when>
			<xsl:when test="$stateCode='SR'">
				SURINAME
			</xsl:when>
			<xsl:when test="$stateCode='SZ'">
				SWAZILAND
			</xsl:when>
			<xsl:when test="$stateCode='SE'">
				SWEDEN
			</xsl:when>
			<xsl:when test="$stateCode='CH'">
				SWITZERLAND
			</xsl:when>
			<xsl:when test="$stateCode='SY'">
				SYRIAN ARAB REPUBLIC
			</xsl:when>
			<xsl:when test="$stateCode='VI'">
				VIRGIN ISLANDS (U.S)
			</xsl:when>
			<xsl:when test="$stateCode='TZ'">
				TANZANIA, UNITED REPUBLIC OF
			</xsl:when>
			<xsl:when test="$stateCode='TH'">
				THAILAND
			</xsl:when>
			<xsl:when test="$stateCode='TG'">
				TOGO
			</xsl:when>
			<xsl:when test="$stateCode='TK'">
				TOKELAU
			</xsl:when>
			<xsl:when test="$stateCode='TO'">
				TONGA
			</xsl:when>
			<xsl:when test="$stateCode='TT'">
				TRINIDAD AND TOBAGO
			</xsl:when>
			<xsl:when test="$stateCode='TN'">
				TUNISIA
			</xsl:when>
			<xsl:when test="$stateCode='TC'">
				TURKS AND CAICOS ISLANDS
			</xsl:when>
			<xsl:when test="$stateCode='TR'">
				TURKEY
			</xsl:when>
			<xsl:when test="$stateCode='UG'">
				UGANDA
			</xsl:when>
			<xsl:when test="$stateCode='GB'">
				UNITED KINGDOM OF GREAT BRITAIN AND NORTHERN IRELAND
			</xsl:when>
			<xsl:when test="$stateCode='BF'">
				BURKINA FASO
			</xsl:when>
			<xsl:when test="$stateCode='UY'">
				URUGUAY
			</xsl:when>
			<xsl:when test="$stateCode='VA'">
				HOLY SEE
			</xsl:when>
			<xsl:when test="$stateCode='VE'">
				VENEZUELA (BOLIVARIAN REPUBLIC OF)
			</xsl:when>
			<xsl:when test="$stateCode='WF'">
				WALLIS AND FUTUNA
			</xsl:when>
			<xsl:when test="$stateCode='WS'">
				SAMOA
			</xsl:when>
			<xsl:when test="$stateCode='CD'">
				CONGO (THE DEMOCRATIC REPUBLIC OF THE)
			</xsl:when>
			<xsl:when test="$stateCode='ZM'">
				ZAMBIA
			</xsl:when>
			<xsl:when test="$stateCode='ZW'">
				ZIMBABWE
			</xsl:when>
			<xsl:when test="$stateCode='AX'">
				ALAND ISLANDS
			</xsl:when>
			<xsl:when test="$stateCode='GG'">
				GUERNSEY
			</xsl:when>
			<xsl:when test="$stateCode='IM'">
				ISLE OF MAN
			</xsl:when>
			<xsl:when test="$stateCode='JE'">
				JERSEY
			</xsl:when>
			<xsl:when test="$stateCode='BL'">
				SAINT BARTHELEMY
			</xsl:when>
			<xsl:when test="$stateCode='MF'">
				SAINT MARTIN (FRENCH PART)
			</xsl:when>
			<xsl:when test="$stateCode='RS'">
				SERBIA
			</xsl:when>
			<xsl:when test="$stateCode='TL'">
				TIMOR-LESTE
			</xsl:when>
			<xsl:when test="$stateCode='ME'">
				MONTENEGRO
			</xsl:when>
			<xsl:when test="$stateCode='BQ'">
				BONAIRE, SINT EUSTATIUS AND SABA
			</xsl:when>
			<xsl:when test="$stateCode='CW'">
				CURACAO 
			</xsl:when>
			<xsl:when test="$stateCode='CZ'">
				CZECHIA 
			</xsl:when>
			<xsl:when test="$stateCode='SX'">
				SINT MAARTEN (DUTCH PART) 
			</xsl:when>
			<xsl:when test="$stateCode='SS'">
				SOUTH SUDAN 
			</xsl:when>
			<xsl:when test="$stateCode='XX'">
				Unknown
			</xsl:when>
			<xsl:when test="$stateCode='P8'">
				NETHERLANDS ANTILLES
			</xsl:when>
			<xsl:when test="$stateCode='2F'">
				EAST TIMOR
			</xsl:when>
			<xsl:when test="$stateCode='C2'">
				ASHMORE &#38; CARTIER IS
			</xsl:when>
			<xsl:when test="$stateCode='E5'">
				CANAL ZONE
			</xsl:when>
			<xsl:when test="$stateCode='E6'">
				MONTREAL, CANADA
			</xsl:when>
			<xsl:when test="$stateCode='E7'">
				CANTON/ENDERBURY IS
			</xsl:when>
			<xsl:when test="$stateCode='G5'">
				CZECHOSLOVAKIA
			</xsl:when>
			<xsl:when test="$stateCode='I7'">
				GAZA STRIP
			</xsl:when>
			<xsl:when test="$stateCode='I8'">
				GERMANY (WEST)
			</xsl:when>
			<xsl:when test="$stateCode='I9'">
				GERMANY, FED. REP.
			</xsl:when>
			<xsl:when test="$stateCode='L1'">
				IRAQ-SAUDI
			</xsl:when>
			<xsl:when test="$stateCode='L4'">
				ISRAEL-JORDAN
			</xsl:when>
			<xsl:when test="$stateCode='L5'">
				ISRAEL-SYRIA
			</xsl:when>
			<xsl:when test="$stateCode='M1'">
				JOHNSTON ATOLL
			</xsl:when>
			<xsl:when test="$stateCode='O6'">
				MIDWAY ISLAND
			</xsl:when>
			<xsl:when test="$stateCode='Q9'">
				PACIFIC ISLANDS TRU
			</xsl:when>
			<xsl:when test="$stateCode='R3'">
				PARACEL ISLANDS
			</xsl:when>
			<xsl:when test="$stateCode='T4'">
				SOUTHERN RHODESIA
			</xsl:when>
			<xsl:when test="$stateCode='U2'">
				SOVIET UNION
			</xsl:when>
			<xsl:when test="$stateCode='U4'">
				SPANISH NORTH AFRICA
			</xsl:when>
			<xsl:when test="$stateCode='U6'">
				SPRATLY ISLAND
			</xsl:when>
			<xsl:when test="$stateCode='X7'">
				WAKE ISLAND
			</xsl:when>
			<xsl:when test="$stateCode='X9'">
				GERMANY (BERLIN)
			</xsl:when>
			<xsl:when test="$stateCode='Y2'">
				YUGOSLAVIA
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$stateCode" />
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>