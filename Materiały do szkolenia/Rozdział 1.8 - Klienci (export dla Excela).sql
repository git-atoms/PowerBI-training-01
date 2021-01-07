select 

pp.FirstName +' '+ pp.LastName as 'Imiê i nazwisko'
,pa.AddressLine1 as 'Ulica'
,pa.City as 'Miasto'
,pa.PostalCode as 'Kod pocztowy'
,ppp.PhoneNumber


from
[AdventureWorks2014].Person.BusinessEntityAddress as bea

join
[AdventureWorks2014].Person.Person as pp
on
pp.BusinessEntityID=bea.BusinessEntityID


join
[AdventureWorks2014].Person."Address" as pa
on
pa.AddressID=bea.AddressID


join
[AdventureWorks2014].Person.PersonPhone as ppp
on
ppp.BusinessEntityID=bea.BusinessEntityID