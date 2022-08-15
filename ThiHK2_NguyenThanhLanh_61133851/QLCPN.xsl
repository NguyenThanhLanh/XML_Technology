<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html>
            <body>
                <h1 style="text-align: center; color: red;">QUẢN LÍ CHUYỂN PHÁT NHANH</h1>
                <h3 style="text-align: center; color: red;">Nguyễn Thành Lãnh</h3>
                <xsl:for-each-group select="/QLCPN/PhieuVanChuyen" group-by="MaNoiDen">
                    <h3>Mã nơi đến: <xsl:value-of select="./MaNoiDen"/></h3>
                    <table border="1">
                        <tr>
                            <td>Mã Phiếu</td>
                            <td>Ngày</td>
                            <td>Tên hàng</td>
                            <td>Khối lượng</td>
                            <td>Người nhận</td>
                            <td>Điện thoại NN</td>
                            <td>MaKH</td>
                        </tr>
                        <xsl:for-each select="current-group()">
                            <tr>
                                <td><xsl:value-of select="./MaPhieu"/></td>
                                <td><xsl:value-of select="./Ngay"/></td>
                                <td><xsl:value-of select="./TenHang"/></td>
                                <td><xsl:value-of select="./KhoiLuong"/></td>
                                <td><xsl:value-of select="./NguoiNhan"/></td>
                                <td><xsl:value-of select="./DienThoaiNN"/></td>
                                <td><xsl:value-of select="./MaKH"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </xsl:for-each-group>
                
            </body>
        </html>
        
    </xsl:template>
</xsl:stylesheet>