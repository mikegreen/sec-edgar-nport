<!DOCTYPE xsl:stylesheet  [
<!ENTITY ndash "&#8211;">
]>
<xsl:stylesheet
	version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:m1="http://www.sec.gov/edgar/nport"
	xmlns:ns1="http://www.sec.gov/edgar/common"
	xmlns:n1="http://www.sec.gov/edgar/common_drp"
	xmlns:ns2="http://www.sec.gov/edgar/statecodes"
	xmlns:ns3="http://www.sec.gov/edgar/regacommon">

	<!-- Item 1 templates -->
	<xsl:template name="PartC">

<xsl:for-each select="m1:invstOrSecs/m1:invstOrSec">

	 <xsl:choose>
	 <xsl:when test="m1:notDissem">

<br/>
		<table>
			<tr><h1><xsl:value-of select ="$submissionType"/>: Part D: Miscellaneous Securities</h1></tr>
		</table>

		<table>
			<tr>
				<td>
					For reports filed for the last month of each fiscal quarter, report
					miscellaneous securities, if any, using the same Item numbers and
					reporting the same information that would be reported for each
					investment in Part C if it were not a miscellaneous security.
					Information reported in this Item will be nonpublic.
				</td>
			</tr>
		</table>
		
				<h4>Item D.1. Identification of investment.</h4>
		<xsl:call-template name="c1">
		<xsl:with-param name="path" select="."/>
		</xsl:call-template>
		
		<h4>Item D.2. Amount of each investment.</h4>
		<xsl:call-template name="c2">
		<xsl:with-param name="path" select="."/>
		</xsl:call-template>
		
		<h4>Item D.3. Indicate payoff profile among the following categories (long, short, N/A).  For derivatives, respond N/A to this Item and respond to the relevant payoff profile question in Item D.11.</h4>
		<xsl:call-template name="c3" >
		<xsl:with-param name="yesNoElement" select="m1:payoffProfile"/>
		</xsl:call-template>
		
		<h4>Item D.4. Asset and issuer type. Select the category that most closely identifies the instrument among each of the following:  </h4>
		<xsl:call-template name="c4">
		<xsl:with-param name="path" select="."/>
		</xsl:call-template>
		
		<h4>Item D.5. Country of investment or issuer.    </h4>
		<xsl:call-template name="c5">
		<xsl:with-param name="path" select="."/>
		</xsl:call-template>
		
		<h4>Item D.6.   </h4>
		<xsl:call-template name="c6" />
		
		<h4>Item D.7. Liquidity classification information.  </h4>
		<xsl:call-template name="c7" />

		
		<h4>Item D.8.  </h4>
		<xsl:call-template name="c8" />

		<h4>Item D.9. For debt securities </h4>
		<xsl:call-template name="c9" >
		<xsl:with-param name="path" select="m1:debtSec"/>
		</xsl:call-template>

		<h4>Item D.10. For repurchase and reverse repurchase agreements, also provide: </h4>
		<xsl:call-template name="c10" />

		<h4>Item D.11. For derivatives, also provide:  </h4>
		<xsl:call-template name="c11">
		<xsl:with-param name="path" select="m1:derivativeInfo"/>
	   </xsl:call-template>

		<table>
		<h4>Item D.12. Securities lending.  </h4>
		<xsl:call-template name="c12" />
		</table>
	 
	</xsl:when>
  <xsl:otherwise>
	
	<br/>
		<table>
			<tr><h1><xsl:value-of select ="$submissionType"/>: Part C: Schedule of Portfolio Investments</h1></tr>
		</table>

		<table>
			<tr>
				<td>
					For each investment held by the Fund and its consolidated
					subsidiaries,
					disclose the information requested in Part C. A Fund
					may report
					information for securities in an aggregate amount not
					exceeding five
					percent of its total assets as miscellaneous
					securities in Part D in
					lieu of reporting those securities in Part
					C, provided that the
					securities so listed are not restricted, have
					been held for not
					more
					than one year prior to the end of the
					reporting period covered by
					this report, and have not been
					previously reported by name to
					the shareholders of the Fund or
					to any exchange, or set forth in any
					registration statement,
					application, or report to shareholders or
					otherwise made available
					to the public.
				</td>
			</tr>
		</table>
   

		<h4>Item C.1. Identification of investment.</h4>
		<xsl:call-template name="c1">
		<xsl:with-param name="path" select="."/>
		</xsl:call-template>
		
		<h4>Item C.2. Amount of each investment.</h4>
		<xsl:call-template name="c2">
		<xsl:with-param name="path" select="."/>
		</xsl:call-template>
		
		<h4>Item C.3. Indicate payoff profile among the following categories (long, short, N/A).  For derivatives, respond N/A to this Item and respond to the relevant payoff profile question in Item C.11.</h4>
		<xsl:call-template name="c3" >
		<xsl:with-param name="yesNoElement" select="m1:payoffProfile"/>
		</xsl:call-template>
		
		<h4>Item C.4. Asset and issuer type. Select the category that most closely identifies the instrument among each of the following: </h4>
		<xsl:call-template name="c4">
		<xsl:with-param name="path" select="."/>
		</xsl:call-template>
		
		<h4>Item C.5. Country of investment or issuer.    </h4>
		<xsl:call-template name="c5">
		<xsl:with-param name="path" select="."/>
		</xsl:call-template>
		
		<h4>Item C.6.   </h4>
		<xsl:call-template name="c6" />
		
		<h4>Item C.7. Liquidity classification information.  </h4>
		<xsl:call-template name="c7" />

		
		<h4>Item C.8.  </h4>
		<xsl:call-template name="c8" />

		<h4>Item C.9. For debt securities </h4>
		<xsl:call-template name="c9" >
		<xsl:with-param name="path" select="m1:debtSec"/>
		</xsl:call-template>

		<h4>Item C.10. For repurchase and reverse repurchase agreements, also provide: </h4>
		<xsl:call-template name="c10" />

		<h4>Item C.11. For derivatives, also provide:  </h4>
		<xsl:call-template name="c11">
		<xsl:with-param name="path" select="m1:derivativeInfo"/>
	   </xsl:call-template>

		<table>
		<h4>Item C.12. Securities lending.  </h4>
		<xsl:call-template name="c12" />
		</table>
	  </xsl:otherwise>
  </xsl:choose>
		
