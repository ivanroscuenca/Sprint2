USE PizzeriaMammaMia;

-- Llista quants productes de categoria 'Begudes' s'han venut en una determinada localitat.

SELECT ClientCity_id , cc.ClientCity_name , d.Drinks_name FROM Drinks d 
JOIN Orders o
ON o.Order_id = d.Orders_Order_id
JOIN Clients c
ON c.Client_id = o.Client_Client_id
JOIN ClientCity cc
ON cc.ClientCity_id = c.ClientCity_ClientCity_id
WHERE cc.ClientCity_name='Los Angeles';

-- Llista quantes comandes ha efectuat un determinat empleat/da.

USE PizzeriaMammaMia;

SELECT o.Order_id ,s.Shop_city, e.Employee_name
FROM Orders o 
JOIN Shop s 
ON o.Shop_Shop_id = s.Shop_id
JOIN Employee e 
ON e.Shop_Shop_id=s.Shop_id
WHERE e.Employee_id=1;
