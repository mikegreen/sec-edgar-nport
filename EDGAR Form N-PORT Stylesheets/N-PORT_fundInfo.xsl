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
	<xsl:template name="PartB">

      <table>
      <tr><td>Report the following information for the Fund and its consolidated subsidiaries.</td></tr>
      </table>
   
		<h4>Item B.1. Assets and liabilities. Report amounts in U.S. dollars.</h4>
		<xsl:call-template name="assetsLiabilities" />
		
		<h4>Item B.2. Certain assets and liabilities.  Report amounts in U.S. dollars.</h4>
		<xsl:call-template name="certainAssets" />
		
		<h4>Item B.3. Portfolio level risk metrics. </h4>
		<xsl:call-template name="portfolioLevelRisk" />

		<h4>Item B.4. Securities lending.  </h4>
		<xsl:call-template name="secLending" />
		
		<h4>Item B.5. Return information.  </h4>
		<xsl:call-template name="retInfo" />

		<h4>Item B.6. Flow information.  </h4>
		<xsl:call-template name="flowInfo" />
		
		<h4>Item B.7. Highly Liquid Investment Minimum information.   </h4>
		<xsl:call-template name="highlyLiquidInvst" />

		<h4>Item B.8. Liquidity aggregate classification information. For portfolio investments of open-end management investment companies, provide the following information:  </h4>
		<xsl:call-template name="liquidityAggrClass" />
		
	</xsl:template>

	<xsl:template name="assetsLiabilities">
		
		<table>
			<tr>
				<td class="label">a. Total assets, including assets attributable to miscellaneous securities reported in Part D.
				</td>
				<td>
						<div class="fakeBox4">
							<xsl:value-of select="m1:fundInfo/m1:totAssets" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			
			<tr>
				<td class="label">b. Total liabilities.
				</td>
				<td>
						<div class="fakeBox4">
							<xsl:value-of select="m1:fundInfo/m1:totLiabs" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			
			<tr>
				<td class="label">c. Net assets. 
				</td>
				<td>
						<div class="fakeBox4">
							<xsl:value-of select="m1:fundInfo/m1:netAssets" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
		</table>
		
	</xsl:template>
	
	<xsl:template name="certainAssets">

		<table>
			<tr>
				<td class="label">a. Assets attributable to miscellaneous securities reported in Part D. 
				</td>
				<td>
						<div class="fakeBox4">
							<xsl:value-of select="m1:fundInfo/m1:assetsAttrMiscSec" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			
			<tr>
				<td class="label">b. Assets invested in a Controlled Foreign Corporation for the purpose of investing in certain types of instruments such as, but not limited to, commodities.
				</td>
				<td>
						<div class="fakeBox4">
							<xsl:value-of select="m1:fundInfo/m1:assetsInvested" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			</table>
			
				<p>c. Borrowings attributable to amounts payable for notes payable, bonds, and similar debt, as reported pursuant to rule 6-04(13)(a) of Regulation S-X [17 CFR 210.6-04(13)(a)].</p>
		<table>
		<tr>
		<td>Amounts payable within one year.</td>
		</tr>

			<tr>
				<td class="label">Banks or other financial institutions for borrowings.
				</td>
				<td>
						<div class="fakeBox4">
							<xsl:value-of select="m1:fundInfo/m1:amtPayOneYrBanksBorr" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			
			<tr>
				<td class="label">Controlled companies.
				</td>
				<td>
						<div class="fakeBox4">
							<xsl:value-of select="m1:fundInfo/m1:amtPayOneYrCtrldComp" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>

			<tr>
				<td class="label">Other affiliates.
				</td>
				<td>
						<div class="fakeBox4">
							<xsl:value-of select="m1:fundInfo/m1:amtPayOneYrOthAffil" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>

			<tr>
				<td class="label">Others.
				</td>
				<td>
						<div class="fakeBox4">
							<xsl:value-of select="m1:fundInfo/m1:amtPayOneYrOther" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>

		
		<tr><td>Amounts payable after one year.</td></tr>

			<tr>
				<td class="label">Banks or other financial institutions for borrowings.
				</td>
				<td>
						<div class="fakeBox4">
							<xsl:value-of select="m1:fundInfo/m1:amtPayAftOneYrBanksBorr" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			
			<tr>
				<td class="label">Controlled companies.
				</td>
				<td>
						<div class="fakeBox4">
							<xsl:value-of select="m1:fundInfo/m1:amtPayAftOneYrCtrldComp" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>

			<tr>
				<td class="label">Other affiliates.
				</td>
				<td>
						<div class="fakeBox4">
							<xsl:value-of select="m1:fundInfo/m1:amtPayAftOneYrOthAffil" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>

			<tr>
				<td class="label">Others.
				</td>
				<td>
						<div class="fakeBox4">
							<xsl:value-of select="m1:fundInfo/m1:amtPayAftOneYrOther" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			</table>
		
			<p>d.	Payables for investments purchased either (i) on a delayed delivery, when-issued, or other firm commitment basis, or (ii) on a standby commitment basis.</p>
		<table>
			<tr>
				<td class="label">(i) On a delayed delivery, when-issued, or other firm commitment basis:
				</td>
				<td>
						<div class="fakeBox4">
							<xsl:value-of select="m1:fundInfo/m1:delayDeliv" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>

			<tr>
				<td class="label">(ii) On a standby commitment basis:
				</td>
				<td>
						<div class="fakeBox4">
							<xsl:value-of select="m1:fundInfo/m1:standByCommit" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>

			<tr>
				<td class="label">e. Liquidation preference of outstanding preferred stock issued by the Fund.
				</td>
				<td>
						<div class="fakeBox4">
							<xsl:value-of select="m1:fundInfo/m1:liquidPref" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>

		</table>
			
	</xsl:template>
	
