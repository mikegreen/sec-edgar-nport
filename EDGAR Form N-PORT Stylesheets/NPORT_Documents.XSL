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

	<!-- Documents templates -->
    
	<xsl:template name="InvisibleDocumentsInfo" >		
		<h4>
			Documents
		</h4>
		<xsl:call-template name="docs"/>
	</xsl:template>

	<xsl:template name="docs">
		<xsl:for-each select="ns1:document">
			<table role="presentation">
				<tr>
					<td class="label">File Name:
					</td>
					<td>
						<div class="fakeBox3">
							<xsl:value-of select="ns1:conformedName" />
						</div>
					</td>
				</tr>
				<tr>
					<td class="label">Type:
					</td>
					<td>
						<div class="fakeBox">
							<xsl:value-of select="ns1:conformedDocumentType" />
						</div>
					</td>
				</tr>
				<tr>
					<td class="label">Description:
					</td>
					<td>
						<div class="fakeBox3">
							<xsl:value-of select="ns1:description"/>
						</div>
					</td>
				</tr>					
				<tr>
					<td class="label">Contents:
					</td>
					<td>
						<div class="fakeBox3">
							<xsl:value-of select="ns1:contents" />
						</div>
					</td>
				</tr>		
			</table>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>