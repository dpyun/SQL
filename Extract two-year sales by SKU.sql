DECLARE @FSKU as nvarchar(50);
Set @FSKU = 'APL1770';

DROP table IF exists partrial;
CREATE Table partrial
(SKU nvarchar(50), Units_Ordered int, Time nvarchar(50));

INSERT INTO partrial (SKU, Units_Ordered, Time)
SELECT SKU, SUM(Units_Ordered) , '01/2019' from Echovin.dbo.[201901] WHERE SKU = @FSKU GROUP by SKU;

INSERT INTO partrial (SKU, Units_Ordered, Time)
SELECT SKU, SUM(Units_Ordered) , '02/2019' from Echovin.dbo.[201902] WHERE SKU = @FSKU GROUP by SKU;

INSERT INTO partrial (SKU, Units_Ordered, Time)
SELECT SKU, SUM(Units_Ordered), '03/2019' from Echovin.dbo.[201903] WHERE SKU = @FSKU GROUP by SKU;

INSERT INTO partrial (SKU, Units_Ordered, Time)
SELECT SKU, SUM(Units_Ordered), '04/2019' from Echovin.dbo.[201904] WHERE SKU = @FSKU GROUP by SKU;

INSERT INTO partrial (SKU, Units_Ordered, Time)
SELECT SKU, SUM(Units_Ordered), '05/2019' from Echovin.dbo.[201905] WHERE SKU = @FSKU GROUP by SKU;

INSERT INTO partrial (SKU, Units_Ordered, Time)
SELECT SKU, SUM(Units_Ordered), '06/2019' from Echovin.dbo.[201906] WHERE SKU = @FSKU GROUP by SKU;

INSERT INTO partrial (SKU, Units_Ordered, Time)
SELECT SKU, SUM(Units_Ordered), '07/2019' from Echovin.dbo.[201907] WHERE SKU = @FSKU GROUP by SKU;

INSERT INTO partrial (SKU, Units_Ordered, Time)
SELECT SKU, SUM(Units_Ordered), '08/2019' from Echovin.dbo.[201908] WHERE SKU = @FSKU GROUP by SKU;

INSERT INTO partrial (SKU, Units_Ordered, Time)
SELECT SKU, SUM(Units_Ordered), '09/2019' from Echovin.dbo.[201909] WHERE SKU = @FSKU GROUP by SKU;

INSERT INTO partrial (SKU, Units_Ordered, Time)
SELECT SKU, SUM(Units_Ordered), '10/2019' from Echovin.dbo.[201910] WHERE SKU = @FSKU GROUP by SKU;

INSERT INTO partrial (SKU, Units_Ordered, Time)
SELECT SKU, SUM(Units_Ordered), '11/2019' from Echovin.dbo.[201911] WHERE SKU = @FSKU GROUP by SKU;

INSERT INTO partrial (SKU, Units_Ordered, Time)
SELECT SKU, SUM(Units_Ordered), '12/2019' from Echovin.dbo.[201912] WHERE SKU = @FSKU GROUP by SKU;

INSERT INTO partrial (SKU, Units_Ordered, Time)
SELECT SKU, SUM(Units_Ordered) , '01/2020' from Echovin.dbo.[202001] WHERE SKU = @FSKU GROUP by SKU;

INSERT INTO partrial (SKU, Units_Ordered, Time)
SELECT SKU, SUM(Units_Ordered) , '02/2020' from Echovin.dbo.[202002] WHERE SKU = @FSKU GROUP by SKU;

INSERT INTO partrial (SKU, Units_Ordered, Time)
SELECT SKU, SUM(Units_Ordered), '03/2020' from Echovin.dbo.[202003] WHERE SKU = @FSKU GROUP by SKU;

INSERT INTO partrial (SKU, Units_Ordered, Time)
SELECT SKU, SUM(Units_Ordered), '04/2020' from Echovin.dbo.[202004] WHERE SKU = @FSKU GROUP by SKU;

INSERT INTO partrial (SKU, Units_Ordered, Time)
SELECT SKU, SUM(Units_Ordered), '05/2020' from Echovin.dbo.[202005] WHERE SKU = @FSKU GROUP by SKU;

INSERT INTO partrial (SKU, Units_Ordered, Time)
SELECT SKU, SUM(Units_Ordered), '06/2020' from Echovin.dbo.[202006] WHERE SKU = @FSKU GROUP by SKU;

INSERT INTO partrial (SKU, Units_Ordered, Time)
SELECT SKU, SUM(Units_Ordered), '07/2020' from Echovin.dbo.[202007] WHERE SKU = @FSKU GROUP by SKU;

INSERT INTO partrial (SKU, Units_Ordered, Time)
SELECT SKU, SUM(Units_Ordered), '08/2020' from Echovin.dbo.[202008] WHERE SKU = @FSKU GROUP by SKU;

INSERT INTO partrial (SKU, Units_Ordered, Time)
SELECT SKU, SUM(Units_Ordered), '09/2020' from Echovin.dbo.[202009] WHERE SKU = @FSKU GROUP by SKU;

INSERT INTO partrial (SKU, Units_Ordered, Time)
SELECT SKU, SUM(Units_Ordered), '10/2020' from Echovin.dbo.[202010] WHERE SKU = @FSKU GROUP by SKU;

INSERT INTO partrial (SKU, Units_Ordered, Time)
SELECT SKU, SUM(Units_Ordered), '11/2020' from Echovin.dbo.[202011] WHERE SKU = @FSKU GROUP by SKU;

INSERT INTO partrial (SKU, Units_Ordered, Time)
SELECT SKU, SUM(Units_Ordered), '12/2020' from Echovin.dbo.[202012] WHERE SKU = @FSKU GROUP by SKU;


select * from partrial;