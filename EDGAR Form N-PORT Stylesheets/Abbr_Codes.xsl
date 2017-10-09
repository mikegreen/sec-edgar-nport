<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xsl:stylesheet  [
<!ENTITY ndash "&#8211;">
]>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


	<xsl:output method="html" indent="no" encoding="UTF-8"
		doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" />

	<xsl:template name="enumAbbr">
			<xsl:param name="abbr" />
			<xsl:param name="category" />
			
			<xsl:choose>
			
			<xsl:when test="$category = 'INVESTMENT_CATEGORY_TYPE'">
			<xsl:choose>
			<xsl:when test="$abbr = 'ABS'">
			asset-backed securities
			</xsl:when>
			<xsl:when test="$abbr = 'ACMO'">
			agency collateralized mortgage obligations
			</xsl:when>
			<xsl:when test="$abbr = 'ACMBS'">
			agency debentures and agency strip
			</xsl:when>
			<xsl:when test="$abbr = 'AMBS'">
			agency mortgage-backed securities
			</xsl:when>
			<xsl:when test="$abbr = 'UST'">
			U.S. Treasuries (including strips)
			</xsl:when>
			<xsl:otherwise>N/A</xsl:otherwise>
			</xsl:choose>
			</xsl:when>
			
			<xsl:when test="$category = 'DERIV_INST_CATEGORY_TYPE'">
			<xsl:choose>
			<xsl:when test="$abbr = 'FWD'">
			Forward
			</xsl:when>
			<xsl:when test="$abbr = 'FUT'">
			Future
			</xsl:when>
			<xsl:when test="$abbr = 'OPT'">
			Option
			</xsl:when>
			<xsl:when test="$abbr = 'SWO'">
			Swaption
			</xsl:when>
			<xsl:when test="$abbr = 'SWP'">
			Swap
			</xsl:when>
			<xsl:when test="$abbr = 'WAR'">
			Warrant
			</xsl:when>
			<xsl:when test="$abbr = 'OTH'">
			Other
			</xsl:when>
			</xsl:choose>
			</xsl:when>
			
			<xsl:when test="$category = 'LIQUID_FUND_CATEGORY_TYPE'">
			<xsl:choose>
			<xsl:when test="$abbr = 'HLI'">
			Highly Liquid Investments
			</xsl:when>
			<xsl:when test="$abbr = 'MLI'">
			Moderately Liquid Investments
			</xsl:when>
			<xsl:when test="$abbr = 'LLI'">
			Less Liquid Investments
			</xsl:when>
			<xsl:when test="$abbr = 'ILI'">
			Illiquid Investments
			</xsl:when>
			<xsl:otherwise>
			N/A
			</xsl:otherwise>
			</xsl:choose>
			</xsl:when>
			
			
			<xsl:when test="$category = 'UNIT_TYPE'">
			<xsl:choose>
			<xsl:when test="$abbr = 'NS'">
			Number of shares
			</xsl:when>
			<xsl:when test="$abbr = 'PA'">
			Principal amount
			</xsl:when>
			<xsl:when test="$abbr = 'NC'">
			Number of contracts
			</xsl:when>
			<xsl:when test="$abbr = 'OU'">
			Other units
			</xsl:when>
			</xsl:choose>
			</xsl:when>
			
			<xsl:when test="$category = 'ASSET_CATEGORY_TYPE'">
			<xsl:choose>
			<xsl:when test="$abbr = 'STIV'">
			Short-term investment vehicle (e.g., money market fund, liquidity pool, or other cash management vehicle)
			</xsl:when>
			<xsl:when test="$abbr = 'RA'">
			Repurchase agreement
			</xsl:when>
			<xsl:when test="$abbr = 'EC'">
			Equity-common
			</xsl:when>
			<xsl:when test="$abbr = 'EP'">
			Equity-preferred
			</xsl:when>
			<xsl:when test="$abbr = 'DBT'">
			Debt
			</xsl:when>
			<xsl:when test="$abbr = 'DCO'">
			Derivative-commodity
			</xsl:when>
			<xsl:when test="$abbr = 'DCR'">
			Derivative-credit
			</xsl:when>
			<xsl:when test="$abbr = 'DE'">
			Derivative-equity
			</xsl:when>
			<xsl:when test="$abbr = 'DFE'">
			Derivative-foreign exchange
			</xsl:when>
			<xsl:when test="$abbr = 'DIR'">
			Derivative-interest rate
			</xsl:when>
			<xsl:when test="$abbr = 'SN'">
			Structured note
			</xsl:when>
			<xsl:when test="$abbr = 'LON'">
			Loan
			</xsl:when>
			<xsl:when test="$abbr = 'ABS-MBS'">
			ABS-mortgage backed security
			</xsl:when>
			<xsl:when test="$abbr = 'ABS-APCP'">
			ABS-asset backed commercial paper
			</xsl:when>
			<xsl:when test="$abbr = 'ABS-CBDO'">
			ABS-collateralized bond/debt obligation
			</xsl:when>
			<xsl:when test="$abbr = 'ABS-O'">
			ABS-other
			</xsl:when>
			<xsl:when test="$abbr = 'COMM'">
			Commodity
			</xsl:when>
			<xsl:when test="$abbr = 'RE'">
			Real estate
			</xsl:when>
			</xsl:choose>
			</xsl:when>
			
			<xsl:when test="$category = 'REPURCHASE_CATEGORY_TYPE'">
			<xsl:choose>
			<xsl:when test="$abbr = 'ABS'">
			Asset-backed securities
			</xsl:when>
			<xsl:when test="$abbr = 'ACMO'">
			Agency collateralized mortgage obligations
			</xsl:when>
			<xsl:when test="$abbr = 'ADAS'">
			Agency debentures and agency strips
			</xsl:when>
			<xsl:when test="$abbr = 'AMBS'">
			Agency mortgage-backed securities
			</xsl:when>
			<xsl:when test="$abbr = 'PLCMO'">
			Private label collateralized mortgage obligations
			</xsl:when>
			<xsl:when test="$abbr = 'CDS'">
			Corporate debt securities
			</xsl:when>
			<xsl:when test="$abbr = 'EQT'">
			Equities
			</xsl:when>
			<xsl:when test="$abbr = 'MM'">
			Money market
			</xsl:when>
			<xsl:when test="$abbr = 'UST'">
			U.S. Treasuries (including strips)
			</xsl:when>
			</xsl:choose>
			</xsl:when>
			
			<xsl:when test="$category = 'ISSUER_CATEGORY_TYPE'">
			<xsl:choose>
			<xsl:when test="$abbr = 'CORP'">
			Corporate
			</xsl:when>
			<xsl:when test="$abbr = 'UST'">
			U.S. Treasury
			</xsl:when>
			<xsl:when test="$abbr = 'USGA'">
			U.S. government agency
			</xsl:when>
			<xsl:when test="$abbr = 'USGSE'">
			U.S. government sponsored entity
			</xsl:when>
			<xsl:when test="$abbr = 'MUN'">
			Municipal
			</xsl:when>
			<xsl:when test="$abbr = 'PF'">
			Private fund
			</xsl:when>
			<xsl:when test="$abbr = 'RF'">
			Registered fund
			</xsl:when>
			</xsl:choose>
			</xsl:when>
			
			<xsl:when test="$category = 'ASSET_CATEGORY2_TYPE'">
			<xsl:choose>
			<xsl:when test="$abbr = 'CC'">
			commodity contracts
			</xsl:when>
			<xsl:when test="$abbr = 'CRC'">
			credit contracts
			</xsl:when>
			<xsl:when test="$abbr = 'EC'">
			equity contracts
			</xsl:when>
			<xsl:when test="$abbr = 'FEC'">
			foreign exchange contracts
			</xsl:when>
			<xsl:when test="$abbr = 'IRC'">
			interest rate contracts
			</xsl:when>
			<xsl:when test="$abbr = 'OC'">
			other contracts
			</xsl:when>
			</xsl:choose>
			</xsl:when>
			
			<xsl:when test="$category = 'ISO_CURRENCY_CODE'">
			<xsl:choose>
			<xsl:when test="$abbr = 'AED'">
	 United Arab Emirates Dirham
			</xsl:when>
			<xsl:when test="$abbr = 'AFN'">
				 Afghanistan Afghani
			</xsl:when>
			<xsl:when test="$abbr = 'ALL'">
				 Albania Lek
			</xsl:when>
			<xsl:when test="$abbr = 'AMD'">
				 Armenia Dram
			</xsl:when>
			<xsl:when test="$abbr = 'ANG'">
				 Netherlands Antilles Guilder
			</xsl:when>
			<xsl:when test="$abbr = 'AOA'">
				 Angola Kwanza
			</xsl:when>
			<xsl:when test="$abbr = 'ARS'">
				 Argentina Peso
			</xsl:when>
			<xsl:when test="$abbr = 'AUD'">
				 Australia Dollar
			</xsl:when>
			<xsl:when test="$abbr = 'AWG'">
				 Aruba Guilder
			</xsl:when>
			<xsl:when test="$abbr = 'AZN'">
				 Azerbaijan New Manat
			</xsl:when>
			<xsl:when test="$abbr = 'BAM'">
				 Bosnia and Herzegovina Convertible Marka
			</xsl:when>
			<xsl:when test="$abbr = 'BBD'">
				 Barbados Dollar
			</xsl:when>
			<xsl:when test="$abbr = 'BDT'">
				 Bangladesh Taka
			</xsl:when>
			<xsl:when test="$abbr = 'BGN'">
				 Bulgaria Lev
			</xsl:when>
			<xsl:when test="$abbr = 'BHD'">
				 Bahrain Dinar
			</xsl:when>
			<xsl:when test="$abbr = 'BIF'">
				 Burundi Franc
			</xsl:when>
			<xsl:when test="$abbr = 'BMD'">
				 Bermuda Dollar
			</xsl:when>
			<xsl:when test="$abbr = 'BND'">
				 Brunei Darussalam Dollar
			</xsl:when>
			<xsl:when test="$abbr = 'BOB'">
				 Bolivia Bolíviano
			</xsl:when>
			<xsl:when test="$abbr = 'BRL'">
				 Brazil Real
			</xsl:when>
			<xsl:when test="$abbr = 'BSD'">
				 Bahamas Dollar
			</xsl:when>
			<xsl:when test="$abbr = 'BTN'">
				 Bhutan Ngultrum
			</xsl:when>
			<xsl:when test="$abbr = 'BWP'">
				 Botswana Pula
			</xsl:when>
			<xsl:when test="$abbr = 'BYR'">
				 Belarus Ruble
			</xsl:when>
			<xsl:when test="$abbr = 'BZD'">
				 Belize Dollar
			</xsl:when>
			<xsl:when test="$abbr = 'CAD'">
				 Canada Dollar
			</xsl:when>
			<xsl:when test="$abbr = 'CDF'">
				 Congo"/Kinshasa Franc
			</xsl:when>
			<xsl:when test="$abbr = 'CHF'">
				 Switzerland Franc
			</xsl:when>
			<xsl:when test="$abbr = 'CLP'">
				 Chile Peso
			</xsl:when>
			<xsl:when test="$abbr = 'CNY'">
				 China Yuan Renminbi
			</xsl:when>
			<xsl:when test="$abbr = 'COP'">
				 Colombia Peso
			</xsl:when>
			<xsl:when test="$abbr = 'CRC'">
				 Costa Rica Colon
			</xsl:when>
			<xsl:when test="$abbr = 'CUC'">
				 Cuba Convertible Peso
			</xsl:when>
			<xsl:when test="$abbr = 'CUP'">
				 Cuba Peso
			</xsl:when>
			<xsl:when test="$abbr = 'CVE'">
				 Cape Verde Escudo
			</xsl:when>
			<xsl:when test="$abbr = 'CZK'">
				 Czech Republic Koruna
			</xsl:when>
			<xsl:when test="$abbr = 'DJF'">
				 Djibouti Franc
			</xsl:when>
			<xsl:when test="$abbr = 'DKK'">
				 Denmark Krone
			</xsl:when>
			<xsl:when test="$abbr = 'DOP'">
				 Dominican Republic Peso
			</xsl:when>
			<xsl:when test="$abbr = 'DZD'">
				 Algeria Dinar
			</xsl:when>
			<xsl:when test="$abbr = 'EGP'">
				 Egypt Pound
			</xsl:when>
			<xsl:when test="$abbr = 'ERN'">
				 Eritrea Nakfa
			</xsl:when>
			<xsl:when test="$abbr = 'ETB'">
				 Ethiopia Birr
			</xsl:when>
			<xsl:when test="$abbr = 'EUR'">
				 Euro Member Countries
			</xsl:when>
			<xsl:when test="$abbr = 'FJD'">
				 Fiji Dollar
			</xsl:when>
			<xsl:when test="$abbr = 'FKP'">
				 Falkland Islands (Malvinas) Pound
			</xsl:when>
			<xsl:when test="$abbr = 'GBP'">
				 United Kingdom Pound
			</xsl:when>
			<xsl:when test="$abbr = 'GEL'">
				 Georgia Lari
			</xsl:when>
			<xsl:when test="$abbr = 'GGP'">
				 Guernsey Pound
			</xsl:when>
			<xsl:when test="$abbr = 'GHS'">
				 Ghana Cedi
			</xsl:when>
			<xsl:when test="$abbr = 'GIP'">
				 Gibraltar Pound
			</xsl:when>
			<xsl:when test="$abbr = 'GMD'">
				 Gambia Dalasi
			</xsl:when>
			<xsl:when test="$abbr = 'GNF'">
				 Guinea Franc
			</xsl:when>
			<xsl:when test="$abbr = 'GTQ'">
				 Guatemala Quetzal
			</xsl:when>
			<xsl:when test="$abbr = 'GYD'">
				 Guyana Dollar
			</xsl:when>
			<xsl:when test="$abbr = 'HKD'">
				 Hong Kong Dollar
			</xsl:when>
			<xsl:when test="$abbr = 'HNL'">
				 Honduras Lempira
			</xsl:when>
			<xsl:when test="$abbr = 'HRK'">
				 Croatia Kuna
			</xsl:when>
			<xsl:when test="$abbr = 'HTG'">
				 Haiti Gourde
			</xsl:when>
			<xsl:when test="$abbr = 'HUF'">
				 Hungary Forint
			</xsl:when>
			<xsl:when test="$abbr = 'IDR'">
				 Indonesia Rupiah
			</xsl:when>
			<xsl:when test="$abbr = 'ILS'">
				 Israel Shekel
			</xsl:when>
			<xsl:when test="$abbr = 'IMP'">
				 Isle of Man Pound
			</xsl:when>
			<xsl:when test="$abbr = 'INR'">
				 India Rupee
			</xsl:when>
			<xsl:when test="$abbr = 'IQD'">
				 Iraq Dinar
			</xsl:when>
			<xsl:when test="$abbr = 'IRR'">
				 Iran Rial
			</xsl:when>
			<xsl:when test="$abbr = 'ISK'">
				 Iceland Krona
			</xsl:when>
			<xsl:when test="$abbr = 'JEP'">
				 Jersey Pound
			</xsl:when>
			<xsl:when test="$abbr = 'JMD'">
				 Jamaica Dollar
			</xsl:when>
			<xsl:when test="$abbr = 'JOD'">
				 Jordan Dinar
			</xsl:when>
			<xsl:when test="$abbr = 'JPY'">
				 Japan Yen
			</xsl:when>
			<xsl:when test="$abbr = 'KES'">
				 Kenya Shilling
			</xsl:when>
			<xsl:when test="$abbr = 'KGS'">
				 Kyrgyzstan Som
			</xsl:when>
			<xsl:when test="$abbr = 'KHR'">
				 Cambodia Riel
			</xsl:when>
			<xsl:when test="$abbr = 'KMF'">
				 Comoros Franc
			</xsl:when>
			<xsl:when test="$abbr = 'KPW'">
				 Korea (North) Won
			</xsl:when>
			<xsl:when test="$abbr = 'KRW'">
				 Korea (South) Won
			</xsl:when>
			<xsl:when test="$abbr = 'KWD'">
				 Kuwait Dinar
			</xsl:when>
			<xsl:when test="$abbr = 'KYD'">
				 Cayman Islands Dollar
			</xsl:when>
			<xsl:when test="$abbr = 'KZT'">
				 Kazakhstan Tenge
			</xsl:when>
			<xsl:when test="$abbr = 'LAK'">
				 Laos Kip
			</xsl:when>
			<xsl:when test="$abbr = 'LBP'">
				 Lebanon Pound
			</xsl:when>
			<xsl:when test="$abbr = 'LKR'">
				 Sri Lanka Rupee
			</xsl:when>
			<xsl:when test="$abbr = 'LRD'">
				 Liberia Dollar
			</xsl:when>
			<xsl:when test="$abbr = 'LSL'">
				 Lesotho Loti
			</xsl:when>
			<xsl:when test="$abbr = 'LYD'">
				 Libya Dinar
			</xsl:when>
			<xsl:when test="$abbr = 'MAD'">
				 Morocco Dirham
			</xsl:when>
			<xsl:when test="$abbr = 'MDL'">
				 Moldova Leu
			</xsl:when>
			<xsl:when test="$abbr = 'MGA'">
				 Madagascar Ariary
			</xsl:when>
			<xsl:when test="$abbr = 'MKD'">
				 Macedonia Denar
			</xsl:when>
			<xsl:when test="$abbr = 'MMK'">
				 Myanmar (Burma) Kyat
			</xsl:when>
			<xsl:when test="$abbr = 'MNT'">
				 Mongolia Tughrik
			</xsl:when>
			<xsl:when test="$abbr = 'MOP'">
				 Macau Pataca
			</xsl:when>
			<xsl:when test="$abbr = 'MRO'">
				 Mauritania Ouguiya
			</xsl:when>
			<xsl:when test="$abbr = 'MUR'">
				 Mauritius Rupee
			</xsl:when>
			<xsl:when test="$abbr = 'MVR'">
				 Maldives (Maldive Islands) Rufiyaa
			</xsl:when>
			<xsl:when test="$abbr = 'MWK'">
				 Malawi Kwacha
			</xsl:when>
			<xsl:when test="$abbr = 'MXN'">
				 Mexico Peso
			</xsl:when>
			<xsl:when test="$abbr = 'MYR'">
				 Malaysia Ringgit
			</xsl:when>
			<xsl:when test="$abbr = 'MZN'">
				 Mozambique Metical
			</xsl:when>
			<xsl:when test="$abbr = 'NAD'">
				 Namibia Dollar
			</xsl:when>
			<xsl:when test="$abbr = 'NGN'">
				 Nigeria Naira
			</xsl:when>
			<xsl:when test="$abbr = 'NIO'">
				 Nicaragua Cordoba
			</xsl:when>
			<xsl:when test="$abbr = 'NOK'">
				 Norway Krone
			</xsl:when>
			<xsl:when test="$abbr = 'NPR'">
				 Nepal Rupee
			</xsl:when>
			<xsl:when test="$abbr = 'NZD'">
				 New Zealand Dollar
			</xsl:when>
			<xsl:when test="$abbr = 'OMR'">
				 Oman Rial
			</xsl:when>
			<xsl:when test="$abbr = 'PAB'">
				 Panama Balboa
			</xsl:when>
			<xsl:when test="$abbr = 'PEN'">
				 Peru Sol
			</xsl:when>
			<xsl:when test="$abbr = 'PGK'">
				 Papua New Guinea Kina
			</xsl:when>
			<xsl:when test="$abbr = 'PHP'">
				 Philippines Peso
			</xsl:when>
			<xsl:when test="$abbr = 'PKR'">
				 Pakistan Rupee
			</xsl:when>
			<xsl:when test="$abbr = 'PLN'">
				 Poland Zloty
			</xsl:when>
			<xsl:when test="$abbr = 'PYG'">
				 Paraguay Guarani
			</xsl:when>
			<xsl:when test="$abbr = 'QAR'">
				 Qatar Riyal
			</xsl:when>
			<xsl:when test="$abbr = 'RON'">
				 Romania New Leu
			</xsl:when>
			<xsl:when test="$abbr = 'RSD'">
				 Serbia Dinar
			</xsl:when>
			<xsl:when test="$abbr = 'RUB'">
				 Russia Ruble
			</xsl:when>
			<xsl:when test="$abbr = 'RWF'">
				 Rwanda Franc
			</xsl:when>
			<xsl:when test="$abbr = 'SAR'">
				 Saudi Arabia Riyal
			</xsl:when>
			<xsl:when test="$abbr = 'SBD'">
				 Solomon Islands Dollar
			</xsl:when>
			<xsl:when test="$abbr = 'SCR'">
				 Seychelles Rupee
			</xsl:when>
			<xsl:when test="$abbr = 'SDG'">
				 Sudan Pound
			</xsl:when>
			<xsl:when test="$abbr = 'SEK'">
				 Sweden Krona
			</xsl:when>
			<xsl:when test="$abbr = 'SGD'">
				 Singapore Dollar
			</xsl:when>
			<xsl:when test="$abbr = 'SHP'">
				 Saint Helena Pound
			</xsl:when>
			<xsl:when test="$abbr = 'SLL'">
				 Sierra Leone Leone
			</xsl:when>
			<xsl:when test="$abbr = 'SOS'">
				 Somalia Shilling
			</xsl:when>
			<xsl:when test="$abbr = 'SPL'">
				 Seborga Luigino
			</xsl:when>
			<xsl:when test="$abbr = 'SRD'">
				 Suriname Dollar
			</xsl:when>
			<xsl:when test="$abbr = 'STD'">
				 São Tomé and Príncipe Dobra
			</xsl:when>
			<xsl:when test="$abbr = 'SVC'">
				 El Salvador Colon
			</xsl:when>
			<xsl:when test="$abbr = 'SYP'">
				 Syria Pound
			</xsl:when>
			<xsl:when test="$abbr = 'SZL'">
				 Swaziland Lilangeni
			</xsl:when>
			<xsl:when test="$abbr = 'THB'">
				 Thailand Baht
			</xsl:when>
			<xsl:when test="$abbr = 'TJS'">
				 Tajikistan Somoni
			</xsl:when>
			<xsl:when test="$abbr = 'TMT'">
				 Turkmenistan Manat
			</xsl:when>
			<xsl:when test="$abbr = 'TND'">
				 Tunisia Dinar
			</xsl:when>
			<xsl:when test="$abbr = 'TOP'">
				 Tonga Pa'anga
			</xsl:when>
			<xsl:when test="$abbr = 'TRY'">
				 Turkey Lira
			</xsl:when>
			<xsl:when test="$abbr = 'TTD'">
				 Trinidad and Tobago Dollar
			</xsl:when>
			<xsl:when test="$abbr = 'TVD'">
				 Tuvalu Dollar
			</xsl:when>
			<xsl:when test="$abbr = 'TWD'">
				 Taiwan New Dollar
			</xsl:when>
			<xsl:when test="$abbr = 'TZS'">
				 Tanzania Shilling
			</xsl:when>
			<xsl:when test="$abbr = 'UAH'">
				 Ukraine Hryvnia
			</xsl:when>
			<xsl:when test="$abbr = 'UGX'">
				 Uganda Shilling
			</xsl:when>
			<xsl:when test="$abbr = 'USD'">
				 United States Dollar
			</xsl:when>
			<xsl:when test="$abbr = 'UYU'">
				 Uruguay Peso
			</xsl:when>
			<xsl:when test="$abbr = 'UZS'">
				 Uzbekistan Som
			</xsl:when>
			<xsl:when test="$abbr = 'VEF'">
				 Venezuela Bolivar
			</xsl:when>
			<xsl:when test="$abbr = 'VND'">
				 Viet Nam Dong
			</xsl:when>
			<xsl:when test="$abbr = 'VUV'">
				 Vanuatu Vatu
			</xsl:when>
			<xsl:when test="$abbr = 'WST'">
				 Samoa Tala
			</xsl:when>
			<xsl:when test="$abbr = 'XAF'">
				 Communauté Financière Africaine (BEAC) CFA Franc BEAC
			</xsl:when>
			<xsl:when test="$abbr = 'XCD'">
				 East Caribbean Dollar
			</xsl:when>
			<xsl:when test="$abbr = 'XDR'">
				 International Monetary Fund (IMF) Special Drawing Rights
			</xsl:when>
			<xsl:when test="$abbr = 'XOF'">
				 Communauté Financière Africaine (BCEAO) Franc
			</xsl:when>
			<xsl:when test="$abbr = 'XPF'">
				 Comptoirs Français du Pacifique (CFP) Franc
			</xsl:when>
			<xsl:when test="$abbr = 'YER'">
				 Yemen Rial
			</xsl:when>
			<xsl:when test="$abbr = 'ZAR'">
				 South Africa Rand
			</xsl:when>
			<xsl:when test="$abbr = 'ZMW'">
				 Zambia Kwacha
			</xsl:when>
			<xsl:when test="$abbr = 'ZWD'">
				 Zimbabwe Dollar
			</xsl:when>
			<xsl:when test="$abbr = 'N/A'">
				 N/A
			</xsl:when>
			</xsl:choose>
			
			</xsl:when>
			
			
			</xsl:choose>
			
			</xsl:template>
</xsl:stylesheet>