<xsl:template name="portfolioLevelRisk">
	
<p>If the average value of the Fund's debt securities positions for the previous three months, in the aggregate,
 exceeds 25% or more of the Fund's net asset value, provide:</p>


	
	<xsl:for-each select="m1:fundInfo/m1:curMetrics/m1:curMetric" >
	<table>
	<tr>
					<td>
							Currency Metric:		<xsl:value-of select="position()"></xsl:value-of>
					</td>
				</tr>
	<tr>
			<td class="label">ISO Currency code
			</td>
			<td>
				<div class="fakeBox2">
					<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr"		select="m1:curCd" />
							<xsl:with-param name="category"	select="'ISO_CURRENCY_CODE'" />
					</xsl:call-template>
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		</table>
		<p>a. Interest Rate Risk (DV01). For each currency for which the Fund had a value of 1% or more of the Fund’s net asset
		 value, provide the change in value of the portfolio resulting from a 1 basis point change in interest rates,
		  for each of the following maturities:  3 month, 1 year, 5 years, 10 years, and 30 years.
		</p>
		<table>
		 <xsl:call-template name="portfolioStats">
	  <xsl:with-param name="element"	select="m1:intrstRtRiskdv01" />
	   </xsl:call-template>
	   </table>
	  
	  <p>b. Interest Rate Risk (DV100). For each currency for which the Fund had a value of 1% or more of the Fund’s net asset
	    value, provide the change in value of the portfolio resulting from a 100 basis point change in interest rates,
	     for each of the following maturities: 3 month, 1 year, 5 years, 10 years, and 30 years.
		</p>
		<table>
		 <xsl:call-template name="portfolioStats">
	  <xsl:with-param name="element"	select="m1:intrstRtRiskdv100" />
	   </xsl:call-template>
	   </table>
	
	
	</xsl:for-each>
	


 <p>c. Credit Spread Risk (SDV01, CR01 or CS01). Provide the change in value of the portfolio resulting from a 1 basis point 
 change in credit spreads where the shift is applied to the option adjusted spread, aggregated by investment grade and non-investment 
 grade exposures, for each of the following maturities:  3 month, 1 year, 5 years, 10 years, and 30 years.
		 </p>
	<table>	 
<tr><td>Investment grade.</td></tr>		 
		 <xsl:call-template name="portfolioStats">
	   <xsl:with-param name="element"	select="m1:fundInfo/m1:creditSprdRiskInvstGrade" />
	   </xsl:call-template>
<tr></tr>	
<tr><td>Non-Investment grade.</td></tr>		 
		 <xsl:call-template name="portfolioStats">
	   <xsl:with-param name="element"	select="m1:fundInfo/m1:creditSprdRiskNonInvstGrade" />
	   </xsl:call-template>   
</table>

