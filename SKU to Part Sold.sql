UPDATE [Inventory].dbo.COGS
Set SKU = REPLACE(SKU, '_FBM', '');

UPDATE [Inventory].dbo.COGS
Set SKU = REPLACE(SKU, '_NEW', '');

UPDATE [Inventory].dbo.COGS
Set SKU = REPLACE(SKU, ' - NEW', '');

DROP Table IF EXISTS partrial;
SELECT * INTO partrial FROM (SELECT SKU, SUM(Qty) AS "Quantity" FROM [Inventory].dbo.COGS group by SKU) As x;


DROP Table IF EXISTS matchinglearning;
SELECT * INTO matchinglearning FROM ( select [Inventory].dbo.Component.SKU, [Inventory].dbo.Component.Part_NO, [Inventory].dbo.Component.Qty , [Inventory].dbo.partrial.Quantity from [Inventory].dbo.Component
INNER JOIN [Inventory].dbo.partrial ON Component.SKU = partrial.SKU) AS y;

DROP TABLE IF EXISTS Finset;
SELECT * INTO Finset FROM (select matchinglearning.SKU, matchinglearning.Part_No, 
matchinglearning.Quantity * matchinglearning.Qty AS Available_QTY from matchinglearning) As z;

DROP TABLE IF EXISTS partrial2;
SELECT * INTO partrial2 FROM (SELECT Part_No, SUM(Available_QTY) AS "Quantity" FROM [Inventory].dbo.Finset group by Part_No) As x;
SELECT * FROM partrial2 ORDER BY Quantity DESC;