</xsl:for-each>

	</xsl:template>

	<xsl:template name="c1">
	<xsl:param name="path"/>
	<table>
			<tr>
				<td class="label">a. Name of issuer (if any). 
				</td>
				<td>
						<div class="fakeBox">
							<xsl:value-of select="$path/m1:name" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>

			<tr>
				<td class="label">b. LEI (if any) of issuer.  In the case of a holding in a fund that is a series of a series trust, report the LEI of the series.
				</td>
				<td>
						<div class="fakeBox2">
							<xsl:value-of select="$path/m1:lei" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>

			<tr>
				<td class="label">c. Title of the issue or description of the investment.
				</td>
				<td>
						<div class="fakeBox">
							<xsl:value-of select="$path/m1:title" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>

			<tr>
				<td class="label">d. CUSIP (if any).
				</td>
				<td>
						<div class="fakeBox">
							<xsl:value-of select="$path/m1:cusip" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			</table>
		
			<p>e. At least one of the following other identifiers:</p>
			
		<xsl:for-each select="$path/m1:identifiers/m1:isin">
			<xsl:call-template name="identifierInfo">
			<xsl:with-param name="ident" select="."/>
			<xsl:with-param name="id" select="'isin1'"/>
			</xsl:call-template>
		</xsl:for-each>
		
		<xsl:for-each select="$path/m1:identifiers/m1:ticker">	
			<xsl:call-template name="identifierInfo">
			<xsl:with-param name="ident" select="."/>
			<xsl:with-param name="id" select="'ticker1'"/>
			</xsl:call-template>
		</xsl:for-each>	
			
		<xsl:for-each select="$path/m1:identifiers/m1:other">	
			<xsl:call-template name="identifierInfo">
			<xsl:with-param name="ident" select="."/>
			<xsl:with-param name="id" select="'other1'"/>
			</xsl:call-template>
		</xsl:for-each>	

	</xsl:template>

	<xsl:template name="c2">
   <xsl:param name="path"/>
	
	<p>a. Balance. Indicate whether amount is expressed in number of shares, principal amount, or other units.
	 For derivatives contracts, as applicable, provide the number of contracts.</p>
		<table>
		<tr>
			<td class="label">Balance
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$path/m1:balance" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>

		<tr>
			<td class="label">Units
			</td>
			<td>
				<div class="fakeBox4">
				<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr"		select="$path/m1:units" />
							<xsl:with-param name="category"	select="'UNIT_TYPE'" />
				</xsl:call-template>
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>

		<tr>
			<td class="label">Description of other units.
			</td>
			<td>
				<div class="fakeBox">
					<xsl:value-of select="$path/m1:descOthUnits" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		<tr>
			<td class="label">b. Currency. Indicate the currency in which the investment is denominated.  
			</td>
			<td>
				<div class="fakeBox2">
					<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr" select="$path/m1:curCd" />
							<xsl:with-param name="category" select="'ISO_CURRENCY_CODE'" />
					</xsl:call-template>
					<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr"		select="$path/m1:currencyConditional/@curCd" />
							<xsl:with-param name="category"	select="'ISO_CURRENCY_CODE'" />
					</xsl:call-template>
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		<tr>
			<td class="label">c. Value.  Report values in U.S. dollars. If currency of investment is not denominated in U.S. dollars, provide the exchange rate used to calculate value.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$path/m1:valUSD" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		<xsl:if test="$path/m1:currencyConditional">

		<tr>
			<td class="label">Exchange rate.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$path/m1:currencyConditional/@exchangeRt" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
	   </xsl:if>
		<tr>
			<td class="label">d. Percentage value compared to net assets of the Fund.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$path/m1:pctVal" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>				
	</table>
	</xsl:template>

	<xsl:template name="c3">
		<xsl:param name="yesNoElement" />
		<table>
			<tr>
				<td class="label">
					Payoff profile.
				</td>
				<td>
					<span class="yesNo">
						<xsl:choose>
							<xsl:when test="count($yesNoElement) &gt; 0">
								<xsl:choose>
									<xsl:when test="string($yesNoElement) = 'Long'">
										<img
											src="Images/radio-checked.jpg"
											alt="Long is checked" />
										Long
										<img
											src="Images/radio-unchecked.jpg"
											alt="Short is not checked" />
										Short
										<img
											src="Images/radio-unchecked.jpg"
											alt="N/A is not checked" />
										N/A
									</xsl:when>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="string($yesNoElement) = 'Short'">
										<img
											src="Images/radio-unchecked.jpg"
											alt="Long is not checked" />
										Long
										<img
											src="Images/radio-checked.jpg"
											alt="Short is checked" />
										Short
										<img
											src="Images/radio-unchecked.jpg"
											alt="N/A is not checked" />
										N/A
									</xsl:when>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="string($yesNoElement) = 'N/A'">
										<img
											src="Images/radio-unchecked.jpg"
											alt="Long is not checked" />
										Long
										<img
											src="Images/radio-unchecked.jpg"
											alt="Short is not checked" />
										Short
										<img
											src="Images/radio-checked.jpg"
											alt="N/A is checked" />
										N/A
									</xsl:when>
								</xsl:choose>
							</xsl:when>
							<xsl:otherwise>
								<img
									src="Images/radio-unchecked.jpg"
									alt="Long is not checked" />
								Long
								<img
									src="Images/radio-unchecked.jpg"
									alt="Short is not checked" />
								Short
								<img
									src="Images/radio-unchecked.jpg"
									alt="N/A is not checked" />
								N/A
							</xsl:otherwise>
						</xsl:choose>
					</span>
				</td>
			</tr>
		</table>
	</xsl:template>

	<xsl:template name="c4">
	<xsl:param name="path"/>
   <table>
   	<tr>
			<td class="label">a.	Asset type (short-term investment vehicle (e.g., money market fund, liquidity pool, or other cash management vehicle), repurchase agreement, equity-common, equity-preferred, debt, derivative-commodity, derivative-credit, derivative-equity, derivative-foreign exchange, derivative-interest rate, derivatives-other, structured note, loan, ABS-mortgage backed security, ABS-asset backed commercial paper, ABS-collateralized bond/debt obligation, ABS-other, commodity, real estate, other).  If “other,” provide a brief description. 
			</td>
			<td>
				<div class="fakeBox">
					<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr"		select="$path/m1:assetCat" />
							<xsl:with-param name="category"	select="'ASSET_CATEGORY_TYPE'" />
					</xsl:call-template>
					<xsl:value-of select="$path/m1:assetConditional/@otherCat" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>				

		<xsl:if test="$path/m1:assetConditional/@otherCat">
   	<tr>
			<td class="label">If "other," provide a brief description.
			</td>
			<td>
				<div class="fakeBox">
					<xsl:value-of select="$path/m1:assetConditional/@desc" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>	
		</xsl:if>	

	
   	<tr>
			<td class="label">b.	Issuer type (corporate, U.S. Treasury, U.S. government agency, U.S. government sponsored entity, municipal, non-U.S. sovereign, private fund, registered fund, other).  If “other,” provide a brief description.
			</td>
			<td>
				<div class="fakeBox">
					<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr"		select="$path/m1:issuerCat" />
							<xsl:with-param name="category"	select="'ISSUER_CATEGORY_TYPE'" />
					</xsl:call-template>
					<xsl:value-of select="$path/m1:issuerConditional/@otherCat" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>				

      <xsl:if test="$path/m1:issuerConditional/@otherCat">
   	<tr>
			<td class="label">If "other," provide a brief description.
			</td>
			<td>
				<div class="fakeBox">
					<xsl:value-of select="$path/m1:issuerConditional/@desc" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>		
		</xsl:if>

   	</table>
   
	</xsl:template>

	<xsl:template name="c5">
	<xsl:param name="path"/>
		<table>
			<tr>
				<td class="label">a. Report the ISO country code that corresponds to the country where the issuer is organized. </td>
				<td>
					<div class="fakeBox">
						<xsl:call-template name="stateDescription">
							<xsl:with-param name="stateCode"		select="string($path/m1:invCountry)" />
						</xsl:call-template>
						<span>
							<xsl:text>&#160;</xsl:text>
						</span>
					</div>
				</td>
			</tr>

			<tr>
				<td class="label">b. If different from the country where the issuer is organized, also report the ISO country code that corresponds to the country of investment or issuer based on the concentrations of the risk and economic exposure of the investments. </td>
				<td>
					<div class="fakeBox">
						<xsl:call-template name="stateDescription">
							<xsl:with-param name="stateCode"		select="string($path/m1:invOthCountry)" />
						</xsl:call-template>
						<span>
							<xsl:text>&#160;</xsl:text>
						</span>
					</div>
				</td>
			</tr>
		</table>

	</xsl:template>

	<xsl:template name="c6">
	<table>
		<tr>
			<td class="label">Is the investment a Restricted Security? </td>
			<td>
				<xsl:call-template name="yesNoRadio">
					<xsl:with-param	name="yesNoElement"		select="m1:isRestrictedSec" />
				</xsl:call-template>
			</td>
		</tr>
		</table>
	</xsl:template>

	<xsl:template name="c7">
	
		<p>For portfolio investments of open-end management investment companies, provide the liquidity classification for each portfolio investment among the following categories as specified in rule 22e-4 [17 CFR 270.22e-4]:<br/>
		 a. Highly Liquid Investments<br/>
		 b. Moderately Liquid Investments<br/>
		 c. Less Liquid Investments<br/>
	    d. Illiquid Investments</p>
		<table>
		<tr>
			<td class="label">Category.
			</td>
			<td>
				<div class="fakeBox2">
					<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr"		select="m1:fundCat" />
							<xsl:with-param name="category"	select="'LIQUID_FUND_CATEGORY_TYPE'" />
					</xsl:call-template>
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		</table>	
	</xsl:template>

	<xsl:template name="c8">
	<xsl:variable name="yesNoElement"	select="m1:fairValLevel" />
		<table>
			<tr>
				<td class="label">
					Indicate the level within the fair value hierarchy in which the fair value measurements fall pursuant to U.S. Generally Accepted Accounting Principles 7(ASC 820, Fair Value Measurement).  [1/2/3]  Report "N/A" if the investment does not have a level associated with it (i.e., net asset value used as the practical expedient).
				</td>
				<td>
					<span class="yesNo">
						<xsl:choose>
							<xsl:when test="count($yesNoElement) &gt; 0">
								<xsl:choose>
									<xsl:when test="string($yesNoElement) = '1'">
										<img
											src="Images/radio-checked.jpg"
											alt="1 is checked" />
										1
										<img
											src="Images/radio-unchecked.jpg"
											alt="2 is not checked" />
										2
										<img
											src="Images/radio-unchecked.jpg"
											alt="3 is not checked" />
										3
										<img
											src="Images/radio-unchecked.jpg"
											alt="N/A is not checked" />
										N/A										
									</xsl:when>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="string($yesNoElement) = '2'">
										<img
											src="Images/radio-unchecked.jpg"
											alt="1 is not checked" />
										1
										<img
											src="Images/radio-checked.jpg"
											alt="2 is checked" />
										2
										<img
											src="Images/radio-unchecked.jpg"
											alt="3 is not checked" />
										3
										<img
											src="Images/radio-unchecked.jpg"
											alt="N/A is not checked" />
										N/A										
									</xsl:when>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="string($yesNoElement) = '3'">
										<img
											src="Images/radio-unchecked.jpg"
											alt="1 is not checked" />
										1
										<img
											src="Images/radio-unchecked.jpg"
											alt="2 is not checked" />
										2
										<img
											src="Images/radio-checked.jpg"
											alt="3 is checked" />
										3
										<img
											src="Images/radio-unchecked.jpg"
											alt="N/A is not checked" />
										N/A										
									</xsl:when>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="string($yesNoElement) = 'N/A'">
										<img
											src="Images/radio-unchecked.jpg"
											alt="1 is not checked" />
										1
										<img
											src="Images/radio-unchecked.jpg"
											alt="2 is not checked" />
										2
										<img
											src="Images/radio-unchecked.jpg"
											alt="3 is not checked" />
										3
										<img
											src="Images/radio-checked.jpg"
											alt="N/A is checked" />
										N/A										
									</xsl:when>
								</xsl:choose>
							</xsl:when>
							<xsl:otherwise>
								<img
									src="Images/radio-unchecked.jpg"
									alt="1 is not checked" />
								1
								<img
									src="Images/radio-unchecked.jpg"
									alt="Short is not checked" />
								2
								<img
									src="Images/radio-unchecked.jpg"
									alt="3 is not checked" />
								3
								<img
									src="Images/radio-unchecked.jpg"
									alt="N/A is not checked" />
								N/A										
							</xsl:otherwise>
						</xsl:choose>
					</span>
				</td>
			</tr>
		</table>
	</xsl:template>

	<xsl:template name="c9">
			<xsl:param name="path"/>
			
		<p>For debt securities, also provide: </p>
		<table>
	
		<tr>
			<td class="label">a.	Maturity date.
			</td>
			<td>
				<div class="fakeBox2">
					<xsl:value-of select="$path/m1:maturityDt" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		</table>

		<p>b.	Coupon.</p>
	
		<table>
		<tr>
			<td class="label">i. Select the category that most closely reflects the coupon type among the following (fixed, floating, variable, none).
			</td>
			<td>
				<div class="fakeBox2">
					<xsl:value-of select="$path/m1:couponKind" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>

		<tr>
			<td class="label">ii. Annualized rate.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$path/m1:annualizedRt" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>

		<tr>
			<td class="label">c.	Currently in default? [Y/N]</td>
			<td>
				<xsl:call-template name="yesNoRadio">
					<xsl:with-param		name="yesNoElement"			select="$path/m1:isDefault" />
				</xsl:call-template>
			</td>
		</tr>
		
		<tr>
			<td class="label">d.	Are there any interest payments in arrears or have any coupon payments been legally deferred by the issuer? [Y/N]    </td>
			<td>
				<xsl:call-template name="yesNoRadio">
					<xsl:with-param		name="yesNoElement"	select="$path/m1:areIntrstPmntsInArrs" />
				</xsl:call-template>
			</td>
		</tr>
		
		<tr>
			<td class="label">e.	Is any portion of the interest paid in kind? [Y/N] Enter "N" if the interest may be paid in kind but is not actually paid in kind or if the Fund has the option of electing in-kind payment and has elected to be paid in-kind. </td>
			<td>
				<xsl:call-template name="yesNoRadio">
					<xsl:with-param			name="yesNoElement"		select="$path/m1:isPaidKind" />
				</xsl:call-template>
			</td>
		</tr>		
			</table>
		<p>f. For convertible securities, also provide:</p>
		<table>
		<tr>
			<td class="label">i.	Mandatory convertible? [Y/N]   </td>
			<td>
				<xsl:call-template name="yesNoRadio">
					<xsl:with-param	name="yesNoElement"		select="$path/m1:isMandataryConvrtbl" />
				</xsl:call-template>
			</td>
		</tr>

		<tr>
			<td class="label">ii.	Contingent convertible? [Y/N]     </td>
			<td>
				<xsl:call-template name="yesNoRadio">
					<xsl:with-param		name="yesNoElement"	select="$path/m1:isContngtConvrtbl" />
				</xsl:call-template>
			</td>
		</tr>				
		</table>
	
	<p>iii. Description of the reference instrument, including the name of issuer, title of issue, and currency in 
	 which denominated, as well as CUSIP of reference instrument, ISIN (if CUSIP is not available), ticker 
	 (if CUSIP and ISIN are not available), or other identifier (if CUSIP, ISIN, and ticker are not available).<br/>
	  If other identifier provided, indicate the type of identifier used.</p>
		<table>
		<tr>
			<td class="label">Name of issuer.
			</td>
			<td>
				<div class="fakeBox">
					<xsl:value-of select="$path/m1:name" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		<tr>
			<td class="label">Title of issue.
			</td>
			<td>
				<div class="fakeBox">
					<xsl:value-of select="$path/m1:title" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		<tr>
			<td class="label">Currency in which denominated.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr"		select="$path/m1:curCd" />
							<xsl:with-param name="category"	select="'ISO_CURRENCY_CODE'" />
					</xsl:call-template>
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		</table>
		
		<p>At least one of the following other identifiers:</p>
		
		<xsl:for-each select="$path/m1:identifiers/m1:cusip">
		<xsl:call-template name="identifierInfo">
		<xsl:with-param name="ident" select="."/>
		<xsl:with-param name="id" select="'cusip'"/>
		</xsl:call-template>
		</xsl:for-each>
		
		<xsl:for-each select="$path/m1:identifiers/m1:isin">
		<xsl:call-template name="identifierInfo">
		<xsl:with-param name="ident" select="."/>
		<xsl:with-param name="id" select="'isin2'"/>
		</xsl:call-template>
		</xsl:for-each>
		
		<xsl:for-each select="$path/m1:identifiers/m1:ticker">
		<xsl:call-template name="identifierInfo">
		<xsl:with-param name="ident" select="."/>
		<xsl:with-param name="id" select="'ticker2'"/>
		</xsl:call-template>
		</xsl:for-each>
		
		<xsl:for-each select="$path/m1:identifiers/m1:other">
		<xsl:call-template name="identifierInfo">
		<xsl:with-param name="ident" select="."/>
		<xsl:with-param name="id" select="'other2'"/>
		</xsl:call-template>
		</xsl:for-each>
		
	<xsl:for-each select="$path/m1:currencyInfos/m1:currencyInfo">
			<p>iv.	Conversion ratio per US$1000 notional, or, if bond currency is not in U.S. dollars, per 1000 units 
			of the relevant currency, indicating the relevant currency. If there is more than one conversion ratio, provide
			each conversion ratio.
				</p>
			<table>
			<tr>
				<td>
					Bond Currency Record:
					<xsl:value-of select="position()"></xsl:value-of>
				</td>
			</tr>
			<tr>
				<td class="label">Conversion ratio per 1000 units
				</td>
				<td>
					<div class="fakeBox4">
						<xsl:value-of select="@convRatio" />
						<span>
							<xsl:text>&#160;</xsl:text>
						</span>
					</div>
				</td>
			</tr>
			<tr>
				<td class="label">ISO Currency Code
				</td>
				<td>
					<div class="fakeBox2">
						<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr"		select="@curCd" />
							<xsl:with-param name="category"	select="'ISO_CURRENCY_CODE'" />
					</xsl:call-template>
						<span>
							<xsl:text>&#160;</xsl:text>
						</span>
					</div>
				</td>
			</tr>
			</table>