<p>For purposes of Item B.3., calculate value as the sum of the absolute values of: <br/>
(i) the value of each debt security, <br/>
(ii) the notional value of each swap, including, but not limited to, total return swaps, interest rate swaps, and credit default swaps, for which the underlying reference asset or assets are debt securities or an interest rate; <br/>
(iii) the notional value of each futures contract for which the underlying reference asset or assets are debt securities or an interest rate; and <br/>
(iv) the delta-adjusted notional value of any option for which the underlying reference asset is an asset described in clause (i),(ii), or (iii).  <br/>
<br/>
Report zero for maturities to which the Fund has no exposure.  For exposures that fall between any of the listed maturities in (a) and (b), use linear interpolation to approximate exposure to each maturity listed above. For exposures outside of the range of maturities listed above, include those exposures in the nearest maturity.   </p><br/>

</xsl:template>
	
	<xsl:template name="secLending">

     <p>a. For each borrower in any securities lending transaction, provide the following information:</p>
     <table>
      <xsl:for-each select="m1:fundInfo/m1:borrowers/m1:borrower">
     		<tr>
					<td>
							Borrower Information Record:		<xsl:value-of select="position()"></xsl:value-of>
					</td>
				</tr>
			<tr>
				<td class="label">i. Name of borrower.
				</td>
				<td>
						<div class="fakeBox3">
							<xsl:value-of select="@name" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			
			<tr>
				<td class="label">ii. LEI (if any) of borrower
				</td>
				<td>
						<div class="fakeBox3">
							<xsl:value-of select="@lei" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			
			<tr>
				<td class="label">iii. Aggregate value of all securities on loan to the borrower.
				</td>
				<td>
						<div class="fakeBox4">
							<xsl:value-of select="@aggrVal" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
		</xsl:for-each>
		</table>

	<table role="presentation">
		<tr>
			<td class="label">b. Did any securities lending counterparty provide any non-cash collateral? </td>
			<td>
					<xsl:call-template name="condYesNoRadio">
						<xsl:with-param name="noElement"	select="m1:fundInfo/m1:isNonCashCollateral" />
						<xsl:with-param name="yesElement"	select="m1:fundInfo/m1:aggregateCondition/@isNonCashCollateral" />
					</xsl:call-template>
			</td>
		</tr>
	</table>
	
	<xsl:choose>
	<xsl:when test="m1:fundInfo/m1:aggregateCondition">
		<p>If yes, unless the non-cash collateral is included in the
				Schedule of Portfolio Investments in Part C, provide the following
				information for each category of non-cash collateral received for
				loaned securities:
		</p>
		
		<xsl:for-each select="m1:fundInfo/m1:aggregateCondition/m1:aggregateInfos/m1:aggregateInfo">
		<table>
					<tr>
					<td>
							Aggregate Info Record:		<xsl:value-of select="position()"></xsl:value-of>
					</td>
				</tr>
	
		<tr>
			<td class="label">i. Aggregate principal amount.
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
			<td class="label">ii. Aggregate value of collateral.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="@collatrl" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		</table>
			<p>iii. Category of investments that most closely represents the collateral, selected from among the following 
			(asset-backed securities; agency collateralized mortgage obligations; agency debentures and agency strips; agency 
			mortgage-backed securities; U.S. Treasuries (including strips); other instrument).<br/>
			If "other instrument," include a brief description, including, if applicable, whether it is an irrevocable letter
			 of credit.</p>
			 <table>
		<xsl:choose>
		
		<xsl:when test="m1:invstCatConditional">
		<tr>
			<td class="label">Investment category
			</td>
			<td>
				<div class="fakeBox2">
					<xsl:value-of select="m1:invstCatConditional/@invstCat" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		
		<tr>
			<td class="label">include a brief description, including, if applicable, whether it is an irrevocable letter of credit.
			</td>
			<td>
				<div class="fakeBox3">
					<xsl:value-of select="m1:invstCatConditional/@otherDesc" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		</xsl:when>
		<xsl:otherwise>
		<tr>
			<td class="label">Investment category
			</td>
			<td>
				<div class="fakeBox">
					<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr"		select="m1:invstCat" />
							<xsl:with-param name="category"	select="'INVESTMENT_CATEGORY_TYPE'" />
					</xsl:call-template>
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		</xsl:otherwise>
		
		</xsl:choose>
	</table>
	</xsl:for-each>
	
	</xsl:when>
	</xsl:choose>
		
	</xsl:template>	
	
	<xsl:template name="retInfo">
	
		
		<p>a.	Monthly total returns of the Fund for each of the preceding three months.  If the Fund is a Multiple Class Fund,
		 report returns for each class. Such returns shall be calculated in accordance with the methodologies outlined in Item
		 26(b) (1) of Form N-1A, Instruction 13 to sub-Item 1 of Item 4 of Form N-2, or Item 26(b) (i) of Form N-3, as applicable.
		 </p>
	
	
	<xsl:for-each select="m1:fundInfo/m1:returnInfo/m1:monthlyTotReturns/m1:monthlyTotReturn">
   <table>
		<tr>
			<td>
				Monthly Total Return Record:
				<xsl:value-of select="position()"></xsl:value-of>
			</td>
		</tr>
	
	
	
			<tr>
			<td class="label">Monthly total returns of the Fund for each of the preceding three months – Month 1.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="@rtn1" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		
		<tr>
			<td class="label">Monthly total returns of the Fund for each of the preceding three months – Month 2.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="@rtn2" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		
		<tr>
			<td class="label">Monthly total returns of the Fund for each of the preceding three months – Month 3.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="@rtn3" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		
		<tr>
			<td class="label">b.	Class identification number(s) (if any) of the Class(es) for which returns are reported.
			</td>
			<td>
				<div class="fakeBox2">
					<xsl:value-of select="@classId" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>	
	</table>		
	</xsl:for-each>

	<p>c. For each of the preceding three months, monthly net realized gain
		(loss) and net change in unrealized appreciation (or depreciation)
		attributable to derivatives for each of the following categories:
		commodity contracts, credit contracts, equity contracts, foreign
		exchange contracts, interest rate contracts, and other contracts.
		Within each such asset category, further report the same information
		for each of the following types of derivatives instrument: forward,
		future, option, swaption, swap, warrant, and other. Report in U.S.
		dollars. Losses and depreciation shall be reported as negative
		numbers.
	</p>

	<xsl:choose>
	<xsl:when test="m1:fundInfo/m1:returnInfo/m1:monthlyReturnCats">
	
	<xsl:choose>
	<xsl:when test="m1:fundInfo/m1:returnInfo/m1:monthlyReturnCats/m1:commodityContracts">
	<xsl:call-template name="assetCats">
	<xsl:with-param name="path" select="m1:fundInfo/m1:returnInfo/m1:monthlyReturnCats/m1:commodityContracts"/>
	<xsl:with-param name="type" select="'Commodity Contracts'"/>
	</xsl:call-template>
	</xsl:when>
	</xsl:choose>
	
	<xsl:choose>
	<xsl:when test="m1:fundInfo/m1:returnInfo/m1:monthlyReturnCats/m1:creditContracts">
	<xsl:call-template name="assetCats">
	<xsl:with-param name="path" select="m1:fundInfo/m1:returnInfo/m1:monthlyReturnCats/m1:creditContracts"/>
	<xsl:with-param name="type" select="'Credit Contracts'"/>
	</xsl:call-template>
	</xsl:when>
	</xsl:choose>
	
	<xsl:choose>
	<xsl:when test="m1:fundInfo/m1:returnInfo/m1:monthlyReturnCats/m1:equityContracts">
	<xsl:call-template name="assetCats">
	<xsl:with-param name="path" select="m1:fundInfo/m1:returnInfo/m1:monthlyReturnCats/m1:equityContracts"/>
	<xsl:with-param name="type" select="'Equity Contracts'"/>
	</xsl:call-template>
	</xsl:when>
	</xsl:choose>
	
	<xsl:choose>
	<xsl:when test="m1:fundInfo/m1:returnInfo/m1:monthlyReturnCats/m1:foreignExchgContracts">
	<xsl:call-template name="assetCats">
	<xsl:with-param name="path" select="m1:fundInfo/m1:returnInfo/m1:monthlyReturnCats/m1:foreignExchgContracts"/>
	<xsl:with-param name="type" select="'Foreign Exchange Contracts'"/>
	</xsl:call-template>
	</xsl:when>
	</xsl:choose>
	
	<xsl:choose>
	<xsl:when test="m1:fundInfo/m1:returnInfo/m1:monthlyReturnCats/m1:interestRtContracts">
	<xsl:call-template name="assetCats">
	<xsl:with-param name="path" select="m1:fundInfo/m1:returnInfo/m1:monthlyReturnCats/m1:interestRtContracts"/>
	<xsl:with-param name="type" select="'Interest Rate Contracts'"/>
	</xsl:call-template>
	</xsl:when>
	</xsl:choose>
	
	<xsl:choose>
	<xsl:when test="m1:fundInfo/m1:returnInfo/m1:monthlyReturnCats/m1:otherContracts">
	<xsl:call-template name="assetCats">
	<xsl:with-param name="path" select="m1:fundInfo/m1:returnInfo/m1:monthlyReturnCats/m1:otherContracts"/>
	<xsl:with-param name="type" select="'Other Contracts'"/>
	</xsl:call-template>
	</xsl:when>
	</xsl:choose>
	
	</xsl:when>	
	<xsl:otherwise>
	<table>
	<tr>
			<td class="label">Asset category.
			</td>
			<td>
				<div class="fakeBox2">
					<xsl:value-of select="m1:fundInfo/m1:returnInfo/m1:assetCat" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
	</table>	
	</xsl:otherwise>
	</xsl:choose>
	
	<p>d.	For each of the preceding three months, monthly net realized gain (loss) and net change in unrealized appreciation
	(or depreciation) attributable to investment other than derivatives. Report in U.S. dollars.  Losses and depreciation shall
	 be reported as negative numbers.<br/>Month 1</p>
	 <br/>
	 
	<table>
	<xsl:call-template name="netRealUnreal">
	<xsl:with-param name="month" select="1"/>
	<xsl:with-param name="path" select="m1:fundInfo/m1:returnInfo/m1:othMon1"/>
	</xsl:call-template>
	<tr><td>Month 2</td></tr>
	<xsl:call-template name="netRealUnreal">
	<xsl:with-param name="month" select="2"/>
	<xsl:with-param name="path" select="m1:fundInfo/m1:returnInfo/m1:othMon2"/>
	</xsl:call-template>
	<tr><td>Month 3</td></tr>
	<xsl:call-template name="netRealUnreal">
	<xsl:with-param name="month" select="3"/>
	<xsl:with-param name="path" select="m1:fundInfo/m1:returnInfo/m1:othMon3"/>
	</xsl:call-template>
		</table>
	
	</xsl:template>
	
	<xsl:template name="assetCats">
	<xsl:param name="type"/>
	<xsl:param name="path"/>
	
	<table>
		   <tr>
			<td class="label">Asset category.
			</td>
			<td>
				<div class="fakeBox2">
					<xsl:value-of select="$type"/>
				</div>
			</td>
		</tr>
	</table>
		
	<xsl:call-template name="netRealUnreal">
	<xsl:with-param name="month" select="1"/>
	<xsl:with-param name="path" select="$path/m1:mon1"/>
	</xsl:call-template>
	<xsl:call-template name="netRealUnreal">
	<xsl:with-param name="month" select="2"/>
	<xsl:with-param name="path" select="$path/m1:mon2"/>
	</xsl:call-template>
	<xsl:call-template name="netRealUnreal">
	<xsl:with-param name="month" select="3"/>
	<xsl:with-param name="path" select="$path/m1:mon3"/>
	</xsl:call-template>
	
	<xsl:choose>
	<xsl:when test="$path/m1:forwardCategory">
			<xsl:call-template name="instrumentCats">
				<xsl:with-param name="path" select="$path/m1:forwardCategory"/>
				<xsl:with-param name="type" select="'Forward'"/>
			</xsl:call-template>
	</xsl:when>
	</xsl:choose>
	
		<xsl:choose>
	<xsl:when test="$path/m1:futureCategory">
			<xsl:call-template name="instrumentCats">
				<xsl:with-param name="path" select="$path/m1:futureCategory"/>
				<xsl:with-param name="type" select="'Future'"/>
			</xsl:call-template>
	</xsl:when>
	</xsl:choose>
	
		<xsl:choose>
	<xsl:when test="$path/m1:optionCategory">
			<xsl:call-template name="instrumentCats">
				<xsl:with-param name="path" select="$path/m1:optionCategory"/>
				<xsl:with-param name="type" select="'Option'"/>
			</xsl:call-template>
	</xsl:when>
	</xsl:choose>
	
		<xsl:choose>
	<xsl:when test="$path/m1:swaptionCategory">
			<xsl:call-template name="instrumentCats">
				<xsl:with-param name="path" select="$path/m1:swaptionCategory"/>
				<xsl:with-param name="type" select="'Swaption'"/>
			</xsl:call-template>
	</xsl:when>
	</xsl:choose>
	
		<xsl:choose>
	<xsl:when test="$path/m1:swapCategory">
			<xsl:call-template name="instrumentCats">
				<xsl:with-param name="path" select="$path/m1:swapCategory"/>
				<xsl:with-param name="type" select="'Swap'"/>
			</xsl:call-template>
	</xsl:when>
	</xsl:choose>
	
		<xsl:choose>
	<xsl:when test="$path/m1:warrantCategory">
			<xsl:call-template name="instrumentCats">
				<xsl:with-param name="path" select="$path/m1:warrantCategory"/>
				<xsl:with-param name="type" select="'Warrant'"/>
			</xsl:call-template>
	</xsl:when>
	</xsl:choose>
	
		<xsl:choose>
	<xsl:when test="$path/m1:otherCategory">
			<xsl:call-template name="instrumentCats">
				<xsl:with-param name="path" select="$path/m1:otherCategory"/>
				<xsl:with-param name="type" select="'Other'"/>
			</xsl:call-template>
	</xsl:when>
	</xsl:choose>
	

	</xsl:template>
	
	
	<xsl:template name="instrumentCats">
	<xsl:param name="path"/>
	<xsl:param name="type"/>
	<table>
	
		<tr>
			<td class="label">Instrument type.
			</td>
			<td>
				<div class="fakeBox2">
					<xsl:value-of select="$type"/>
				</div>
			</td>
		</tr>
	</table>
		
	<xsl:call-template name="netRealUnreal">
	<xsl:with-param name="month" select="1"/>
	<xsl:with-param name="path" select="$path/m1:instrMon1"/>
	</xsl:call-template>
	
	<xsl:call-template name="netRealUnreal">
	<xsl:with-param name="month" select="2"/>
	<xsl:with-param name="path" select="$path/m1:instrMon2"/>
	</xsl:call-template>

	<xsl:call-template name="netRealUnreal">
	<xsl:with-param name="month" select="3"/>
	<xsl:with-param name="path" select="$path/m1:instrMon3"/>
	</xsl:call-template>
	
	
	</xsl:template>
	
	<xsl:template name="netRealUnreal">
	<xsl:param name="month"/>
	<xsl:param name="path"/>
	<table>
	
		<tr>
			<td class="label">Monthly net realized gain(loss) – Month <xsl:value-of select="$month"/>
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$path/@netRealizedGain" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		
		<tr>
			<td class="label">Monthly net change in unrealized appreciation (or depreciation) – Month <xsl:value-of select="$month"/>
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$path/@netUnrealizedAppr" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>		
	</table>
	</xsl:template>
	
	<xsl:template name="flowInfo">

	<table>
		<tr>
			<td>Provide the aggregate dollar amounts for sales and
				redemptions/repurchases of Fund shares during each of the preceding
				three months. If shares of the Fund are held in omnibus accounts,
				for purposes of calculating the Fund's sales, redemptions, and
				repurchases, use net sales or redemptions/repurchases from such
				omnibus accounts. The amounts to be reported under this Item should
				be after any front-end sales load has been deducted and before any
				deferred or contingent deferred sales load or charge has been
				deducted. Shares sold shall include shares sold by the Fund to a
				registered unit investment trust. For mergers and other
				acquisitions, include in the value of shares sold any transaction in
				which the Fund acquired the assets of another investment company or
				of a personal holding company in exchange for its own shares. For
				liquidations, include in the value of shares redeemed any
				transaction in which the Fund liquidated all or part of its assets.
				Exchanges are defined as the redemption or repurchase of shares of
				one Fund or series and the investment of all or part of the proceeds
				in shares of another Fund or series in the same family of investment
				companies.</td>
		</tr>
	</table>


	<table>
		<tr>
			<td>
				Month 1
			</td>
		</tr>
	</table>

	<xsl:call-template name="flowInfoCommon">
		<xsl:with-param		name="element"		select="m1:fundInfo/m1:mon1Flow" />
	</xsl:call-template>

	<table>
		<tr>
			<td>
				Month 2
			</td>
		</tr>
	</table>

	<xsl:call-template name="flowInfoCommon">
		<xsl:with-param
			name="element"
			select="m1:fundInfo/m1:mon2Flow" />
	</xsl:call-template>

	<table>
		<tr>
			<td>
				Month 3
			</td>
		</tr>
	</table>

	<xsl:call-template name="flowInfoCommon">
		<xsl:with-param
			name="element"
			select="m1:fundInfo/m1:mon3Flow" />
	</xsl:call-template>	
	
	</xsl:template>	
	
	<xsl:template name="highlyLiquidInvst">

