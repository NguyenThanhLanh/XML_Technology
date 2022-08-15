<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/QLLOP">
        <html>
            <body>
                <table border="1">
                    <tr>
                        <td>MaLop</td>
                        <td>TenLop</td>
                    </tr>
                    <xsl:for-each select="/QLLOP/Lop">
                        <tr>
                            <td><xsl:value-of select="MaLop"/></td>
                            <td><xsl:value-of select="TenLop"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>