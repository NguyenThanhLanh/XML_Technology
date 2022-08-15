<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html>
            <head></head>
            <body>
                <table border="1">
                    <tr>
                        <td>STT</td>
                        <td>MaSv</td>
                        <td>TenSv</td>
                        <td>GioiTinh</td>
                        <td>NgaySinh</td>
                        <td>MaLop</td>
                    </tr>
                    <xsl:for-each select="/QLSV/SinhVien">
                        <tr>
                            <td><xsl:value-of select="position()"/></td>
                            <td>
                                <xsl:value-of select="MaSV"/>
                            </td>
                            <td><xsl:value-of select="TenSV"/></td>
                            <td><xsl:value-of select="GioiTinh"/></td>
                            <td><xsl:value-of select="NgaySinh"/></td>
                            <td><xsl:value-of select="MaLop"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>