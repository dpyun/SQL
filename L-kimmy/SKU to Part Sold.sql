-- This process is to show how much components are sold based on SKU sales data. For example, APL1770 is consisted of 5 CPM, and we sold 3 APL1770, we will see 15 CPM have been sold.

UPDATE [Inventory].dbo.COGS   -- Remove _FBM, _NEW, - NEW strings. Those are same SKUs.
Set SKU = REPLACE(SKU, '_FBM', '');

UPDATE [Inventory].dbo.COGS
Set SKU = REPLACE(SKU, '_NEW', '');

UPDATE [Inventory].dbo.COGS
Set SKU = REPLACE(SKU, ' - NEW', '');

DROP Table IF EXISTS partrial; -- Pivot sum of SKU solds
SELECT * INTO partrial FROM (SELECT SKU, SUM(Qty) AS "Quantity" FROM [Inventory].dbo.COGS group by SKU) As x;


DROP Table IF EXISTS matchinglearning; -- Joining SKU components and SKU sales.
SELECT * INTO matchinglearning FROM ( select [Inventory].dbo.Component.SKU, [Inventory].dbo.Component.Part_NO, [Inventory].dbo.Component.Qty , [Inventory].dbo.partrial.Quantity from [Inventory].dbo.Component
INNER JOIN [Inventory].dbo.partrial ON Component.SKU = partrial.SKU) AS y;

DROP TABLE IF EXISTS Finset; -- APL1770 | CPM | 5*3 = 15
SELECT * INTO Finset FROM (select matchinglearning.SKU, matchinglearning.Part_No, 
matchinglearning.Quantity * matchinglearning.Qty AS Available_QTY from matchinglearning) As z;

DROP TABLE IF EXISTS partrial2; -- Pivot sum of Parts sold
SELECT * INTO partrial2 FROM (SELECT Part_No, SUM(Available_QTY) AS "Quantity" FROM [Inventory].dbo.Finset group by Part_No) As x;
SELECT * FROM partrial2 ORDER BY Quantity DESC;