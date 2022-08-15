<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html>
            <body>
                <table border="1">
                    <tr>
                        <td>MaSv</td>
                        <td>MaMh</td>
                        <td>DiemThi</td>
                    </tr>
                    <xsl:for-each select="/QLKQ/KetQua">
                        <xsl:if test="DiemThi &gt;'8', DiemThi &lt; '9.5'">
                            <tr>
                                <td><xsl:value-of select="./MaSV"/></td>
                                <td><xsl:value-of select="./MaMH"/></td>
                                <td><xsl:value-of select="./DiemThi"/></td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>