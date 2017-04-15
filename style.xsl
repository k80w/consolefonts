<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>
			<head>
				<style>
					body {
						font-family: sans-serif;
					}
					table {
						width: 100%;
					}
					table, th, td {
						border-collapse: collapse;
					}
					th, td {
						padding: 10px;
					}
					tr:nth-child(even) {
						background-color: #f2f2f2
					}
				</style>
			</head>
			<body>
				<h1>dnaf's console font archive</h1>
				<p>Here's a bunch of console fonts I've collected over time. All of them are compatible with the Linux console and Dwarf Fortress.</p>
				<ul>
					<li>
						<h3>Name</h3>
						<p>The name of the font file. A lot of the names are just the author's name.</p>
					</li>
					<li>
						<h3>Size</h3>
						<p>The width and height of each character.</p>
					</li>
					<li>
						<h3>Download</h3>
						<p>Links to download the font in various formats. <b>Please note that all BMP files are limited to 256 characters to make them compatible with Dwarf Fortress.</b></p>
					</li>
				</ul>

				<hr/>

				<table>
					<tr>
						<th>Name</th>
						<th colspan="3">Size</th>
						<th colspan="3">Download</th>
					</tr>
					<xsl:for-each select="fonts/font">
						<tr>
							<td><xsl:value-of select="name"/></td>
							<td style="padding-right: 0; text-align: right;"><xsl:value-of select="charwidth"/></td>
							<td style="padding: 0;       text-align: center;">x</td>
							<td style="padding-left: 0;"><xsl:value-of select="charheight"/></td>

							<td style="text-align: center;"><xsl:if test="files/psf='True'">
								<a href="{name}-{charwidth}x{charheight}.psf">PSF</a>
							</xsl:if></td>
							<td style="text-align: center;"><xsl:if test="files/psfu='True'">
								<a href="{name}-{charwidth}x{charheight}.psfu">PSFU</a>
							</xsl:if></td>
							<td style="text-align: center;"><xsl:if test="files/bmp256='True'">
								<a href="{name}-{charwidth}x{charheight}.256.bmp">BMP</a>
							</xsl:if></td>
						</tr>
					</xsl:for-each>
				</table>

				<hr/>
				<a href="https://github.com/dnaf/consolefonts">github</a>
			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>