</xsl:for-each>	
		<table>
		<tr>
			<td class="label">v. Delta (if applicable).
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$path/m1:delta" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		</table>
	
	</xsl:template>

	<xsl:template name="c10">
   <xsl:variable name="path" select="m1:repurchaseAgrmt"/>
		<table>
		<tr>
			<td class="label">
				a. Select the category that reflects the transaction (repurchase,
				reverse repurchase). Select "repurchase agreement" if the Fund is
				the cash lender and receives collateral. Select "reverse repurchase
				agreement" if the Fund is the cash borrower and posts collateral.
			</td>
			<td>
				<span class="yesNo">
					<xsl:choose>
						<xsl:when test="count($path/m1:transCat) &gt; 0">
							<xsl:choose>
								<xsl:when test="string($path/m1:transCat) = 'Repurchase'">
									<img
										src="Images/radio-checked.jpg"
										alt="Repurchase is checked" />
									Repurchase
									<img
										src="Images/radio-unchecked.jpg"
										alt="Reverse repurchase is not checked" />
									Reverse repurchase
								</xsl:when>
							</xsl:choose>
							<xsl:choose>
								<xsl:when test="string($path/m1:transCat) = 'Reverse repurchase'">
									<img
										src="Images/radio-unchecked.jpg"
										alt="Repurchase is not checked" />
									Repurchase
									<img
										src="Images/radio-checked.jpg"
										alt="Reverse repurchase is checked" />
									Reverse repurchase
								</xsl:when>
							</xsl:choose>
						</xsl:when>
						<xsl:otherwise>
							<img
								src="Images/radio-unchecked.jpg"
								alt="Repurchase is not checked" />
							Repurchase
							<img
								src="Images/radio-unchecked.jpg"
								alt="Reverse repurchase is not checked" />
							Reverse repurchase
						</xsl:otherwise>
					</xsl:choose>
				</span>
			</td>
		</tr>
			</table>
		<p>b.	Counterparty.</p>
		
		<xsl:choose>
		<xsl:when test="$path/m1:clearedCentCparty">
		<table>
		<tr>
			<td class="label">i.	Cleared by central counterparty? [Y/N] If  Y, provide the name of the central counterparty. </td>
			<td>
				<xsl:call-template name="yesNoRadio">
					<xsl:with-param	name="yesNoElement"	select="$path/m1:clearedCentCparty/@isCleared"  />
				</xsl:call-template>
			</td>
		</tr>
	
		<tr>
			<td class="label">Value
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$path/m1:clearedCentCparty/@centralCounterparty" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		</table>
		</xsl:when>
		<xsl:otherwise>
		<table>
		<tr>
			<td class="label">i.	Cleared by central counterparty? [Y/N] If  Y, provide the name of the central counterparty. </td>
			<td>
				<xsl:call-template name="yesNoRadio">
					<xsl:with-param	name="yesNoElement"	select="$path/m1:notClearedCentCparty/@isCleared"  />
				</xsl:call-template>
			</td>
		</tr>
		</table>
		<p>ii. If N, provide the name and LEI (if any) of counterparty.
			</p>
	<table>
	<xsl:for-each select="$path/m1:notClearedCentCparty/m1:counterpartyInfos/m1:counterpartyInfo">
		<tr>
			<td class="label">Name of counterparty.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="@name" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		<tr>
			<td class="label">LEI (if any) of counterparty.
			</td>
			<td>
				<div class="fakeBox2">
					<xsl:value-of select="@lei" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
	</xsl:for-each>
	</table>
		</xsl:otherwise>
		</xsl:choose>
	<table>
		<tr>
			<td class="label">c. Tri-party?     </td>
			<td>
				<xsl:call-template name="yesNoRadio">
					<xsl:with-param		name="yesNoElement"				select="$path/m1:isTriParty" />
				</xsl:call-template>
			</td>
		</tr>

		<tr>
			<td class="label">d. Repurchase rate.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$path/m1:repurchaseRt" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		<tr>
			<td class="label">e. Maturity date.
			</td>
			<td>
				<div class="fakeBox2">
					<xsl:value-of select="$path/m1:maturityDt" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
	</table>
		<p>f. Provide the following information concerning the securities subject to the repurchase agreement 
		(i.e., collateral).  If multiple securities of an issuer are subject to the repurchase agreement, those 
		securities may be aggregated in responding to Items C.10.f.i-iii. </p>		
		<table>

		<xsl:for-each select="$path/m1:repurchaseCollaterals/m1:repurchaseCollateral">
		<tr>
			<td class="label">i. Principal amount.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="m1:principalAmt" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		<tr>
			<td class="label">ISO Currency Code
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr"		select="m1:principalCd" />
							<xsl:with-param name="category"	select="'ISO_CURRENCY_CODE'" />
					</xsl:call-template>
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		<tr>
			<td class="label">ii. Value of collateral.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="m1:collateralVal" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		<tr>
			<td class="label">ISO Currency Code
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr"		select="m1:collateralCd" />
							<xsl:with-param name="category"	select="'ISO_CURRENCY_CODE'" />
					</xsl:call-template>
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>	
		
		<tr>
			<td class="label">iii. Category of investments that most closely represents the collateral, selected from among the following (asset-backed securities; agency collateralized mortgage obligations; agency debentures and agency strips; agency mortgage-backed securities; private label collateralized mortgage obligations; corporate debt securities; equities; money market; U.S. Treasuries (including strips); other instrument).  If "other instrument," include a brief description, including, if applicable, whether it is a collateralized debt obligation, municipal debt, whole loan, or international debt.
			</td>
			<td>
				<div class="fakeBox4">
				<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr"		select="m1:invstCat" />
							<xsl:with-param name="category"	select="'REPURCHASE_CATEGORY_TYPE'" />
					</xsl:call-template>
					<xsl:value-of select="m1:invstCatOther/@otherCat" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		<xsl:if test="m1:invstCatOther">
		<tr>
			<td class="label">If "other instrument," include a brief description
			</td>
			<td>
				<div class="fakeBox">
					<xsl:value-of select="m1:invstCatOther/@desc" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>			
		</xsl:if>
		</xsl:for-each>
		</table>
			
	</xsl:template>

		<xsl:template name="c11">
	<xsl:param name="path"/>
	
	<xsl:choose>
	<xsl:when test="$path/m1:fwdDeriv">
	<xsl:call-template name="derivativeCommonInfo">
	<xsl:with-param name="derivative" select="$path/m1:fwdDeriv"/>
	</xsl:call-template>
    <xsl:call-template name="FORWARD_HOLDING_GROUP">
    <xsl:with-param name="derivative" select="$path/m1:fwdDeriv"/>
    </xsl:call-template>
	</xsl:when>
 
	<xsl:when test="$path/m1:futrDeriv">
	<xsl:call-template name="derivativeCommonInfo">
	<xsl:with-param name="derivative"  select="$path/m1:futrDeriv"/>
	</xsl:call-template>
	
    <xsl:call-template name="NONFX_HOLDING_GROUP">
    <xsl:with-param name="derivative" select="$path/m1:futrDeriv"/>
    </xsl:call-template>
	</xsl:when>
	
	<xsl:when test="$path/m1:swapDeriv">
	<xsl:call-template name="derivativeCommonInfo">
	<xsl:with-param name="derivative" select="$path/m1:swapDeriv"/>
	</xsl:call-template>
	
    <xsl:call-template name="SWAP_HOLDING_GROUP">
    <xsl:with-param name="derivative" select="$path/m1:swapDeriv"/>
    </xsl:call-template>
	</xsl:when>

	<xsl:when test="$path/m1:optionSwaptionWarrantDeriv">
	<xsl:call-template name="derivativeCommonInfo">
	<xsl:with-param name="derivative" select="$path/m1:optionSwaptionWarrantDeriv"/>
	</xsl:call-template>
	
    <xsl:call-template name="OPTION_WARRANT_SWAPTION_TYPE">
    <xsl:with-param name="derivative" select="$path/m1:optionSwaptionWarrantDeriv"/>
    </xsl:call-template>
	</xsl:when>

	<xsl:when test="$path/m1:othDeriv">
	<xsl:call-template name="derivativeCommonInfo">
	<xsl:with-param name="derivative" select="$path/m1:othDeriv"/>
	</xsl:call-template>
	
    <xsl:call-template name="OTHER_HOLDING_GROUP" >
    <xsl:with-param name="derivative" select="$path/m1:othDeriv"/>
    </xsl:call-template>
	</xsl:when>
	
	</xsl:choose>
	
	</xsl:template>

	<xsl:template name="c12">
   <xsl:variable name="path" select="m1:securityLending"/>

	<xsl:choose>
	<xsl:when test="$path/m1:cashCollateralCondition">
	<table>
		<tr>
			<td class="label">a. Does any amount of this investment represent
				reinvestment of cash collateral received for loaned securities?     </td>
			<td>
				<xsl:call-template name="yesNoRadio">
					<xsl:with-param		name="yesNoElement"			select="$path/m1:cashCollateralCondition/@isCashCollateral" />
				</xsl:call-template>
			</td>
		</tr>

		<tr>
			<td class="label">If Yes, provide the value of the investment representing cash
				collateral.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$path/m1:cashCollateralCondition/@cashCollateralVal" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
	</table>	
