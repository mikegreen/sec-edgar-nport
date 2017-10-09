<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- 
		format_to_dollar: This template formats an amount of money (dollars + change) to a pattern that matches EDGAR standards.	
	-->	
	<xsl:template name="format_to_dollar">
		<xsl:param name="money"/>
	    <xsl:choose>
			<xsl:when test="number($money) > 0">
				$<input type="text" class="shortDollar" readonly="1" style="color:#000080;">
					<xsl:attribute name="value">
						<xsl:variable name="dollarAmount" select="number(substring-before($money, '.'))"/>					
						<xsl:variable name="centAmount" select="number(substring-after($money, '.'))" />
						<!-- format and printout dollar amount -->
						<xsl:value-of select="format-number($dollarAmount, '###,###,###,###,###')"/>
						<!-- format and printout cent amount -->
						<xsl:choose>
							<xsl:when test="$centAmount &lt; 100">
								<xsl:value-of select="format-number($centAmount div 100, '.00')"/>
							</xsl:when>
							<!-- the amount entered is incorrect if you reach here. Only 2 digits after decimal point are allowed. -->
							<xsl:otherwise>
								<xsl:value-of select="string('.')"/>
								<xsl:value-of select="substring-after($money, '.')"/> <!-- don't do number conversion. You might lose some value -->
							</xsl:otherwise>
						</xsl:choose>
					</xsl:attribute>
				</input>
			</xsl:when>
			<xsl:otherwise>
				$<input type="text" name="court type" class="shortDollar" readonly="1"></input>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
