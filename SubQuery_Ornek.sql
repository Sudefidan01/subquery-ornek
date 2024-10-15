--Çalışanlarımı rapor vereceği kişiler ile birlikte listeleyelim
--(Employess)
select
	(c.FirstName + ' '+c.LastName) as FullName,
	(
		select
			(r.FirstName + ' '+r.LastName)
		from Employees as r
		where r.EmployeeID=c.ReportsTo
	) as ReportsName

	
from Employees as c
where 
	c.ReportsTo is not null

--Ürünlerimi Categori adı ve Tedarikçi firma isimleri ile beraber listeleyelim
--(Categories , Suppliers)



--Siparişleri müşterfi firma adı ile beraber toplam sipariş tutarını hesaplayıp listeleyelim
--(Customers , Order Details , Orders)