</xsl:when>
<xsl:otherwise>
<table>
	<tr>
			<td class="label">a. Does any amount of this investment represent
				reinvestment of cash collateral received for loaned securities?     </td>
			<td>
				<xsl:call-template name="yesNoRadio">
					<xsl:with-param		name="yesNoElement"			select="$path/m1:isCashCollateral" />
				</xsl:call-template>
			</td>
		</tr>
</table>		
</xsl:otherwise>
</xsl:choose>
<xsl:choose>
	<xsl:when test="$path/m1:nonCashCollateralCondition">
	<table>
		<tr>
			<td class="label">b. Does any portion of this investment represent
				non-cash collateral that is treated as a Fund asset and received for
				loaned securities?  </td>
			<td>
				<xsl:call-template name="yesNoRadio">
					<xsl:with-param		name="yesNoElement"	select="$path/m1:nonCashCollateralCondition/@isNonCashCollateral" />
				</xsl:call-template>
			</td>
		</tr>

		<tr>
			<td class="label">If yes, provide the value of the securities representing non-cash
				collateral.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$path/m1:nonCashCollateralCondition/@nonCashCollateralVal" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
	</table>	
	</xsl:when>
	<xsl:otherwise>
	<table>
		<tr>
			<td class="label">b. Does any portion of this investment represent
				  that is treated as a Fund asset and received for
				loaned securities?  </td>
			<td>
				<xsl:call-template name="yesNoRadio">
					<xsl:with-param		name="yesNoElement"	select="$path/m1:isNonCashCollateral" />
				</xsl:call-template>
			</td>
		</tr>
	</table>	
	</xsl:otherwise>
	</xsl:choose>
	<xsl:choose>
	<xsl:when test="$path/m1:loanByFundCondition">
	<table>	
		<tr>
			<td class="label">c. Is any portion of this investment on loan by the
				Fund?     </td>
			<td>
				<xsl:call-template name="yesNoRadio">
					<xsl:with-param		name="yesNoElement"	select="$path/m1:loanByFundCondition/@isLoanByFund" />
				</xsl:call-template>
			</td>
		</tr>

		<tr>
			<td class="label">If Yes, provide the value of the securities on loan.   
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$path/m1:loanByFundCondition/@loanVal" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
	</table>	
		</xsl:when>
		<xsl:otherwise>
		<table>
			<tr>
			<td class="label">c. Is any portion of this investment on loan by the	Fund?     </td>
			<td>
				<xsl:call-template name="yesNoRadio">
					<xsl:with-param		name="yesNoElement"	select="$path/m1:isLoanByFund" />
				</xsl:call-template>
			</td>
		</tr>
		</table>
		</xsl:otherwise>
		</xsl:choose>
	
	</xsl:template>



	<xsl:template name="derivativeCommonInfo">
	<xsl:param name="derivative"/>
	<table>
	<tr>
			<td class="label">a. Type of derivative instrument that most closely
				represents the investment, selected from among the following
				(forward, future, option, swaption, swap (including but not limited
				to total return swaps, credit default swaps, and interest rate
				swaps), warrant, other).</td>
			<td>
				<div class="fakeBox2">
				<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr"		select="$derivative/@derivCat" />
							<xsl:with-param name="category"	select="'DERIV_INST_CATEGORY_TYPE'" />
					</xsl:call-template>
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		<xsl:if test="$derivative/@derivCat = 'OTH'">
		<tr>
			<td class="label">If "other", provide a brief description.</td>
			<td>
				<div class="fakeBox">
					<xsl:value-of select="$derivative/@othDesc" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		</xsl:if>
		</table>
		<p>b. Counterparty.<br/>
		i. Provide the name and LEI (if any) of counterparty (including a	central counterparty).</p>
		<table>

		<tr>
			<td class="label">Name of counterparty.</td>
			<td>
				<div class="fakeBox">
					<xsl:value-of select="$derivative/m1:counterpartyName" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>

		<tr>
			<td class="label">LEI (if any) of counterparty.</td>
			<td>
				<div class="fakeBox2">
					<xsl:value-of select="$derivative/m1:counterpartyLei" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		</table>
		<xsl:call-template name="DERVATIVE_ADD_INFO">
		<xsl:with-param name="derivAddInfo" select="$derivative/m1:derivAddlInfo"/>
	   </xsl:call-template>
	   
	</xsl:template>
	
	
	<xsl:template name="FORWARD_HOLDING_GROUP">
	<xsl:param name="derivative"/>
	
    <xsl:choose>
     <xsl:when test="$derivative/m1:amtCurSold">
     		<xsl:call-template name="FX_FORWARD_OR_SWAP_HOLDING_GROUP">
     		<xsl:with-param name="derivative" select="$derivative"/>
     		</xsl:call-template>
     </xsl:when>
     <xsl:otherwise>
    <xsl:call-template name="NONFX_HOLDING_GROUP">
    <xsl:with-param name="derivative" select="$derivative"/>
    </xsl:call-template>
     </xsl:otherwise>
   </xsl:choose> 
   
	</xsl:template>

	<xsl:template name="FX_FORWARD_OR_SWAP_HOLDING_GROUP">
	 <xsl:param name="derivative"/>
	
	<table>
		<tr><td>i.	Amount and description of currency sold.</td></tr>
	</table>
	
   	<table>
		<tr>
			<td class="label">Amount of currency sold.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$derivative/m1:amtCurSold" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		<tr>
			<td class="label">Description of currency sold.
			</td>
			<td>
				<div class="fakeBox4">
				<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr"		select="$derivative/m1:curSold" />
							<xsl:with-param name="category"	select="'ISO_CURRENCY_CODE'" />
					</xsl:call-template>
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		</table>
	
	<table>
		<tr><td>ii.	Amount and description of currency purchased.</td></tr>
	</table>	

	<table>
		<tr>
			<td class="label">Amount of currency purchased.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$derivative/m1:amtCurPur" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>

		<tr>
			<td class="label">Description of currency purchased.
			</td>
			<td>
				<div class="fakeBox4">
						<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr"		select="$derivative/m1:curPur" />
							<xsl:with-param name="category"	select="'ISO_CURRENCY_CODE'" />
					</xsl:call-template>
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		
		<tr>
			<td class="label">iii.	Settlement date.
			</td>
			<td>
				<div class="fakeBox4">
						<xsl:value-of select="$derivative/m1:settlementDt" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>			

      <xsl:if test="$derivative/m1:unrealizedAppr">
		<tr>
			<td class="label">iv.	Unrealized appreciation or depreciation. Depreciation shall be reported as a negative number.
			</td>
			<td>
				<div class="fakeBox4"> 
						<xsl:value-of select="$derivative/m1:unrealizedAppr" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>	
		</xsl:if>
		</table>			
	</xsl:template>
	
	<xsl:template name="NONFX_HOLDING_GROUP">
	<xsl:param name="derivative"/>
	
	<p>d.	For futures and forwards (other than forward foreign currency contracts), provide:</p>
	
	<table>
			<tr>
			<td class="label">i.	Payoff profile, selected from among the following (long, short).
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$derivative/m1:payOffProf" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		</table>
		
		<p>ii.	Description of reference instrument, as required by sub-Item C.11.c.iii.</p>
	<xsl:call-template name="REFERENCE_INSTRUMENT_TYPE">
		<xsl:with-param name="refInst" select="$derivative/m1:descRefInstrmnt"/>
	</xsl:call-template>

		<table>
			<tr>
			<td class="label">iii.	Expiration date.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$derivative/m1:expDate" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		
		<tr>
			<td class="label">iv.	Aggregate notional amount or contract value on trade date. 
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$derivative/m1:notionalAmt" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		
		<tr>
			<td class="label">ISO Currency Code.
			</td>
			<td>
				<div class="fakeBox4">
				<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr"		select="$derivative/m1:curCd" />
							<xsl:with-param name="category"	select="'ISO_CURRENCY_CODE'" />
					</xsl:call-template>
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>

      <xsl:if test="$derivative/m1:unrealizedAppr">
		<tr>
			<td class="label">v.	Unrealized appreciation or depreciation.  Depreciation shall be reported as a negative number.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$derivative/m1:unrealizedAppr" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>	
		</xsl:if>
		
		</table>			
	</xsl:template>

	<xsl:template name="SWAP_ADDITIONAL_INFO_GROUP">
	<xsl:param name="derivative"/>
	
	<br/>
	<p>i.	Description and terms of payments necessary for a user of financial information to understand the terms of payments to be paid and received, including, as applicable, description of the reference instrument, obligation, or index (including the information required by sub-Item C.11.c.iii), financing rate, floating coupon rate, fixed coupon rate, and payment frequency.</p>
	<br/>
	
	<p>Description of reference instrument, as required by sub-Item C.11.c.iii.</p>
	
	<br/>
	
	<xsl:call-template name="REFERENCE_INSTRUMENT_TYPE">
		<xsl:with-param name="refInst" select="$derivative/m1:descRefInstrmnt"/>
	</xsl:call-template>
	
	
	<xsl:if test="$derivative/m1:swapFlag">
	<table>
		<tr>
			<td class="label">Custom swap Flag</td>
			<td>
				<xsl:call-template name="yesNoRadio">
					<xsl:with-param		name="yesNoElement"	select="$derivative/m1:swapFlag" />
				</xsl:call-template>
			</td>
		</tr>
	</table>
	</xsl:if>
	
	<br/>
	
	<xsl:if test="$derivative/m1:fixedRecDesc or $derivative/m1:floatingRecDesc or $derivative/m1:recAmtCat">
	
	<p>1. Description and terms of payments to be received from another party.<br/>
	Receipts:  Reference Asset, Instrument or Index.</p>
	<table>
		<tr>
			<td class="label">
				Receipts: fixed or floating.
			</td>
			<td>
				<span class="yesNo">
					<xsl:choose>
						<xsl:when test="$derivative/m1:fixedRecDesc or $derivative/m1:floatingRecDesc or $derivative/m1:recAmtCat">
							<xsl:choose>
								<xsl:when test="string($derivative/m1:fixedRecDesc/@fixedOrFloating)">
									<img
										src="Images/radio-checked.jpg"
										alt="Fixed is checked" />
									Fixed
									<img
										src="Images/radio-unchecked.jpg"
										alt="Floating is not checked" />
									Floating
									<img
										src="Images/radio-unchecked.jpg"
										alt="None is not checked" />
									None
								</xsl:when>
							</xsl:choose>
							<xsl:choose>
								<xsl:when test="string($derivative/m1:floatingRecDesc/@fixedOrFloating)">
									<img
										src="Images/radio-unchecked.jpg"
										alt="Fixed is not checked" />
									Fixed
									<img
										src="Images/radio-checked.jpg"
										alt="Floating is checked" />
									Floating
									<img
										src="Images/radio-unchecked.jpg"
										alt="None is not checked" />
									None
								</xsl:when>
							</xsl:choose>
							<xsl:choose>
								<xsl:when test="string($derivative/m1:rcptCat)">
									<img
										src="Images/radio-unchecked.jpg"
										alt="Fixed is not checked" />
									Fixed
									<img
										src="Images/radio-unchecked.jpg"
										alt="Floating is not checked" />
									Floating
									<img
										src="Images/radio-checked.jpg"
										alt="None is checked" />
									None
								</xsl:when>
							</xsl:choose>
						</xsl:when>
						<xsl:otherwise>
							<img
								src="Images/radio-unchecked.jpg"
								alt="Fixed is not checked" />
							Fixed
							<img
								src="Images/radio-unchecked.jpg"
								alt="Floating is not checked" />
							Floating
							<img
								src="Images/radio-unchecked.jpg"
								alt="None is not checked" />
							None
						</xsl:otherwise>
					</xsl:choose>
				</span>
			</td>
		</tr>

	 <xsl:choose>
	 <xsl:when test="$derivative/m1:fixedRecDesc">
	 <tr>
			<td class="label">Receipts: Fixed rate.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$derivative/m1:fixedRecDesc/@fixedRt" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
	 <tr>
			<td class="label">Receipts: Base currency.
			</td>
			<td>
				<div class="fakeBox4">
				<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr"		select="$derivative/m1:fixedRecDesc/@curCd" />
							<xsl:with-param name="category"	select="'ISO_CURRENCY_CODE'" />
					</xsl:call-template>
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		
		<tr>
			<td class="label">Receipts: Amount.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$derivative//m1:fixedRecDesc/@amount" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
	 
	 </xsl:when>
	 
	 <xsl:when test="$derivative/m1:floatingRecDesc">
	 <tr>
			<td class="label">Receipts: Floating rate Index.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$derivative/m1:floatingRecDesc/@floatingRtIndex" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		<tr>
			<td class="label">Receipts: Floating rate Spread.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$derivative/m1:floatingRecDesc/@floatingRtSpread" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		
		<xsl:for-each select="$derivative/m1:floatingRecDesc/m1:rtResetTenors/m1:rtResetTenor">

	 
		<tr>
			<td class="label">Receipt: Floating Rate Reset Dates.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="@resetDt" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		<tr>
			<td class="label">Receipt: Floating Rate Reset Dates Unit.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="@resetDtUnit" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
	 
		<tr>
			<td class="label">Receipts: Floating Rate Tenor.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="@rateTenor" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		<tr>
			<td class="label">Receipts: Floating Rate Tenor Unit.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="@rateTenorUnit" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>

	</xsl:for-each>	
		
		<tr>
			<td class="label">Receipts: Base currency.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr"		select="$derivative/m1:floatingRecDesc/@curCd" />
							<xsl:with-param name="category"	select="'ISO_CURRENCY_CODE'" />
					</xsl:call-template>
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		
		<tr>
			<td class="label">Receipts: Amount.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$derivative/m1:floatingRecDesc/@pmntAmt" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
	 
	 </xsl:when>
	 
	 </xsl:choose>
		
		</table>
	</xsl:if>

