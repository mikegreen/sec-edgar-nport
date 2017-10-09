<!DOCTYPE xsl:stylesheet  [
<!ENTITY ndash "&#8211;">
]>
<xsl:stylesheet
	version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:m1="http://www.sec.gov/edgar/nport">

	


	<xsl:template name="PartE">

	<table>
		<tr>
			<td>
				The Fund may provide any information it believes would be helpful in
				understanding the information reported in response to any Item of
				this Form. The Fund may also explain any assumptions that it made in
				responding to any Item of this Form. To the extent responses relate
				to a particular Item, provide the Item number(s), as applicable.
			</td>
		</tr>
	</table>
	
	<xsl:for-each select="m1:explntrNotes/m1:explntrNote">
			<table>
			<tr>
				<td class="label">Note Item</td>
				<td>
						<div class="fakeBox2">
							<xsl:value-of select="@noteItem" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
		</table>

		<table>
			<tr>
				<td class="label">Explanatory Notes</td>
				<td>
						<div class="fakeBox">
							<xsl:value-of select="@note" />
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</div>
				</td>
			</tr>
		</table>
	</xsl:for-each>	

	</xsl:template>
	
</xsl:stylesheet>