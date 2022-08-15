<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html> <head> <title>THÔNG TIN LỚP HỌC</title></head>
            <body>
                <h2>Danh sách lớp học</h2>
                <table border="1">
                    <tr>
                        <th>Mã lớp</th>
                        <th>Tên lớp</th>
                    </tr>
                    <xsl:for-each select="QuanLyLop/LopHoc">
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