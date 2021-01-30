DECLARE @QSKU as nvarchar(50);
Set @QSKU = 'APL2126'; 

DROP table IF exists MatMonth;
CREATE TABLE MatMonth
(
TimeLine nvarchar(50)
);

INSERT INTO MatMonth (Timeline)
Values ('01/2019');
INSERT INTO MatMonth (Timeline)
Values ('02/2019');
INSERT INTO MatMonth (Timeline)
Values ('03/2019');
INSERT INTO MatMonth (Timeline)
Values ('04/2019');
INSERT INTO MatMonth (Timeline)
Values ('05/2019');
INSERT INTO MatMonth (Timeline)
Values ('06/2019');
INSERT INTO MatMonth (Timeline)
Values ('07/2019');
INSERT INTO MatMonth (Timeline)
Values ('08/2019');
INSERT INTO MatMonth (Timeline)
Values ('09/2019');
INSERT INTO MatMonth (Timeline)
Values ('10/2019');
INSERT INTO MatMonth (Timeline)
Values ('11/2019');
INSERT INTO MatMonth (Timeline)
Values ('12/2019');

INSERT INTO MatMonth (Timeline)
Values ('01/2020');
INSERT INTO MatMonth (Timeline)
Values ('02/2020');
INSERT INTO MatMonth (Timeline)
Values ('03/2020');
INSERT INTO MatMonth (Timeline)
Values ('04/2020');
INSERT INTO MatMonth (Timeline)
Values ('05/2020');
INSERT INTO MatMonth (Timeline)
Values ('06/2020');
INSERT INTO MatMonth (Timeline)
Values ('07/2020');
INSERT INTO MatMonth (Timeline)
Values ('08/2020');
INSERT INTO MatMonth (Timeline)
Values ('09/2020');
INSERT INTO MatMonth (Timeline)
Values ('10/2020');
INSERT INTO MatMonth (Timeline)
Values ('11/2020');
INSERT INTO MatMonth (Timeline)
Values ('12/2020');



--select * from MatMonth;
--select * from partrial;

DROP table IF exists Monolog;
SELECT * INTO Monolog FROM ( select [Echovin].dbo.MatMonth.TimeLine, [Echovin].dbo.partrial.SKU , [Echovin].dbo.partrial.Units_Ordered FROM [Echovin].dbo.MatMonth
left join partrial ON MatMonth.TimeLine = partrial.Time) as z;

UPDATE [Echovin].dbo.Monolog
Set Units_Ordered = 0 WHERE Units_Ordered IS NULL;

UPDATE [Echovin].dbo.Monolog
Set SKU = @QSKU WHERE SKU IS NULL;

SELECT * from Monolog;

--DROP table IF exists Monolog2;
--SELECT * INTO Monolog2 FROM ( select [Echovin].dbo.partrial.SKU,  [Echovin].dbo.partrial.Units_Ordered FROM [Echovin].dbo.MatMonth
--left join partrial ON MatMonth.TimeLine = partrial.Time) as z;




