<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Quản lí bán cá</h2>
                <h3>Quản lí mặt hàng</h3>
                <table border="1">
                    <tr  bgcolor="#9acd32">
                        <th>STT</th>
                        <th >Mã mặt hàng</th>
                        <th>Nhà loại</th>
                        <th>ảnh sản phẩm</th>
                        <th>Tên sản phẩm</th> 
                        <th>Giá </th>
                        <th>Mô tả</th>
                        <th>Mã nhà cung cấp</th>       
                    </tr>
                    <xsl:for-each select="QLBANDT/SANPHAM">
                        <xsl:sort select="TENDT"/>
                        <tr>
                            <td> <xsl:value-of select="position()"/></td>
                            <td><xsl:value-of select="MaMH"/></td>
                            <td><xsl:value-of select="MaLoai"/></td>
                            <td><xsl:value-of select="AnhCa"/></td>    
                            <td><xsl:value-of select="TenCa"/></td>
                            <td><xsl:value-of select="GiaCa"/></td>
                            <td><xsl:value-of select="MoTa"/></td>
                            <td><xsl:value-of select="NhaCC"/></td>
                            
                        </tr>
                    </xsl:for-each>
                </table>
                <h3>Quản lí khách hàng </h3>
                <table border="1">
                    <tr  bgcolor="#9acd32">
                        <th>STT</th>
                        <th >Mã khách hàng</th>
                        <th>Tên khách hàng</th>
                        <th>Địa Chỉ</th>
                        <th>SĐT</th> 
                    </tr>
                    <xsl:for-each select="QLBANDT/KHACHANG">
                        <tr>
                            <td><xsl:value-of select="position()"/></td>
                            <td><xsl:value-of select="MaKH"/></td>
                            <td><xsl:value-of select="TenKH"/></td>
                            <td><xsl:value-of select="DiaChiKH"/></td>
                            <td><xsl:value-of select="SDTKH"/></td>              
                        </tr>
                    </xsl:for-each>
                </table>           
                <h3>Quản lí nhà cung cấp</h3>
                <table border="1">
                    <tr  bgcolor="#9acd32">
                        <th>STT</th>
                        <th>Mã nhà cung cấp</th>
                        <th>Tên nhà cung cấp</th>
                        <th>Địa Chỉ</th>
                        <th>SĐT</th>
                    </tr>
                    <xsl:for-each select="QLBANDT/NCC">
                        <tr>
                            <td> <xsl:value-of select="position()"/></td>
                            <td><xsl:value-of select="MaNCC"/></td>
                            <td><xsl:value-of select="TenNCC"/></td>
                            <td><xsl:value-of select="DiaChi"/></td>
                            <td><xsl:value-of select="SDT"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                <h3>Quản lí loại Mặt Hàng</h3>
                <table border="1">
                    <tr  bgcolor="#9acd32">
                        <th>STT</th>
                        <th>Mã loại Mặt Hàng </th>
                        <th>Tên loại Mặt Hàng</th>
                    </tr>
                    <xsl:for-each select="QLBANDT/LOAIDT">
                        <tr>
                            <td> <xsl:value-of select="position()"/></td>
                            <td><xsl:value-of select="MaLoai"/></td>
                            <td><xsl:value-of select="TenLoai"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                <h3>Hóa đơn</h3>
                <table border="1">
                    <tr  bgcolor="#9acd32">
                        <th>STT</th>
                        <th>Mã đơn hàng</th>
                        <th>Mã khách hàng</th>
                        <th>Ngày mua</th>
                        <th>Tình trạng</th>
                    </tr>
                    <xsl:for-each select="QLBANDT/DATHANG">
                        <tr>
                            <td> <xsl:value-of select="position()"/></td>
                            <td><xsl:value-of select="MaHD"/></td>
                            <td><xsl:value-of select="MaKH"/></td>
                            <td><xsl:value-of select="NgayMua"/></td>
                            <td><xsl:value-of select="TinhTrang"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                <h3>Quản lí chi tiết hóa đơn</h3>
                <table border="1">
                    <tr  bgcolor="#9acd32">
                        <th>STT</th>
                        <th>Mã Hóa Đơn</th>
                        <th>Mã Mặt Hàng</th>
                        <th>Số lượng</th>
                    </tr>
                    <xsl:for-each select="QLBANDT/CTDH">
                        <tr>
                            <td> <xsl:value-of select="position()"/></td>
                            <td><xsl:value-of select="MaHD"/></td>
                            <td><xsl:value-of select="MaCa"/></td>
                            <td><xsl:value-of select="SoLuong"/></td>
                            
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>