<!--DESCRIPTION_TERM_TYPE START-->

		<xsl:if test="$derivative/m1:fixedPmntDesc or $derivative/m1:floatingPmntDesc or $derivative/m1:pmntAmtCat">
		<p>2.	Description and terms of payments to be paid to another party.<br/>
		Payments:  Reference Asset, Instrument or Index</p>
		<table>
		<tr>
			<td class="label">
				Payments: fixed or floating.
			</td>
			<td>
				<span class="yesNo">
					<xsl:choose>
						<xsl:when test="$derivative/m1:fixedPmntDesc or $derivative/m1:floatingPmntDesc or $derivative/m1:pmntAmtCat">
							<xsl:choose>
								<xsl:when test="$derivative/m1:fixedPmntDesc">
									<img
										src="Images/radio-checked.jpg"
										alt="Fixed is checked" />
									Fixed
									<img
										src="Images/radio-unchecked.jpg"
										alt="Floating is not checked" />
									Floating
									<img
										src="Images/radio-unchecked.jpg"
										alt="None is not checked" />
									None
								</xsl:when>
							</xsl:choose>
							<xsl:choose>
								<xsl:when test="$derivative/m1:floatingPmntDesc">
									<img
										src="Images/radio-unchecked.jpg"
										alt="Fixed is not checked" />
									Fixed
									<img
										src="Images/radio-checked.jpg"
										alt="Floating is checked" />
									Floating
									<img
										src="Images/radio-unchecked.jpg"
										alt="None is not checked" />
									None
								</xsl:when>
							</xsl:choose>
							<xsl:choose>
								<xsl:when test="$derivative/m1:pmntAmtCat">
									<img
										src="Images/radio-unchecked.jpg"
										alt="Fixed is not checked" />
									Fixed
									<img
										src="Images/radio-unchecked.jpg"
										alt="Floating is checked" />
									Floating
									<img
										src="Images/radio-checked.jpg"
										alt="None is not checked" />
									None
								</xsl:when>
							</xsl:choose>
						</xsl:when>
						<xsl:otherwise>
							<img
								src="Images/radio-unchecked.jpg"
								alt="Fixed is not checked" />
							Fixed
							<img
								src="Images/radio-unchecked.jpg"
								alt="Floating is not checked" />
							Floating
							<img
								src="Images/radio-unchecked.jpg"
								alt="None is not checked" />
							None
						</xsl:otherwise>
					</xsl:choose>
				</span>
			</td>
		</tr>
		
		
		<xsl:choose>
		<xsl:when test="$derivative/m1:fixedPmntDesc">
		<tr>
			<td class="label">Payments: Fixed rate.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$derivative/m1:fixedPmntDesc/@fixedRt" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		
		<tr>
			<td class="label">Payments: Base currency
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr"		select="$derivative/m1:fixedPmntDesc/@curCd" />
							<xsl:with-param name="category"	select="'ISO_CURRENCY_CODE'" />
					</xsl:call-template>
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		
	 
		<tr>
			<td class="label">Payments: Amount
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$derivative/m1:fixedPmntDesc/@amount" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		
		</xsl:when>
		<xsl:when test="$derivative/m1:floatingPmntDesc">
		<tr>
			<td class="label">Payments: fixed or floating
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$derivative/m1:floatingPmntDesc/@fixedOrFloating" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		<tr>
			<td class="label">Payments: Floating rate Index.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$derivative/m1:floatingPmntDesc/@floatingRtIndex" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		
	 
		<tr>
			<td class="label">Payments: Floating rate Spread.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$derivative/m1:floatingPmntDesc/@floatingRtSpread" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		
	 
		
		<xsl:for-each select="$derivative/m1:floatingPmntDesc/m1:rtResetTenors/m1:rtResetTenor">

	 
		<tr>
			<td class="label">Payment: Floating Rate Reset Dates.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="@resetDt" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		<tr>
			<td class="label">Payment: Floating Rate Reset Dates Unit.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="@resetDtUnit" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
	 
		<tr>
			<td class="label">Payment: Floating Rate Tenor.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="@rateTenor" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		<tr>
			<td class="label">Payment: Floating Rate Tenor Unit.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="@rateTenorUnit" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>

	</xsl:for-each>	

		
		<tr>
			<td class="label">Payments: Base currency
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr"		select="$derivative/m1:floatingPmntDesc/@curCd" />
							<xsl:with-param name="category"	select="'ISO_CURRENCY_CODE'" />
					</xsl:call-template>
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		
	 
		<tr>
			<td class="label">Payments: Amount
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$derivative/m1:floatingPmntDesc/@pmntAmt" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		
		
		</xsl:when>
		</xsl:choose> 
   </table>		
   </xsl:if>
		
	 
