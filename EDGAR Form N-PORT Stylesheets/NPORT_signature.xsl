<!DOCTYPE xsl:stylesheet  [
<!ENTITY ndash "&#8211;">
]>
<xsl:stylesheet
	version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:m1="http://www.sec.gov/edgar/nport"
	xmlns:ns1="http://www.sec.gov/edgar/common"
	xmlns:ncom="http://www.sec.gov/edgar/nportcommon"
	xmlns:n1="http://www.sec.gov/edgar/common_drp"
	xmlns:ns2="http://www.sec.gov/edgar/statecodes"
	xmlns:ns3="http://www.sec.gov/edgar/regacommon">

	


	<xsl:template name="Signatures">

		
			<p>
			The Registrant has duly caused this report to be signed on its behalf by the undersigned hereunto duly authorized.
		</p>
			<table>
			<tr>

				<td class="label">Registrant:</td>
				<td>
					
						<div class="fakeBox">
							<xsl:value-of select="m1:signature/ncom:nameOfApplicant" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
					
				</td>
			</tr>

			<tr>

				<td class="label">By (Signature):</td>
				<td>
					
						<div class="fakeBox">
							<xsl:value-of select="m1:signature/ncom:signature" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
					
				</td>
			</tr>

			<tr>
				<td class="label">Name:</td>
				<td>
					
						<div class="fakeBox">
							<xsl:value-of select="m1:signature/ncom:signerName" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
					
				</td>
			</tr>

			<tr>
				<td class="label">Title:</td>
				<td>
					
						<div class="fakeBox">
							<xsl:value-of select="m1:signature/ncom:title" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
					
				</td>
			</tr>

			<tr>
				<td class="label">Date:</td>
				<td>
					
						<div class="fakeBox2">
							<xsl:value-of select="m1:signature/ncom:dateSigned" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
					
				</td>
			</tr>
			
		</table>

	</xsl:template>
</xsl:stylesheet>