<table>
		<tr>
			<td class="label">a. If applicable, provide the Fund's current Highly Liquid Investment Minimum.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="m1:fundInfo/m1:liquidInvst/m1:highlyLiquidInvst" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		<tr>
			<td class="label">b. If applicable, provide the number of days that the Fund's holdings in Highly Liquid Investments fell below the Fund's Highly Liquid Investment Minimum during the reporting period.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="m1:fundInfo/m1:liquidInvst/m1:daysOfHolding" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		<xsl:choose>
		<xsl:when test="m1:fundInfo/m1:liquidInvst/m1:liquidInvConditional">
		<tr>
				<td class="label">c. Did the Fund's Highly Liquid Investment Minimum change during the reporting period? 
				</td>
				<td>
				<xsl:call-template name="yesNoNARadio">
					<xsl:with-param	name="yesNoElement"	select="m1:fundInfo/m1:liquidInvst/m1:liquidInvConditional/m1:isChangeRepPd"  />
				</xsl:call-template>
			</td>
				
			</tr>
			<xsl:for-each select="m1:fundInfo/m1:liquidInvst/m1:liquidInvConditional/m1:rptPdChanges/m1:rptPdChange">
			<tr>
			<td class="label">i.	If yes, provide any Highly Liquid Investment Minimums set by the fund during the reporting period. 
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="." />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
			</xsl:for-each>
		</xsl:when>
		<xsl:otherwise>
		<tr>
				<td class="label">c. Did the Fund's Highly Liquid Investment Minimum change during the reporting period? 
				</td>
					<td>
				<xsl:call-template name="yesNoNARadio">
					<xsl:with-param	name="yesNoElement"		select="m1:fundInfo/m1:liquidInvst/m1:isChangeRepPd" />
				</xsl:call-template>
			</td>
				
			</tr>
		</xsl:otherwise>
		</xsl:choose>
		</table>
	</xsl:template>	
	
	<xsl:template name="liquidityAggrClass">
	
