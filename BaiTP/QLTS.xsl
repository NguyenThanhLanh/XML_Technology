<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html>
            <body>
                <h1 style="text-align: center; color: red;">QUẢN LÍ CHUYỂN PHÁT NHANH</h1>
                <h3 style="text-align: center; color: red;">Cao Nhật Trường</h3>
                <xsl:for-each-group select="/QLTS/Sach" group-by="MaLoai">
                    <h3>Mã loại: <xsl:value-of select="./MaLoai"/></h3>
                    <table border="1">
                        <tr>
                            <td>Mã Sách</td>
                            <td>Tên sách</td>
                            <td>Giá thuê</td>
                        </tr>
                        <xsl:for-each select="current-group()">
                            <tr>
                                <td><xsl:value-of select="./MaSach"/></td>
                                <td><xsl:value-of select="./TenSach"/></td>
                                <td><xsl:value-of select="./GiaThue"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </xsl:for-each-group>
                
            </body>
        </html>
        
    </xsl:template>
</xsl:stylesheet>