<!--DESCRIPTION_TERM_TYPE END-->	
	<table>
	 	<xsl:if test="$derivative/m1:terminationDt">
		<tr>
			<td class="label">ii.	Termination or maturity date.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$derivative/m1:terminationDt" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		</xsl:if>
	 
	 <xsl:if test="$derivative/m1:upfrontPmnt">
	 <tr><td>iii.	Upfront payments or receipts</td></tr>
   
		<tr>
			<td class="label">Upfront payments.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$derivative/m1:upfrontPmnt" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		
	 
		<tr>
			<td class="label">ISO Currency Code.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr"		select="$derivative/m1:pmntCd" />
							<xsl:with-param name="category"	select="'ISO_CURRENCY_CODE'" />
					</xsl:call-template>
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		</xsl:if>
	 
	 <xsl:if test="$derivative/m1:upfrontRcpt">
		<tr>
			<td class="label">Upfront receipts.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$derivative/m1:upfrontRcpt" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		
	 
		<tr>
			<td class="label">ISO Currency Code.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr"		select="$derivative/m1:rcptCd" />
							<xsl:with-param name="category"	select="'ISO_CURRENCY_CODE'" />
					</xsl:call-template>
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		</xsl:if>
		
	  <xsl:if test="$derivative/m1:notionalAmt">
		<tr>
			<td class="label">iv.	Notional amount.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$derivative/m1:notionalAmt" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		
		<tr>
			<td class="label">ISO Currency Code.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$derivative/m1:curCd" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		</xsl:if>
		
	  <xsl:if test="$derivative/m1:unrealizedAppr">
		<tr>
			<td class="label">v.	Unrealized appreciation or depreciation. Depreciation shall be reported as a negative number. 
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$derivative/m1:unrealizedAppr" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		</xsl:if>
		
		</table>
	
	</xsl:template>
	
	<xsl:template name="OPTION_WARRANT_SWAPTION_TYPE">
   <xsl:param name="derivative"/>
   
		<table>
		<tr>
			<td class="label">
				i. Type, selected from among the following (put, call). Respond call
				for warrants.
			</td>
			<td>
				<span class="yesNo">
					<xsl:choose>
						<xsl:when test="count($derivative/m1:putOrCall) &gt; 0">
							<xsl:choose>
								<xsl:when test="string($derivative/m1:putOrCall) = 'Put'">
									<img
										src="Images/radio-checked.jpg"
										alt="Put is checked" />
									Put
									<img
										src="Images/radio-unchecked.jpg"
										alt="Call is not checked" />
									Call
								</xsl:when>
							</xsl:choose>
							<xsl:choose>
								<xsl:when test="string($derivative/m1:putOrCall) = 'Call'">
									<img
										src="Images/radio-unchecked.jpg"
										alt="Put is not checked" />
									Put
									<img
										src="Images/radio-checked.jpg"
										alt="Call is checked" />
									Call
								</xsl:when>
							</xsl:choose>
						</xsl:when>
						<xsl:otherwise>
							<img
								src="Images/radio-unchecked.jpg"
								alt="Put is not checked" />
							Put
							<img
								src="Images/radio-unchecked.jpg"
								alt="Call is not checked" />
							Call
						</xsl:otherwise>
					</xsl:choose>
				</span>
			</td>
		</tr>
	
		<tr>
			<td class="label">
				ii.	Payoff profile, selected from among the following (written, purchased).  Respond purchased for warrants.
			</td>
			<td>
				<span class="yesNo">
					<xsl:choose>
						<xsl:when test="count($derivative/m1:writtenOrPur) &gt; 0">
							<xsl:choose>
								<xsl:when test="string($derivative/m1:writtenOrPur) = 'Written'">
									<img
										src="Images/radio-checked.jpg"
										alt="Written is checked" />
									Written 
									<img
										src="Images/radio-unchecked.jpg"
										alt="Purchased is not checked" />
									Purchased
								</xsl:when>
							</xsl:choose>
							<xsl:choose>
								<xsl:when test="string($derivative/m1:writtenOrPur) = 'Purchased'">
									<img
										src="Images/radio-unchecked.jpg"
										alt="Written is not checked" />
									Written
									<img
										src="Images/radio-checked.jpg"
										alt="Purchased is checked" />
									Purchased
								</xsl:when>
							</xsl:choose>
						</xsl:when>
						<xsl:otherwise>
							<img
								src="Images/radio-unchecked.jpg"
								alt="Written is not checked" />
							Written
							<img
								src="Images/radio-unchecked.jpg"
								alt="Purchased is not checked" />
							Purchased
						</xsl:otherwise>
					</xsl:choose>
				</span>
			</td>
		</tr>
	</table>
	<xsl:call-template name="REFERENCE_INSTRUMENT_TYPE">
		<xsl:with-param name="refInst" select="$derivative/m1:descRefInstrmnt"/>
	</xsl:call-template>
	
	<p>iv.	Number of shares or principal amount of underlying reference instrument per contract.</p>
   
   <table>
   	<xsl:if test="$derivative/m1:shareNo">
		<tr>
			<td class="label">Number of shares.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$derivative/m1:shareNo" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		</xsl:if>
		<xsl:if test="$derivative/m1:principalAmt">
		<tr>
			<td class="label">Principal amount of underlying reference instrument per contract.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$derivative/m1:principalAmt" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>

		<tr>
			<td class="label">ISO Currency Code.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr"		select="$derivative/m1:curCd" />
							<xsl:with-param name="category"	select="'ISO_CURRENCY_CODE'" />
					</xsl:call-template>
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
</xsl:if>

		<tr>
			<td class="label">v.	Exercise price or rate.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$derivative/m1:exercisePrice" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		
		<tr>
			<td class="label">vi.	Expiration date.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$derivative/m1:expDt" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		
		<tr>
			<td class="label">vii.	Delta.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$derivative/m1:delta" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>				

      <xsl:if test="$derivative/m1:unrealizedAppr">
		<tr>
			<td class="label">viii.	Unrealized appreciation or depreciation. Depreciation shall be reported as a negative number.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$derivative/m1:unrealizedAppr" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>			
		</xsl:if>	

   </table>
	</xsl:template>

	<xsl:template name="SWAP_HOLDING_GROUP">
   <xsl:param name="derivative"/>
   
    <xsl:choose>
     <xsl:when test="$derivative/m1:foriegnCurInfo">
     		<xsl:call-template name="FX_FORWARD_OR_SWAP_HOLDING_GROUP">
     		<xsl:with-param name="derivative" select="$derivative"/>
     		</xsl:call-template>
     </xsl:when>
     <xsl:otherwise>
    <xsl:call-template name="SWAP_ADDITIONAL_INFO_GROUP">
    <xsl:with-param name="derivative" select="$derivative"/>
    </xsl:call-template>
     </xsl:otherwise>
   </xsl:choose>
   
   
	</xsl:template>
	
	<xsl:template name="OTHER_HOLDING_GROUP">
    <xsl:param name="derivative"/>
    
    
   <xsl:call-template name="REFERENCE_INSTRUMENT_TYPE">
		<xsl:with-param name="refInst" select="$derivative/m1:descRefInstrmnt"/>
	</xsl:call-template>
	<table>
			<tr>
			<td class="label">ii.	Termination or maturity (if any). 
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$derivative/m1:terminationDt" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		<xsl:for-each select="$derivative/m1:notionalAmts/m1:notionalAmt">
		<tr>
			<td class="label">iii.	Notional amount(s).
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="@amt" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		
		<tr>
			<td class="label">ISO Currency Code.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr"		select="@curCd" />
							<xsl:with-param name="category"	select="'ISO_CURRENCY_CODE'" />
					</xsl:call-template>
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		</xsl:for-each>
		
		
		<tr>
			<td class="label">iv.	Delta (if applicable).
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$derivative/m1:delta" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>				
      <xsl:if test="$derivative/m1:unrealizedAppr">
		<tr>
			<td class="label">Unrealized appreciation or depreciation. Depreciation shall be reported as a negative number.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$derivative/m1:unrealizedAppr" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>		
		</xsl:if>		
	</table>
	</xsl:template>
	
	<xsl:template name="REFERENCE_INSTRUMENT_TYPE">
	<xsl:param name="refInst" />
	
	<xsl:choose>
	<xsl:when test="$refInst/m1:nestedDerivInfo">
	<p>1.	If the reference instrument is a derivative, indicate the category of derivative from among the categories listed in sub-Item C.11.a. and provide all 
	information required to be reported on this Form for that category.</p>
	<xsl:call-template name="c11">
	<xsl:with-param name="path" select="$refInst/m1:nestedDerivInfo"/>
	</xsl:call-template>
	</xsl:when>
	<xsl:when test="$refInst/m1:indexBasketInfo">
	<xsl:call-template name="INDEX_BASKET_GROUP">
	<xsl:with-param name="path" select="$refInst/m1:indexBasketInfo"/>
	</xsl:call-template>
	</xsl:when>
	<xsl:when test="$refInst/m1:otherRefInst">
	<xsl:call-template name="OTHER_REFERENCE_INSTRUMENT_GROUP">
	<xsl:with-param name="path" select="$refInst/m1:otherRefInst"/>
	</xsl:call-template>
	</xsl:when>
	</xsl:choose>
	
	
	</xsl:template>
	
	<xsl:template name="INDEX_BASKET_GROUP">
	 <xsl:param name="path" />
	 <p>2.	If the reference instrument is an index or custom basket, and if the index’s or custom basket’s components are publicly available on a website
	  and are updated on that website no less frequently than quarterly, identify the index and provide the index identifier, if any.  If the index’s or custom
	  basket’s components are not publicly available in that manner, and the notional amount of the derivative represents 1% or less of the net asset value of the
	  Fund, provide a narrative description of the index. If the index’s or custom basket’s components are not publicly available in that manner, and the notional 
	  amount of the derivative represents more than 5% of the net asset value of the Fund, provide the (i) name, (ii) identifier, (iii) number of shares or notional 
	  amount or contract value as of the trade date (all of which would be reported as negative for short positions), and (iv) value of every component in the index 
	  or custom basket. The identifier shall include CUSIP of the index’s or custom basket’s components, ISIN (if CUSIP is not available), ticker (if CUSIP and ISIN 
	  are not available), or other identifier (if CUSIP, ISIN, and ticker are not available).  If other identifier provided, indicate the type of identifier used. 
	 <br/>
	  <br/>
	  If the index’s or custom basket’s components are not publicly available in that manner, and the notional amount of the derivative represents greater than 1%, 
	  but 5% or less, of the net asset value of the Fund, Funds shall report the required component information described above, but may limit reporting to the (i)
	  50 largest components in the index and (ii) any other components where the notional value for that components is over 1% of the notional value of the index or 
	  custom basket.  
		 <br/>
		An index or custom basket, where the components are publicly available on a website and are updated on that website no less frequently than quarterly.
		</p>
		<table>
			<tr>
				<td class="label">Index name.
				</td>
				<td>
						<div class="fakeBox">
							<xsl:value-of select="$path/m1:indexName" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			<tr>
				<td class="label">Index identifier, if any.
				</td>
				<td>
						<div class="fakeBox">
							<xsl:value-of select="$path/m1:indexIdentifier" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			</table>
			<p>
			If the index’s or custom basket’s components are not publicly available in that manner, and the notional amount
			of the derivative represents 1% or less of the	net asset value of the Fund, provide a narrative description of the index.
			</p>
			<table>
			<tr>
				<td class="label">Narrative description.
				</td>
				<td>
						<div class="fakeBox">
							<xsl:value-of select="$path/m1:narrativeDesc" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			</table>
			<xsl:for-each select="$path/m1:components/m1:component">
			<p>
			For all other indices or custom baskets provide:
			</p>
			<table>
			<tr>
				<td class="label">i.	Name.
				</td>
				<td>
						<div class="fakeBox">
							<xsl:value-of select="m1:othIndName" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			</table>

   		<p>At least one of the following other identifiers:</p>
			
			<xsl:for-each select="m1:identifiers/m1:cusip">
			<xsl:call-template name="identifierInfo">
			<xsl:with-param name="ident" select="."/>
			<xsl:with-param name="id" select="'cusip'"/>
			</xsl:call-template>
			</xsl:for-each>
			
			<xsl:for-each select="m1:identifiers/m1:isin">
			<xsl:call-template name="identifierInfo">
			<xsl:with-param name="ident" select="."/>
			<xsl:with-param name="id" select="'isin2'"/>
			</xsl:call-template>
			</xsl:for-each>
			
			<xsl:for-each select="m1:identifiers/m1:ticker">
			<xsl:call-template name="identifierInfo">
			<xsl:with-param name="ident" select="."/>
			<xsl:with-param name="id" select="'ticker2'"/>
			</xsl:call-template>
			</xsl:for-each>
			
			<xsl:for-each select="m1:identifiers/m1:other">
			<xsl:call-template name="identifierInfo">
			<xsl:with-param name="ident" select="."/>
			<xsl:with-param name="id" select="'other2'"/>
			</xsl:call-template>
			</xsl:for-each>
			
			<table>
			<tr>
				<td class="label">iii.	Number of shares or notional amount or contract value as of the trade date (all of which would be reported as negative for short positions).
				</td>
				<td>
						<div class="fakeBox4">
							<xsl:value-of select="m1:othIndNotAmt" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			
			<tr>
				<td class="label">ISO Currency Code.
				</td>
				<td>
						<div class="fakeBox2">
							<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr"		select="m1:othIndCurCd" />
							<xsl:with-param name="category"	select="'ISO_CURRENCY_CODE'" />
							</xsl:call-template>
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			
			<tr>
				<td class="label">iv. Value.
				</td>
				<td>
						<div class="fakeBox4">
							<xsl:value-of select="m1:othIndValue" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			
			<tr>
				<td class="label">ISO Currency Code.
				</td>
				<td>
						<div class="fakeBox2">
							<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr"		select="m1:othIndIssCurCd" />
							<xsl:with-param name="category"	select="'ISO_CURRENCY_CODE'" />
							</xsl:call-template>
							<xsl:value-of select="$path/m1:othIndIssCurCd" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			</table>
			
			</xsl:for-each>
			
	</xsl:template>
	
	<xsl:template name="OTHER_REFERENCE_INSTRUMENT_GROUP">
	 <xsl:param name="path" />
	 
	     <p>
			3.	If the reference instrument is neither a derivative or an index, the description of the reference instrument shall include the name of issuer and title 
			of issue, as well as CUSIP of the reference instrument, ISIN (if CUSIP is not available), ticker if (CUSIP and ISIN are not available), or other identifier
			(if CUSIP, ISIN, and ticker are not available). 
			</p>
			<table>
			
	 <tr>
				<td class="label">Name of issuer.
				</td>
				<td>
						<div class="fakeBox">
							<xsl:value-of select="$path/m1:issuerName" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			
			<tr>
				<td class="label">Title of issue.
				</td>
				<td>
						<div class="fakeBox">
							<xsl:value-of select="$path/m1:issueTitle" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			</table>

			<p>At least one of the following other identifiers:</p>
			
			<xsl:for-each select="$path/m1:identifiers/m1:cusip">
			<xsl:call-template name="identifierInfo">
			<xsl:with-param name="ident" select="."/>
			<xsl:with-param name="id" select="'cusip'"/>
			</xsl:call-template>
			</xsl:for-each>
			
			<xsl:for-each select="$path/m1:identifiers/m1:isin">
			<xsl:call-template name="identifierInfo">
			<xsl:with-param name="ident" select="."/>
			<xsl:with-param name="id" select="'isin2'"/>
			</xsl:call-template>
			</xsl:for-each>
			
			<xsl:for-each select="$path/m1:identifiers/m1:ticker">
			<xsl:call-template name="identifierInfo">
			<xsl:with-param name="ident" select="."/>
			<xsl:with-param name="id" select="'ticker2'"/>
			</xsl:call-template>
			</xsl:for-each>
			
			<xsl:for-each select="$path/m1:identifiers/m1:other">
			<xsl:call-template name="identifierInfo">
			<xsl:with-param name="ident" select="."/>
			<xsl:with-param name="id" select="'other3'"/>
			</xsl:call-template>
			</xsl:for-each>
			
	</xsl:template>

	<xsl:template name="DERVATIVE_ADD_INFO">
   <xsl:param name="derivAddInfo" />
   <xsl:if test="$derivAddInfo">
   <p>Identification of investment.</p>
		<xsl:call-template name="c1d">
		<xsl:with-param name="path" select="$derivAddInfo"/>
		</xsl:call-template>
   <br/>
   
   <p>Amount of each investment.</p>
		<xsl:call-template name="c2d">
		<xsl:with-param name="path" select="$derivAddInfo"/>
		</xsl:call-template>
	
	<br/>	
   <p>Asset and issuer type. Select the category that most closely identifies the instrument among each of the following:</p>
		<xsl:call-template name="c4d">
		<xsl:with-param name="path"  select="$derivAddInfo"/>
		</xsl:call-template>
	<br/>
	
	<p>Country of investment or issuer.</p>	
		<xsl:call-template name="c5d">
		<xsl:with-param name="path"  select="$derivAddInfo"/>
		</xsl:call-template>
	<br/>
		
