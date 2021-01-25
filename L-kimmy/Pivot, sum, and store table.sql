                                                        -- This process is to clean component part strings. There are different kind of component part names even if same parts.
UPDATE [Practice Data].dbo.itemlist                     -- ex) APL1770_PP is same as APL1770
Set Part_No = REPLACE(Part_No, '_PP', '');

UPDATE [Practice Data].dbo.itemlist                     -- ex) OT100010F_P is same as OT100010F
Set Part_No = REPLACE(Part_No, '_P', '');

UPDATE [Practice Data].dbo.itemlist                     -- ex) TEMPPH103 is same as PPH103
Set Part_No = REPLACE(Part_No, 'TEM', '');

UPDATE [Practice Data].dbo.itemlist                     -- ex) REPROAGG1101 is same as AGG1101
Set Part_No = REPLACE(Part_No, 'REPRO', '');

UPDATE [Practice Data].dbo.itemlist                     -- ex) RESAPL1101 is same as APL1101. However we have to keep RESURAJSAG103 and RESUAAJSAG103. We only need to remove RES SKUs which are not contain URA or UAA
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

-- we want to show SKU availablity. Assume SKU APL1770 has component part of 5 CPM and we currently have 20 CPM parts, and extract 4 APL1770 are avialable to sell.

DROP Table IF EXISTS partrial;                                                                                         
SELECT * INTO partrial FROM (SELECT Part, SUM(Quantity_On_Hand) AS "Quantity" FROM [Practice Data].dbo.PartQty group by Part) As x; --Pivot sum of component part quantities after cleaning unnecessary strings.
                                                                                                                                    -- ex) if there are 100 qty of CPM and 202 RESCPM, it would be figured as 302 of CPM

DROP Table IF EXISTS matchinglearning;
SELECT * INTO matchinglearning FROM ( select itemlist.SKU, itemlist.Part_No, itemlist.Qty , [Practice Data].dbo.partrial.Quantity from [Practice Data].dbo.itemlist  -- Joining Match SKU component lists and Part qtys
INNER JOIN [Practice Data].dbo.partrial ON itemlist.Part_No = partrial.Part) AS y;                                                                                   -- APL 1770 | CPM | 5 | 20



DROP TABLE IF EXISTS Finset;                                                                                                                                 -- APL1770 | CPM | 5 | 20 | 4
SELECT * INTO Finset FROM (select matchinglearning.SKU, matchinglearning.Part_No, matchinglearning.Qty, matchinglearning.Quantity
, matchinglearning.Quantity / matchinglearning.Qty AS Available_QTY from matchinglearning) As z;

SELECT SKU, MIN(Available_QTY) AS SKU_available from finset GROUP BY SKU ORDER by SKU_available DESC;                                  -- we need to show minimum value when a sku has multi component parts. 
                                                                                                                                       -- ex) if sku apl2126 is consisted in two cpm and one pph102, and we have 20 cpm, and 2 pph102, only two APL2126 is available
