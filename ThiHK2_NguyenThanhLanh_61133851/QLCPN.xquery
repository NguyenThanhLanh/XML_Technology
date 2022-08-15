<cau>a</cau>
  for $kh in doc("QLCPN.xml")//KhachHang
            where $kh/TenKH[starts-with(text(), 'A')] | $kh/TenKH[starts-with(text(), 'L')]
            return $kh
<cau>b</caub>
            let $SG := count(//PhieuVanChuyen[MaNoiDen = 'SG' and year-from-date(Ngay) = 2019])
            let $KH := count(//PhieuVanChuyen[MaNoiDen = 'KH' and year-from-date(Ngay) = 2019])
            let $HN := count(//PhieuVanChuyen[MaNoiDen = 'HN' and year-from-date(Ngay) = 2019])
            let $BD := count(//PhieuVanChuyen[MaNoiDen = 'BD' and year-from-date(Ngay) = 2019])
            let $TB := count(//PhieuVanChuyen[MaNoiDen = 'TB' and year-from-date(Ngay) = 2019])
                return 
                    <soluong>
                    <SG> {$SG} </SG>
                    <KH>{$KH}</KH>
                    <HN>{$HN}</HN>
                    <BD>{$BD}</BD>
                    <TB>{$TB}</TB>
                    </soluong>
                    
