for $x in doc("QLMS_1.xml")/QLMS/Sachs/Sach
where 
    $x/MaSach = //ChiTietMuon[year-from-date(NgayMuon)=2019]/MaThe[contains(normalize-space(),//TheDocGia[TenDG[contains(normalize-space(),'Mít')]]/MaThe)]/following-sibling::MaSach
return <kq>{data($x/child::*)}</kq>