<p>a. The aggregate percentage of investments that are assets (excluding any investments that are reflected as 
liabilities on the Fund's balance sheet) compared to total investments that are assets of the Fund for each of the 
following categories as specified in rule 22e-4[17 CFR 270.22e-4]:</p>
<table>
<xsl:choose>
<xsl:when test="m1:fundInfo/m1:aggrClassificationInfo/m1:aggrInvs">
<tr><td>i. Highly Liquid Investments</td></tr>
<tr><td>ii. Moderately Liquid Investments</td></tr>
<tr><td>iii. Less Liquid Investments</td></tr>
<tr><td>iv. Illiquid Investments</td></tr>

<xsl:for-each select="m1:fundInfo/m1:aggrClassificationInfo/m1:aggrInvs/m1:aggrInv" >
			<tr>
				<td class="label">Category
				</td>
				<td>
						<div class="fakeBox3">
							<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr"		select="string(@fundCat)" />
							<xsl:with-param name="category"	select="'LIQUID_FUND_CATEGORY_TYPE'" />
						</xsl:call-template>
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			
			<tr>
				<td class="label">Aggregate percentage of investments
				</td>
				<td>
						<div class="fakeBox4">
							<xsl:value-of select="@aggrPct" />
							<span>
								<xsl:text>%</xsl:text>
							</span>
						</div>
				</td>
			</tr>
</xsl:for-each>
</xsl:when>
<xsl:otherwise>
<tr>
				<td class="label">Category
				</td>
				<td>
						<div class="fakeBox4">
							<xsl:value-of select="m1:fundInfo/m1:aggrClassificationInfo/m1:fundCat" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
</xsl:otherwise>
</xsl:choose>
</table>


<p>b. Derivatives Transactions. The percentage of the Fund's Highly Liquid Investments that it has segregated to cover
 or pledged to satisfy margin requirements in connection with derivatives transactions that are classified as:</p>
<table>
<xsl:choose>
<xsl:when test="m1:fundInfo/m1:aggrClassificationInfo/m1:derivTrans">
<tr><td>1. Moderately Liquid Investments</td></tr>
<tr><td>2. Less Liquid Investments</td></tr>
<tr><td>3. Illiquid Investments</td></tr>

<xsl:for-each select="m1:fundInfo/m1:aggrClassificationInfo/m1:derivTrans/m1:derivTran">
			<tr>
				<td class="label">Classification
				</td>
				<td>
						<div class="fakeBox">
						<xsl:call-template name="enumAbbr">
							<xsl:with-param name="abbr"		select="@classification" />
							<xsl:with-param name="category"	select="'LIQUID_FUND_CATEGORY_TYPE'" />
						</xsl:call-template>
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			
			<tr>
				<td class="label">Percentage of the Fund's Highly Liquid Investments that are segregated or pledged to cover the Fund's derivatives transactions.
				</td>
				<td>
						<div class="fakeBox4">
							<xsl:value-of select="@fundPct" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
		
</xsl:for-each>	
</xsl:when>
<xsl:otherwise>
	<tr>
				<td class="label">Classification
				</td>
				<td>
						<div class="fakeBox4">
							<xsl:value-of select="m1:fundInfo/m1:aggrClassificationInfo/m1:classification" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
</xsl:otherwise>
</xsl:choose>
		
</table>

	</xsl:template>	
	
	<xsl:template name="portfolioStats">
	<xsl:param name="element" />
		
		<tr> <td>Maturity period.</td></tr>
		
		<tr>
			<td class="label">3 month.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$element/@period3Mon" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		
		<tr>
			<td class="label">1 year. 
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$element/@period1Yr" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		
		<tr>
			<td class="label">5 years.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$element/@period5Yr" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		
		<tr>
			<td class="label">10 years.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$element/@period10Yr" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
		
		<tr>
			<td class="label">30 years.
			</td>
			<td>
				<div class="fakeBox4">
					<xsl:value-of select="$element/@period30Yr" />
					<span>
						<xsl:text>&#160;</xsl:text>
					</span>
				</div>
			</td>
		</tr>
	</xsl:template>

	<xsl:template name="flowInfoCommon">
		<xsl:param name="element" />

<table>
	<tr>
		<td class="label">a. Total net asset value of shares sold (including exchanges but excluding reinvestment of dividends and distributions).  
		</td>
		<td>
			<div class="fakeBox4">
				<xsl:value-of select="$element/@sales" />
				<span>
					<xsl:text>&#160;</xsl:text>
				</span>
			</div>
		</td>
	</tr>
	<tr>
		<td class="label">b. Total net asset value of shares sold in connection with reinvestments of dividends and distributions.
		</td>
		<td>
			<div class="fakeBox4">
				<xsl:value-of select="$element/@reinvestment" />
				<span>
					<xsl:text>&#160;</xsl:text>
				</span>
			</div>
		</td>
	</tr>
	<tr>
		<td class="label">c. Total net asset value of shares redeemed or repurchased, including exchanges.  
		</td>
		<td>
			<div class="fakeBox4">
				<xsl:value-of select="$element/@redemption" />
				<span>
					<xsl:text>&#160;</xsl:text>
				</span>
			</div>
		</td>
	</tr>
</table>

	</xsl:template>
	
			<xsl:template name="yesNoNARadio">
			<xsl:param name="yesNoElement" />
		<span class="yesNo">
						<xsl:choose>
							<xsl:when
								test="count($yesNoElement) &gt; 0">
								<xsl:choose>
									<xsl:when
										test="string($yesNoElement) = 'Y'">
										<img
											src="Images/radio-checked.jpg"
											alt="Yes is checked" />
										Yes
										<img
											src="Images/radio-unchecked.jpg"
											alt="No is not checked" />
										No
										<img
											src="Images/radio-unchecked.jpg"
											alt="N/A is not checked" />
										N/A
									</xsl:when>
								</xsl:choose>
								<xsl:choose>
									<xsl:when
										test="string($yesNoElement) = 'N'">
										<img
											src="Images/radio-unchecked.jpg"
											alt="Yes is not checked" />
										Yes
										<img
											src="Images/radio-checked.jpg"
											alt="No is checked" />
										No
										<img
											src="Images/radio-unchecked.jpg"
											alt="N/A is not checked" />
										N/A
									</xsl:when>
								</xsl:choose>
								<xsl:choose>
									<xsl:when
										test="string($yesNoElement) = 'N/A'">
										<img
											src="Images/radio-unchecked.jpg"
											alt="Yes is not checked" />
										Yes
										<img
											src="Images/radio-unchecked.jpg"
											alt="No is not checked" />
										No
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
									alt="Yes is not checked" />
								Yes
								<img
									src="Images/radio-unchecked.jpg"
									alt="No is not checked" />
								No
								<img
									src="Images/radio-unchecked.jpg"
									alt="N/A is not checked" />
								N/A								
							</xsl:otherwise>
						</xsl:choose>
					</span>

			</xsl:template>
			
			

</xsl:stylesheet>