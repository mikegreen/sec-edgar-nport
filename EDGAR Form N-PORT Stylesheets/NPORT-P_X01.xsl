<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xsl:stylesheet  [
<!ENTITY ndash "&#8211;">
]>
<xsl:stylesheet
	version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:m1="http://www.sec.gov/edgar/nport"
	xmlns:ns1="http://www.sec.gov/edgar/common">

	<xsl:import href="util.xsl" />

	<xsl:output
		method="html"
		indent="no"
		encoding="iso-8859-1"
		doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
		doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" />
   <xsl:variable name = "submissionType" select = "m1:edgarSubmission/m1:headerData/m1:submissionType" />
   <xsl:variable name="icType" select="m1:edgarSubmission/m1:headerData/m1:filerInfo/m1:invstCompanyType" />
	<xsl:template match="/">
	
		<html>
			<head>
				<!-- <link rel="stylesheet" type="text/css" href="css/SDR_print.css" 
					/> -->
				<style>
					/* Reset Reloaded -
					http://meyerweb.com/eric/thoughts/2007/05/01/reset-reloaded/ */
					html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,font,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,dl,dt,dd,ol,ul,li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td
					{
					margin: 0;
					padding: 0;
					border: 0;
					outline: 0;
					font-weight: inherit;
					font-style: inherit;
					font-size: 100%;
					font-family: inherit;
					vertical-align: baseline;
					}
					/* remember to define focus styles! */
					:focus {
					outline: 0;
					}

					body {
					line-height: 1;
					color: black;
					background:
					white;
					}

					.fakeBox {
					border-top: 1px solid #999;
					border-right: 1px solid	#ccc;
					border-bottom: 1px solid #ccc;
					border-left: 2px solid #999;
					/*padding: 2px;*/
					padding: 0px;
					min-width: 300px;
					min-height: 20px;
					_width: 800px;
					font-size: 0.9em;
					color: blue;
					}

					.fakeBox2 {
					border-top:
					2px solid #999;
					border-right: 1px solid #ccc;
					border-bottom: 1px
					solid #ccc;
					border-left: 2px solid #999;
					padding: 2px;
					min-width:
					200px;
					width: 200px;
					height: 15px;
					word-wrap: break-word;
					font-size:
					0.9em;
					color: blue;
					}

					.fakeBox3 {
					border-top: 2px solid #999;
					border-right: 1px solid #ccc;
					border-bottom: 1px solid #ccc;
					border-left: 2px solid #999;
					padding: 2px;
					width: 800px;
					height: auto;
					min-width: 200px;
					min-height: 30px;
					word-wrap: break-word;
					font-size:
					0.9em;
					color: blue;
					}

					.fakeBox4 {
					border-top: 2px solid #999;
					border-right: 1px solid #ccc;
					border-bottom: 1px solid #ccc;
					border-left: 2px solid #999;
					padding: 2px;
					width: 300px;
					height: auto;
					min-width: 200px;
					min-height: 30px;
					word-wrap: break-word;
					font-size:
					0.9em;
					color: blue;
					}

					ul {
					list-style: disc;
					}

					ul,ol {
					padding: 0 0 0 40px
					}

					blockquote {
					padding: 0 20px
					}
					/* tables still need 'cellspacing="0"'
					in the markup */
					table {
					border-collapse: separate;
					border-spacing: 0;
					}

					caption,th,td {
					text-align: left;
					font-weight: normal;
					}

					blockquote:before,blockquote:after,q:before,q:after {
					content: "";
					}

					blockquote,q {
					quotes: "" "";
					}
					/* END Reset Reloaded */
					body {
					font-family: Arial, Helvetica, sans-serif;
					margin: 10px
					}

					h1,h2,h3 {
					background-color: #999;
					color: #000;
					font-weight: bold
					}

					h4,h5,h6 {
					font-weight: bold
					}

					h1 {
					font-size: 1.6em;
					padding: 8px;
					margin: 6px 0
					}

					h2 {
					font-size: 1.4em;
					padding: 6px;
					margin: 4px 0
					}

					h3 {
					font-size:
					1.2em;
					padding: 4px;
					margin: 2px 0
					}

					h4 {
					font-size: 1.0em;
					padding: 2px;
					margin: 2px 0
					}

					h5 {
					font-size: 1.0em;
					padding: 2px;
					margin: 2px 0
					}

					h6 {
					font-size: 1.0em;
					padding: 2px;
					margin: 2px 0
					}

					table {
					width: 100%;
					} /*
					was table-layout:fixed */
					td {
					padding: 8px;
					vertical-align: top
					}

					td.label {
					width: 300px;
					min-width: 300px;
					background-color: #e0e0ff
					}

					label {
					width: 300px;
					min-width: 300px;
					background-color: #e0e0ff
					}

					

					p {
					margin: 8px
					}

					em {
					font-style: italic;
					}

					input,textarea {
					word-wrap: break-word;
					color:
					#008;
					}

					#header {
					font-size: 0.9em;
					border: 1px solid #404040;
					border-spacing: 2px;
					}

					#header h2 {
					font-size: 0.8em;
					color: inherit;
					background-color: transparent
					}

					#header .side {
					background-color:
					#666;
					color: #fff;
					font-weight: bold;
					font-size: .8em;
					width: 25%;
					padding-left: 0;
					padding-right: 0;
					}

					#header .title {
					background-color: #000;
					color: #fff;
					font-weight: bold;
					width: 25%;
					text-align: center;
					vertical-align: middle
					}

					#header .center {
					text-align: center;
					vertical-align: middle;
					font-weight: bold
					}

					/*.contentwrapper {width:900px} disabled to fill whole page
					horizontally */
					.right {
					text-align: right
					}
				</style>

			</head>

			<body
				lang="en-US"
				text="#000000"
				bgcolor="#ffffff">
				<xsl:call-template name="header" />
			
				<!-- <xsl:call-template name="headerData" /> 
				<xsl:call-template name="formData" /> -->
				<xsl:apply-templates />
			</body>
		</html>
	</xsl:template>

	<!-- Header Template START -->
	<xsl:template name="header">
		<div class="contentwrapper">
			<table id="header">
				<tr>
					<td class="title">Form <xsl:value-of select ="$submissionType"/></td>
					<td
						rowspan="2"
						class="center">
						UNITED STATES
						<br />
						SECURITIES AND EXCHANGE COMMISSION
						<br />
						WASHINGTON, DC 20549
						<br />
						<br />
						FORM NPORT
						<br />
						Monthly Portfolio Investments Report
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!-- Header Template END -->

	<!-- 1-A: Filer Information Template START -->
	<xsl:template	name="headerData"	match="m1:edgarSubmission/m1:headerData">
		<div id="info">
			<div class="contentwrapper">
				<div class="content">
					<h1><xsl:value-of select ="$submissionType"/>: Filer Information</h1>

					<!-- Filer -->
					<table class="filerInformation">
						<tr>
							<td class="label">Filer CIK</td>
							<td>
								<div class="fakeBox2">
									<xsl:value-of
										select="string(m1:filerInfo/m1:filer/m1:issuerCredentials/m1:cik)" />
									<span>
										<xsl:text>&#160;</xsl:text>
									</span>
								</div>
							</td>
						</tr>
						<tr>
							<td class="label">Filer CCC</td>
							<td>
								<div class="fakeBox2">
								********
									<span>
										<xsl:text>&#160;</xsl:text>
									</span>
								</div>
							</td>
						</tr>
						<tr>
							<td class="label">Filer Investment Company Type</td>
							<td>
								<div class="fakeBox2">
									<xsl:value-of select="$icType" />
									<span>
										<xsl:text>&#160;</xsl:text>
									</span>
								</div>
							</td>
						</tr>

						<!-- Flags -->

						<tr>
							<td class="label">
								Is this a LIVE or TEST Filing?
							</td>
							<td>
								<span class="yesNo">
									<xsl:choose>
										<xsl:when test="count(m1:filerInfo/m1:liveTestFlag) &gt; 0">
											<xsl:choose>
												<xsl:when test="string(m1:filerInfo/m1:liveTestFlag) = 'LIVE'">
													<img
														src="Images/radio-checked.jpg"
														alt="live is checked" />
													LIVE
													<img
														src="Images/radio-unchecked.jpg"
														alt="test is not checked" />
													TEST
												</xsl:when>
											</xsl:choose>
											<xsl:choose>
												<xsl:when test="string(m1:filerInfo/m1:liveTestFlag) = 'TEST'">
													<img
														src="Images/radio-unchecked.jpg"
														alt="live is not checked" />
													LIVE
													<img
														src="Images/radio-checked.jpg"
														alt="test is checked" />
													TEST
												</xsl:when>
											</xsl:choose>
										</xsl:when>
										<xsl:otherwise>
											<img
												src="Images/radio-unchecked.jpg"
												alt="live is not checked" />
											LIVE
											<img
												src="Images/radio-unchecked.jpg"
												alt="test is not checked" />
											TEST
										</xsl:otherwise>
									</xsl:choose>
								</span>
							</td>
						</tr>
						
						<tr>
							<td class="label">
								Would you like a Return Copy?
							</td>
							<td>
								<xsl:choose>
									<xsl:when test="m1:filerInfo/m1:flags/m1:returnCopyFlag = 'true'">
										<img
											src="Images/box-checked.jpg"
											alt="return copy flag is checked" />
									</xsl:when>
									<xsl:otherwise>
										<img
											src="Images/box-unchecked.jpg"
											alt="return copy flag is not checked" />
									</xsl:otherwise>
								</xsl:choose>
							</td>
						</tr>
						
						<tr>
							<td class="label">Is this an electronic	copy of an official filing submitted in paper format?
							</td>
							<td>
								<xsl:choose>
									<xsl:when	test="m1:filerInfo/m1:flags/m1:confirmingCopyFlag = 'true'">
										<img
											src="Images/box-checked.jpg"
											alt="Confirm flag is checked" />
									</xsl:when>
									<xsl:otherwise>
										<img
											src="Images/box-unchecked.jpg"
											alt="Confirm flag is not checked" />
									</xsl:otherwise>
								</xsl:choose>
							</td>
						</tr>
						
						<xsl:if	test="m1:filerInfo/m1:flags/m1:confirmingCopyFlag = 'true'">
						<tr>
							<td class="label">File Number</td>
							<td>
								<div class="fakeBox2">
									<xsl:value-of select="m1:filerInfo/m1:filer/m1:fileNumber" />
									<span>
										<xsl:text>&#160;</xsl:text>
									</span>
								</div>
							</td>
						</tr>
						</xsl:if>

					</table>

					<!-- contact -->
					<h4>Submission Contact Information</h4>
					<table>
						
						<tr>
							<td class="label">Name</td>
							<td>
								<div class="fakeBox">
									<xsl:value-of select="string(m1:filerInfo/m1:contact/m1:name)" />
									<span>
										<xsl:text>&#160;</xsl:text>
									</span>
								</div>
							</td>
						</tr>
						<tr>
							<td class="label">Phone</td>
							<td>
								<div class="fakeBox2">
									<xsl:value-of
										select="string(m1:filerInfo/m1:contact/m1:phone)" />
									<span>
										<xsl:text>&#160;</xsl:text>
									</span>
								</div>
							</td>
						</tr>
						<tr>
							<td class="label">E-Mail Address</td>
							<td>
								<div class="fakeBox3">
									<xsl:value-of
										select="string(m1:filerInfo/m1:contact/m1:email)" />
									<span>
										<xsl:text>&#160;</xsl:text>
									</span>
								</div>
							</td>
						</tr>
					</table>
					<!-- Notifications -->
					<h4>Notification Information</h4>
					<table>
					</table>
					<table>
					<tr>
					<td class="label">Notify via Filing Website only?</td>
							<td>
								<xsl:choose>
									<xsl:when	test="m1:filerInfo/m1:flags/m1:overrideInternetFlag = 'true'">
										<img
											src="Images/box-checked.jpg"
											alt="Override internet flag is checked" />
									</xsl:when>
									<xsl:otherwise>
										<img
											src="Images/box-unchecked.jpg"
											alt="Override internet flag is not checked" />
									</xsl:otherwise>
								</xsl:choose>
							</td>
						</tr>
					
					<xsl:for-each	select="m1:filerInfo/m1:notifications/m1:notificationEmailAddress">
					
							<tr>
								<td class="label">Notification E-mail Address</td>
								<td>
									<div class="fakeBox3">
										<xsl:value-of select="." />
										<span>
											<xsl:text>&#160;</xsl:text>
										</span>
									</div>
								</td>
							</tr>						
					</xsl:for-each>
					
							<tr>
								<td class="label">Series ID</td>
								<td>
									<div class="fakeBox2">
										<xsl:value-of select="m1:filerInfo/m1:seriesClassInfo/m1:seriesId" />
										<span>
											<xsl:text>&#160;</xsl:text>
										</span>
									</div>
								</td>
							</tr>	
					</table>
					
					<xsl:for-each	select="m1:filerInfo/m1:seriesClassInfo/m1:classId">
					<table>
							<tr>
								<td class="label">Class (Contract) ID</td>
								<td>
									<div class="fakeBox2">
										<xsl:value-of select="." />
										<span>
											<xsl:text>&#160;</xsl:text>
										</span>
									</div>
								</td>
							</tr>	
					</table>							
					</xsl:for-each>
					
				</div>
			</div>
		</div>

	</xsl:template>
	<!-- 1-A: Filer Template Information END -->
	<!-- Form Data Template START -->
	<xsl:template	name="formData" match="m1:edgarSubmission/m1:formData">
		<div class="content">
			<div class="label">
			
				<h1><xsl:value-of select ="$submissionType"/>: Part A: General Information</h1>
				<div class="form1">
					<xsl:call-template name="PartA" />
				</div>

				<h1><xsl:value-of select ="$submissionType"/>: Part B: Information About the Fund </h1>
				<div class="form1">
					<xsl:call-template name="PartB" />
				</div>
			
				<div class="form1">
					<xsl:call-template name="PartC"/>
				</div>
				
				<h1><xsl:value-of select ="$submissionType"/>: Part E: Explanatory Notes (if any)</h1>
				 <div class="form1"> 
				 <xsl:call-template name="PartE" /> 
				 </div>

			   <h1><xsl:value-of select ="$submissionType"/>: Signatures</h1> 
				<div class="form1">
				 <xsl:call-template name="Signatures" /> 
				</div>  
				<br/>

			</div>
		</div> 
	</xsl:template>
	<!-- Form Data Template END -->

	<!-- Documents Template START -->

	<xsl:template name="documentsData" match="m1:edgarSubmission/m1:documents">
 		<div style="display:none;">
			<div class="form1"><xsl:call-template name="InvisibleDocumentsInfo"/></div>
		</div> 
	</xsl:template>		
		 
		<xsl:template name="yesNoRadio">
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
							</xsl:otherwise>
						</xsl:choose>
					</span>

			</xsl:template>

		<xsl:template name="condYesNoRadio">
			<xsl:param name="yesElement" />
			<xsl:param name="noElement" />
		<span class="yesNo">
						<xsl:choose>
							<xsl:when test="count($yesElement) &gt; 0 or count($noElement) &gt; 0">
								<xsl:choose>
									<xsl:when
										test="string($yesElement) = 'Y'">
										<img
											src="Images/radio-checked.jpg"
											alt="Radio button checked" />
										Yes
										<img
											src="Images/radio-unchecked.jpg"
											alt="Radio button not checked" />
										No
									</xsl:when>
								</xsl:choose>
								<xsl:choose>
									<xsl:when
										test="string($noElement) = 'N'">
										<img
											src="Images/radio-unchecked.jpg"
											alt="Radio button not checked" />
										Yes
										<img
											src="Images/radio-checked.jpg"
											alt="Radio button checked" />
										No
									</xsl:when>
								</xsl:choose>
							</xsl:when>
							<xsl:otherwise>
								<img
									src="Images/radio-unchecked.jpg"
									alt="Radio button not checked" />
								Yes
								<img
									src="Images/radio-unchecked.jpg"
									alt="Radio button not checked" />
								No
							</xsl:otherwise>
						</xsl:choose>
					</span>

			</xsl:template>
			
			

	<!-- 1-A Documents Template END -->

	<!-- items START -->
	<xsl:include href="N-PORT_generalInfo.xsl" />
	<xsl:include href="N-PORT_fundInfo.xsl" />
	<xsl:include href="N-PORT_schPortfolio.xsl" />
	<xsl:include href="NPORT_signature.xsl" />
	<xsl:include href="NPORT_explanatoryNotes.xsl" />
	<xsl:include href="NPORT_Documents.XSL" />
	<!-- items END -->
	<xsl:include href="iso_State_Codes.xsl" />
	<xsl:include href="Abbr_Codes.xsl" />

</xsl:stylesheet>
	