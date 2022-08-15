<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html>
            <head><title>QLMS</title></head>
            <body>
                <h1 style="text-align: center; color: red;">Thông tin chi tiết phiếu mượn sách</h1>
                <h3 style="text-align: center; color: green;">Nguyễn Thành Lãnh</h3>
                <hr/>
                <div style="margin-left: 650px;">
                    <table border="1">
                        <thead>
                            <tr bgcolor="pink">
                                <th>Thẻ độc giả</th>
                                <th>Mã sách</th>
                                <th>Tên sách</th>
                                <th>Ngày mượn</th>
                                <th>Ngày trả</th>
                                <th>Tại chỗ</th>
                                <th>Tiền phạt</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="QLMS/ChiTietMuon">
                                <tr>
                                    <xsl:variable name="sach1" select="MaSach"/>
                                    <xsl:variable name="ngaymuon" select="day-from-date(NgayMuon)"/>
                                    <xsl:variable name="ngaytra" select="day-from-date(NgayTra)"/>
                                    
                                     <td><xsl:value-of select="MaThe"/></td>
                                     <td><xsl:value-of select="MaSach"/></td>
                                     <td><xsl:value-of select="../Sach[MaSach=$sach1]/TenSach"/></td>
                                     <td><xsl:value-of select="NgayMuon"/></td>
                                     <td><xsl:value-of select="NgayTra"/></td>
                                     <td><xsl:value-of select="TaiCho"/></td>
                                     <td>1000</td>
                                    
                                </tr>
                            </xsl:for-each>
                            
                        </tbody>
                    </table>
                </div>
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>