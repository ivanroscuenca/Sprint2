USE Optics;

-- Llista el total de factures d'un client/a en un període determinat.


SELECT * FROM Sales
WHERE Clients_Clients_id = 1
AND
Sales_date BETWEEN '2022-01-01' AND '2023-03-01';


-- Llista els diferents models d'ulleres que ha venut un empleat/da durant un any.

SELECT e.Employee_id,e.Employee_name,e.Employee_fname,
CONCAT( g.Glasses_frame_colour,' ' ,g.Glasses_col_lenses) AS 'model',
s.Sales_date
FROM Sales s
JOIN Employee e
ON s.Employee_Employee_id = e.Employee_id
JOIN Glasses g
ON g.Glasses_id_reference = s.Glasses_Glasses_id_reference
WHERE e.Employee_id= 2
AND
Sales_date BETWEEN '2022-01-01' AND '2022-12-31';

-- Llista els diferents proveïdors que han subministrat ulleres venudes amb èxit per l'òptica.

SELECT DISTINCT Supplier_name FROM Supplier su
JOIN Sales s
ON s.Supplier_Supplier_id = su.Supplier_id;