</xsl:if>

	</xsl:template>
	
	<xsl:template name="c1d">
	<xsl:param name="path"/>
	<table>
			<tr>
				<td class="label">Name of issuer (if any). 
				</td>
				<td>
						<div class="fakeBox">
							<xsl:value-of select="$path/m1:name" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>

			<tr>
				<td class="label">LEI (if any) of issuer.  In the case of a holding in a fund that is a series of a series trust, report the LEI of the series.
				</td>
				<td>
						<div class="fakeBox2">
							<xsl:value-of select="$path/m1:lei" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>

			<tr>
				<td class="label">Title of the issue or description of the investment.
				</td>
				<td>
						<div class="fakeBox">
							<xsl:value-of select="$path/m1:title" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>

			<tr>
				<td class="label">CUSIP (if any).
				</td>
				<td>
						<div class="fakeBox">
							<xsl:value-of select="$path/m1:cusip" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			</table>
		
			<p>At least one of the following other identifiers:</p>
			
		<xsl:for-each select="$path/m1:identifiers/m1:isin">
			<xsl:call-template name="identifierInfo">
			<xsl:with-param name="ident" select="."/>
			<xsl:with-param name="id" select="'isin1'"/>
			</xsl:call-template>
		</xsl:for-each>
		
		<xsl:for-each select="$path/m1:identifiers/m1:ticker">	
			<xsl:call-template name="identifierInfo">
			<xsl:with-param name="ident" select="."/>
			<xsl:with-param name="id" select="'ticker1'"/>
			</xsl:call-template>
		</xsl:for-each>	
			
		<xsl:for-each select="$path/m1:identifiers/m1:other">	
			<xsl:call-template name="identifierInfo">
			<xsl:with-param name="ident" select="."/>
			<xsl:with-param name="id" select="'other1'"/>
			</xsl:call-template>
		</xsl:for-each>	

	</xsl:template>

	<xsl:template name="c2d">
   <xsl:param name="path"/>
	
	<p>a. Balance. Indicate whether amount is expressed in number of shares, principal amount, or other units.
	 For derivatives contracts, as applicable, provide the number of contracts.</p>
		<table>
		<tr>
			<td class="label">Balance
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$path/m1:balance" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>

		<tr>
			<td class="label">Units
			</td>
			<td>
				<div class="fakeBox4">
				<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr"		select="$path/m1:units" />
							<xsl:with-param name="category"	select="'UNIT_TYPE'" />
				</xsl:call-template>
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>

		<tr>
			<td class="label">Description of other units.
			</td>
			<td>
				<div class="fakeBox">
					<xsl:value-of select="$path/m1:descOthUnits" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		<tr>
			<td class="label">Currency. Indicate the currency in which the investment is denominated.  
			</td>
			<td>
				<div class="fakeBox2">
					<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr" select="$path/m1:curCd" />
							<xsl:with-param name="category" select="'ISO_CURRENCY_CODE'" />
					</xsl:call-template>
					<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr"		select="$path/m1:currencyConditional/@curCd" />
							<xsl:with-param name="category"	select="'ISO_CURRENCY_CODE'" />
					</xsl:call-template>
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		<tr>
			<td class="label">Value.  Report values in U.S. dollars. If currency of investment is not denominated in U.S. dollars, provide the exchange rate used to calculate value.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$path/m1:valUSD" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		
		<xsl:if test="$path/m1:currencyConditional">
		<tr>
			<td class="label">Exchange rate.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$path/m1:currencyConditional/@exchangeRt" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
	   </xsl:if>
	   
		<tr>
			<td class="label">Percentage value compared to net assets of the Fund.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$path/m1:pctVal" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>				
	</table>
	</xsl:template>

	<xsl:template name="c4d">
	<xsl:param name="path"/>
   <table>
   	<tr>
			<td class="label">Asset type (short-term investment vehicle (e.g., money market fund, liquidity pool, or other cash management vehicle), repurchase agreement, equity-common, equity-preferred, debt, derivative-commodity, derivative-credit, derivative-equity, derivative-foreign exchange, derivative-interest rate, derivatives-other, structured note, loan, ABS-mortgage backed security, ABS-asset backed commercial paper, ABS-collateralized bond/debt obligation, ABS-other, commodity, real estate, other).  If “other,” provide a brief description. 
			</td>
			<td>
				<div class="fakeBox">
					<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr"		select="$path/m1:assetCat" />
							<xsl:with-param name="category"	select="'ASSET_CATEGORY_TYPE'" />
					</xsl:call-template>
					<xsl:value-of select="$path/m1:assetConditional/@otherCat" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>				

		<xsl:if test="$path/m1:assetConditional/@otherCat">
   	<tr>
			<td class="label">If "other," provide a brief description.
			</td>
			<td>
				<div class="fakeBox">
					<xsl:value-of select="$path/m1:assetConditional/@desc" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>	
		</xsl:if>	

	
   	<tr>
			<td class="label">Issuer type (corporate, U.S. Treasury, U.S. government agency, U.S. government sponsored entity, municipal, non-U.S. sovereign, private fund, registered fund, other).  If “other,” provide a brief description.
			</td>
			<td>
				<div class="fakeBox">
					<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr"		select="$path/m1:issuerCat" />
							<xsl:with-param name="category"	select="'ISSUER_CATEGORY_TYPE'" />
					</xsl:call-template>
					<xsl:value-of select="$path/m1:issuerConditional/@otherCat" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>				

      <xsl:if test="$path/m1:issuerConditional/@otherCat">
   	<tr>
			<td class="label">If "other," provide a brief description.
			</td>
			<td>
				<div class="fakeBox">
					<xsl:value-of select="$path/m1:issuerConditional/@desc" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>		
		</xsl:if>

   	</table>
   
	</xsl:template>

	<xsl:template name="c5d">
	<xsl:param name="path"/>
		<table>
			<tr>
				<td class="label">Report the ISO country code that corresponds to the country where the issuer is organized. </td>
				<td>
					<div class="fakeBox">
						<xsl:call-template name="stateDescription">
							<xsl:with-param name="stateCode"		select="string($path/m1:invCountry)" />
						</xsl:call-template>
						<span>
							<xsl:text>&#160;</xsl:text>
						</span>
					</div>
				</td>
			</tr>

			<tr>
				<td class="label">If different from the country where the issuer is organized, also report the ISO country code that corresponds to the country of investment or issuer based on the concentrations of the risk and economic exposure of the investments. </td>
				<td>
					<div class="fakeBox">
						<xsl:call-template name="stateDescription">
							<xsl:with-param name="stateCode"		select="string($path/m1:invOthCountry)" />
						</xsl:call-template>
						<span>
							<xsl:text>&#160;</xsl:text>
						</span>
					</div>
				</td>
			</tr>
		</table>

	</xsl:template>
	
	<xsl:template name="identifierInfo">
		<xsl:param name="ident" />
		<xsl:param name="id" />
		<xsl:if test="$ident">
	
			<table>
			<tr>
				<td class="label">Identifier.
				</td>
				<td>
						<div class="fakeBox3">
							<xsl:if test="contains($id,'cusip')">
							<xsl:variable name="tag" select="'CUSIP'"/>
								<span>
									<xsl:text>CUSIP</xsl:text>
								</span>
							</xsl:if>
							<xsl:if test="contains($id,'isin2')">
							<xsl:variable name="tag" select="'ISIN (if CUSIP is not available)'"/>
								<span>
									<xsl:text>ISIN (if CUSIP is not available)</xsl:text>
								</span>
							</xsl:if>
							<xsl:if test="contains($id,'isin1')">
							<xsl:variable name="tag" select="'ISIN'"/>
								<span>
									<xsl:text>ISIN</xsl:text>
								</span>
							</xsl:if>
							<xsl:if test="contains($id,'ticker2')">
							<xsl:variable name="tag" select="'Ticker (if CUSIP and ISIN are not available)'"/>
								<span>
									<xsl:text>Ticker (if CUSIP and ISIN are not available)</xsl:text>
								</span>
							</xsl:if>
							<xsl:if test="contains($id,'ticker1')">
							<xsl:variable name="tag" select="'Ticker (if ISIN is not available)'"/>
								<span>
									<xsl:text>Ticker (if ISIN is not available)</xsl:text>
								</span>
							</xsl:if>
							<xsl:if test="contains($id,'other2')">
							<xsl:variable name="tag" select="'Other identifier (if CUSIP, ISIN, and ticker are not available)'"/>
								<span>
									<xsl:text>Other identifier (if CUSIP, ISIN, and ticker are not available)</xsl:text>
								</span>
							</xsl:if>
							<xsl:if test="contains($id,'other3')">
							<xsl:variable name="tag" select="'Other identifier (if CUSIP, ISIN, and ticker are not available)'"/>
								<span>
									<xsl:text>Other identifier (if CUSIP, ISIN, and ticker are not available)</xsl:text>
								</span>
							</xsl:if>
							<xsl:if test="contains($id,'other1')">
							<xsl:variable name="tag" select="'Other unique identifier (if ticker and ISIN are not available). Indicate the type of identifier used'"/>
								<span>
									<xsl:text>Other unique identifier (if ticker and ISIN are not available). Indicate the type of identifier used</xsl:text>
								</span>
							</xsl:if>
						</div>
				</td>
			</tr>

			<tr>
				<td class="label">
							<xsl:if test="contains($id,'cusip')">
							<xsl:variable name="tag" select="'CUSIP'"/>
								<span>
									<xsl:text>CUSIP.</xsl:text>
								</span>
							</xsl:if>
							<xsl:if test="contains($id,'isin2')">
							<xsl:variable name="tag" select="'ISIN (if CUSIP is not available)'"/>
								<span>
									<xsl:text>ISIN (if CUSIP is not available).</xsl:text>
								</span>
							</xsl:if>
							<xsl:if test="contains($id,'isin1')">
							<xsl:variable name="tag" select="'ISIN'"/>
								<span>
									<xsl:text>ISIN</xsl:text>
								</span>
							</xsl:if>
							<xsl:if test="contains($id,'ticker2')">
							<xsl:variable name="tag" select="'Ticker (if CUSIP and ISIN are not available)'"/>
								<span>
									<xsl:text>Ticker (if CUSIP and ISIN are not available).</xsl:text>
								</span>
							</xsl:if>
							<xsl:if test="contains($id,'ticker1')">
							<xsl:variable name="tag" select="'Ticker (if ISIN is not available)'"/>
								<span>
									<xsl:text>Ticker (if ISIN is not available).</xsl:text>
								</span>
							</xsl:if>
							<xsl:if test="contains($id,'other2')">
							<xsl:variable name="tag" select="'Other identifier (if CUSIP, ISIN, and ticker are not available)'"/>
								<span>
									<xsl:text>Other identifier (if CUSIP, ISIN, and ticker are not available).</xsl:text>
								</span>
							</xsl:if>
							<xsl:if test="contains($id,'other3')">
							<xsl:variable name="tag" select="'Other identifier (if CUSIP, ISIN, and ticker are not available)'"/>
								<span>
									<xsl:text>Other identifier (if CUSIP, ISIN, and ticker are not available).</xsl:text>
								</span>
							</xsl:if>
							<xsl:if test="contains($id,'other1')">
							<xsl:variable name="tag" select="'Other unique identifier (if ticker and ISIN are not available). Indicate the type of identifier used'"/>
								<span>
									<xsl:text>Other unique identifier (if ticker and ISIN are not available). Indicate the type of identifier used</xsl:text>
								</span>
							</xsl:if>
							
					</td>
				<td>
						<div class="fakeBox3">
							<xsl:value-of select="$ident/@value" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			
			<xsl:if test="contains($id,'other1')">
			<tr>
				<td class="label">Description of other unique identifier.
				</td>
				<td>
						<div class="fakeBox3">
							<xsl:value-of select="$ident/@otherDesc" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			</xsl:if>
			<xsl:if test="contains($id,'other2')">
			<tr>
				<td class="label">Description of other identifier.
				</td>
				<td>
						<div class="fakeBox3">
							<xsl:value-of select="$ident/@otherDesc" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			</xsl:if>
			<xsl:if test="contains($id,'other3')">
			<tr>
				<td class="label">If other identifier provided, indicate the type of identifier used.  
				</td>
				<td>
						<div class="fakeBox3">
							<xsl:value-of select="$ident/@otherDesc" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			</xsl:if>
			</table>
			</xsl:if>
			
	</xsl:template>
	
	</xsl:stylesheet>
	