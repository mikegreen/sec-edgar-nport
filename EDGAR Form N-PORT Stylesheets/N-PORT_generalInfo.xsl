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
	xmlns:ns3="http://www.sec.gov/edgar/regacommon"
	xmlns:n4="http://www.sec.gov/edgar/nportcommon">

	<!-- Item 1 templates -->
	<xsl:template name="PartA">

		<h4>Item A.1. Information about the Registrant.</h4>
		<xsl:call-template name="reportingPeriodCover" />
		
		<h4>Item A.2. Information about the Series.</h4>
		<xsl:call-template name="seriesInfo" />
		
		<h4>Item A.3. Reporting period.</h4>
		<xsl:call-template name="reportingPeriod" />

		<h4>Item A.4. Final filing</h4>
		<xsl:call-template name="finalFiling" />
		
	</xsl:template>

	<xsl:template name="reportingPeriodCover">

		<table>
			<tr>
				<td class="label">a. Name of Registrant
				</td>
				<td>
						<div class="fakeBox">
							<xsl:value-of select="m1:genInfo/m1:regName" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>

			<tr>
				<td class="label">b. Investment Company Act file number for Registrant: (e.g., 811-______)
				</td>
				<td>
						<div class="fakeBox2">
							<xsl:value-of select="m1:genInfo/m1:regFileNumber" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			
			<tr>
				<td class="label">c. CIK number of Registrant
				</td>
				<td>
						<div class="fakeBox2">
							<xsl:value-of select="m1:genInfo/m1:regCik" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			
			<tr>
				<td class="label">d. LEI of Registrant
				</td>
				<td>
						<div class="fakeBox2">
							<xsl:value-of select="m1:genInfo/m1:regLei" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
		</table>
		<br/>
		<table>	
			<tr>e.	Address and telephone number of Registrant.</tr>
		</table>
		
		<table>	
			<tr>
				<td class="label">Street Address 1
				</td>
				<td>
						<div class="fakeBox">
							<xsl:value-of select="m1:genInfo/m1:regStreet1" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			
						<tr>
				<td class="label">Street Address 2
				</td>
				<td>
						<div class="fakeBox">
							<xsl:value-of select="m1:genInfo/m1:regStreet2" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			
			<tr>
				<td class="label">City
				</td>
				<td>
						<div class="fakeBox2">
							<xsl:value-of select="m1:genInfo/m1:regCity" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			<xsl:choose>
			<xsl:when test="m1:genInfo/m1:regStateConditional">
			<tr>
				<td class="label">State, if applicable</td>
				<td>
					<div class="fakeBox2">
						<xsl:call-template name="stateDescription">
							<xsl:with-param name="stateCode"		select="string(m1:genInfo/m1:regStateConditional/@state)" />
						</xsl:call-template>
						<span>
							<xsl:text>&#160;</xsl:text>
						</span>
					</div>
				</td>
			</tr>
			<tr>
				<td class="label">Foreign country, if applicable</td>
				<td>
					<div class="fakeBox4">
						<xsl:call-template name="stateDescription">
							<xsl:with-param name="stateCode"		select="string(m1:genInfo/m1:regStateConditional/@country)" />
						</xsl:call-template>
						<span>
							<xsl:text>&#160;</xsl:text>
						</span>
					</div>
				</td>
			</tr>			
			</xsl:when>
			<xsl:otherwise>
			<tr>
				<td class="label">Foreign country, if applicable</td>
				<td>
					<div class="fakeBox4">
						<xsl:call-template name="stateDescription">
							<xsl:with-param name="stateCode"		select="string(m1:genInfo/m1:regCountry)" />
						</xsl:call-template>
						<span>
							<xsl:text>&#160;</xsl:text>
						</span>
					</div>
				</td>
			</tr>	
			</xsl:otherwise>
			</xsl:choose>
			
			<tr>
				<td class="label">Zip / Postal Code
				</td>
				<td>
						<div class="fakeBox2">
							<xsl:value-of select="m1:genInfo/m1:regZipOrPostalCode" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			
			<tr>
				<td class="label">Telephone number
				</td>
				<td>
						<div class="fakeBox2">
							<xsl:value-of select="m1:genInfo/m1:regPhone" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>

		</table>
	</xsl:template>
	
	<xsl:template name="seriesInfo">

		<table>
			<tr>
				<td class="label">a. Name of Series.
				</td>
				<td>
						<div class="fakeBox">
							<xsl:value-of select="m1:genInfo/m1:seriesName" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			
			<tr>
				<td class="label">b. EDGAR series identifier (if any).
				</td>
				<td>
						<div class="fakeBox2">
							<xsl:value-of select="m1:genInfo/m1:seriesId" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			
			<tr>
				<td class="label">c. LEI of Series.
				</td>
				<td>
						<div class="fakeBox2">
							<xsl:value-of select="m1:genInfo/m1:seriesLei" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
		</table>
			
	</xsl:template>
	
	<xsl:template name="reportingPeriod">

		<table>
					<tr>
				<td class="label">a. Date of fiscal year-end.
				</td>
				<td>
						<div class="fakeBox2">
							<xsl:value-of select="m1:genInfo/m1:repPdEnd" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
			
			<tr>
				<td class="label">b. Date as of which information is reported. 
				</td>
				<td>
						<div class="fakeBox2">
							<xsl:value-of select="m1:genInfo/m1:repPdDate" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
		</table>
			
	</xsl:template>	
	
	<xsl:template name="finalFiling">

		<table>
					<tr>
				<td class="label">Does the Fund anticipate that this will be its final filing on Form N PORT?</td>
				<td>
				<xsl:call-template name="yesNoRadio">
				<xsl:with-param name="yesNoElement" select="m1:genInfo/m1:isFinalFiling" />
				</xsl:call-template>
				</td>
			</tr>
		</table>
			
	</xsl:template>			

</xsl:stylesheet>