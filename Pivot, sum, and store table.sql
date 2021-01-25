
UPDATE [Practice Data].dbo.itemlist
Set Part_No = REPLACE(Part_No, '_PP', '');

UPDATE [Practice Data].dbo.itemlist
Set Part_No = REPLACE(Part_No, '_P', '');

UPDATE [Practice Data].dbo.itemlist
Set Part_No = REPLACE(Part_No, 'TEM', '');

UPDATE [Practice Data].dbo.itemlist
Set Part_No = REPLACE(Part_No, 'REPRO', '');

UPDATE [Practice Data].dbo.itemlist
Set Part_No = REPLACE(Part_No, 'RES', '') WHERE NOT Part_No LIKE '%URA%' and Not Part_No Like '%UAA%';

UPDATE [Practice Data].dbo.PartQty
Set Part = REPLACE(Part, '_PP', '');

UPDATE [Practice Data].dbo.PartQty
Set Part = REPLACE(Part, '_P', '');

UPDATE [Practice Data].dbo.PartQty
Set Part = REPLACE(Part, 'TEM', '');

UPDATE [Practice Data].dbo.PartQty
Set Part = REPLACE(Part, 'REPRO', '');

UPDATE [Practice Data].dbo.PartQty
Set Part = REPLACE(Part, 'RES', '') WHERE NOT Part LIKE '%URA%' and Not Part Like '%UAA%';


DROP Table IF EXISTS partrial;
SELECT * INTO partrial FROM (SELECT Part, SUM(Quantity_On_Hand) AS "Quantity" FROM [Practice Data].dbo.PartQty group by Part) As x;
DROP Table IF EXISTS matchinglearning;
SELECT * INTO matchinglearning FROM ( select itemlist.SKU, itemlist.Part_No, itemlist.Qty , [Practice Data].dbo.partrial.Quantity from [Practice Data].dbo.itemlist
INNER JOIN [Practice Data].dbo.partrial ON itemlist.Part_No = partrial.Part) AS y;
DROP TABLE IF EXISTS Finset;
SELECT * INTO Finset FROM (select matchinglearning.SKU, matchinglearning.Part_No, matchinglearning.Qty, matchinglearning.Quantity
, matchinglearning.Quantity / matchinglearning.Qty AS Available_QTY from matchinglearning) As z;

SELECT SKU, MIN(Available_QTY) AS SKU_available from finset GROUP BY SKU ORDER by SKU_available DESC;