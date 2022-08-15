<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html>
            <body>
                <table border="1" bordercolor="black">
                    <tr>
                        <td>MaMh</td>
                        <td>TenMH</td>
                        <td>SoGio</td>
                    </tr>
                    <xsl:for-each select="/QLMH/MonHoc">
                        <tr>
                            <td><xsl:value-of select="MaMH"/></td>
                            <td><xsl:value-of select="TenMH"/></td>
                            <td><xsl:value-of select="SoGio"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>