                                  -- This process is to filter SKU strings from raw datasets. Besure to know those APL1770_FBM and APL1770_NEW and APL1770 are same SKUs.
UPDATE [Echovin].dbo.[201901]     --The only difference is how this SKU are being sold in Amazon(ex, via FBM(Fulfilled By Merchadise) or FBA(Fulfilled By Amazon) or NEW(by direct warehouse)
Set SKU = REPLACE(SKU, '_FBM', '');  -- removes string '_FBM' Ex) APL1770_FBM -> APL1770
UPDATE [Echovin].dbo.[201901]        
Set SKU = REPLACE(SKU, '_NEW', '');  -- removes string '_NEW' Ex) APL1770_NEW -> APL1770
UPDATE [Echovin].dbo.[201901]        
Set SKU = REPLACE(SKU, ' - NEW', ''); -- removes string '- NEW' EX) APL1770 - NEW -> APL1770
                                      -- If we sold 3 of APL1770, 2 of APL1770 - NEW, 1 of APL1770_FBM, we sold total 3+2+1 = 6 of APL1770 SKUs.
UPDATE [Echovin].dbo.[201902]
Set SKU = REPLACE(SKU, '_FBM', '');  
UPDATE [Echovin].dbo.[201902]        
Set SKU = REPLACE(SKU, '_NEW', '');  
UPDATE [Echovin].dbo.[201902]        
Set SKU = REPLACE(SKU, ' - NEW', ''); 
                                     
Set SKU = REPLACE(SKU, '_FBM', '');
UPDATE [Echovin].dbo.[201903]
Set SKU = REPLACE(SKU, '_NEW', '');
UPDATE [Echovin].dbo.[201903]
Set SKU = REPLACE(SKU, ' - NEW', '');

UPDATE [Echovin].dbo.[201904]
Set SKU = REPLACE(SKU, '_FBM', '');
UPDATE [Echovin].dbo.[201904]
Set SKU = REPLACE(SKU, '_NEW', '');
UPDATE [Echovin].dbo.[201904]
Set SKU = REPLACE(SKU, ' - NEW', '');

UPDATE [Echovin].dbo.[201905]
Set SKU = REPLACE(SKU, '_FBM', '');
UPDATE [Echovin].dbo.[201905]
Set SKU = REPLACE(SKU, '_NEW', '');
UPDATE [Echovin].dbo.[201905]
Set SKU = REPLACE(SKU, ' - NEW', '');

UPDATE [Echovin].dbo.[201906]
Set SKU = REPLACE(SKU, '_FBM', '');
UPDATE [Echovin].dbo.[201906]
Set SKU = REPLACE(SKU, '_NEW', '');
UPDATE [Echovin].dbo.[201906]
Set SKU = REPLACE(SKU, ' - NEW', '');

UPDATE [Echovin].dbo.[201907]
Set SKU = REPLACE(SKU, '_FBM', '');
UPDATE [Echovin].dbo.[201907]
Set SKU = REPLACE(SKU, '_NEW', '');
UPDATE [Echovin].dbo.[201907]
Set SKU = REPLACE(SKU, ' - NEW', '');

UPDATE [Echovin].dbo.[201908]
Set SKU = REPLACE(SKU, '_FBM', '');
UPDATE [Echovin].dbo.[201908]
Set SKU = REPLACE(SKU, '_NEW', '');
UPDATE [Echovin].dbo.[201908]
Set SKU = REPLACE(SKU, ' - NEW', '');

UPDATE [Echovin].dbo.[201909]
Set SKU = REPLACE(SKU, '_FBM', '');
UPDATE [Echovin].dbo.[201909]
Set SKU = REPLACE(SKU, '_NEW', '');
UPDATE [Echovin].dbo.[201909]
Set SKU = REPLACE(SKU, ' - NEW', '');

UPDATE [Echovin].dbo.[201910]
Set SKU = REPLACE(SKU, '_FBM', '');
UPDATE [Echovin].dbo.[201910]
Set SKU = REPLACE(SKU, '_NEW', '');
UPDATE [Echovin].dbo.[201910]
Set SKU = REPLACE(SKU, ' - NEW', '');

UPDATE [Echovin].dbo.[201911]
Set SKU = REPLACE(SKU, '_FBM', '');
UPDATE [Echovin].dbo.[201911]
Set SKU = REPLACE(SKU, '_NEW', '');
UPDATE [Echovin].dbo.[201911]
Set SKU = REPLACE(SKU, ' - NEW', '');

UPDATE [Echovin].dbo.[201912]
Set SKU = REPLACE(SKU, '_FBM', '');
UPDATE [Echovin].dbo.[201912]
Set SKU = REPLACE(SKU, '_NEW', '');
UPDATE [Echovin].dbo.[201912]
Set SKU = REPLACE(SKU, ' - NEW', '');

UPDATE [Echovin].dbo.[202001]
Set SKU = REPLACE(SKU, '_FBM', '');  
UPDATE [Echovin].dbo.[202001]        
Set SKU = REPLACE(SKU, '_NEW', '');  
UPDATE [Echovin].dbo.[202001]        
Set SKU = REPLACE(SKU, ' - NEW', ''); 

UPDATE [Echovin].dbo.[202002]
Set SKU = REPLACE(SKU, '_FBM', '');  
UPDATE [Echovin].dbo.[202002]        
Set SKU = REPLACE(SKU, '_NEW', '');  
UPDATE [Echovin].dbo.[202002]        
Set SKU = REPLACE(SKU, ' - NEW', ''); 
                                     
UPDATE [Echovin].dbo.[202003]
Set SKU = REPLACE(SKU, '_FBM', '');
UPDATE [Echovin].dbo.[202003]
Set SKU = REPLACE(SKU, '_NEW', '');
UPDATE [Echovin].dbo.[202003]
Set SKU = REPLACE(SKU, ' - NEW', '');

UPDATE [Echovin].dbo.[202004]
Set SKU = REPLACE(SKU, '_FBM', '');
UPDATE [Echovin].dbo.[202004]
Set SKU = REPLACE(SKU, '_NEW', '');
UPDATE [Echovin].dbo.[202004]
Set SKU = REPLACE(SKU, ' - NEW', '');

UPDATE [Echovin].dbo.[202005]
Set SKU = REPLACE(SKU, '_FBM', '');
UPDATE [Echovin].dbo.[202005]
Set SKU = REPLACE(SKU, '_NEW', '');
UPDATE [Echovin].dbo.[202005]
Set SKU = REPLACE(SKU, ' - NEW', '');

UPDATE [Echovin].dbo.[202006]
Set SKU = REPLACE(SKU, '_FBM', '');
UPDATE [Echovin].dbo.[202006]
Set SKU = REPLACE(SKU, '_NEW', '');
UPDATE [Echovin].dbo.[202006]
Set SKU = REPLACE(SKU, ' - NEW', '');

UPDATE [Echovin].dbo.[202007]
Set SKU = REPLACE(SKU, '_FBM', '');
UPDATE [Echovin].dbo.[202007]
Set SKU = REPLACE(SKU, '_NEW', '');
UPDATE [Echovin].dbo.[202007]
Set SKU = REPLACE(SKU, ' - NEW', '');

UPDATE [Echovin].dbo.[202008]
Set SKU = REPLACE(SKU, '_FBM', '');
UPDATE [Echovin].dbo.[202008]
Set SKU = REPLACE(SKU, '_NEW', '');
UPDATE [Echovin].dbo.[202008]
Set SKU = REPLACE(SKU, ' - NEW', '');

UPDATE [Echovin].dbo.[202009]
Set SKU = REPLACE(SKU, '_FBM', '');
UPDATE [Echovin].dbo.[202009]
Set SKU = REPLACE(SKU, '_NEW', '');
UPDATE [Echovin].dbo.[202009]
Set SKU = REPLACE(SKU, ' - NEW', '');

UPDATE [Echovin].dbo.[202010]
Set SKU = REPLACE(SKU, '_FBM', '');
UPDATE [Echovin].dbo.[202010]
Set SKU = REPLACE(SKU, '_NEW', '');
UPDATE [Echovin].dbo.[202010]
Set SKU = REPLACE(SKU, ' - NEW', '');

UPDATE [Echovin].dbo.[202011]
Set SKU = REPLACE(SKU, '_FBM', '');
UPDATE [Echovin].dbo.[202011]
Set SKU = REPLACE(SKU, '_NEW', '');
UPDATE [Echovin].dbo.[202011]
Set SKU = REPLACE(SKU, ' - NEW', '');

UPDATE [Echovin].dbo.[202012]
Set SKU = REPLACE(SKU, '_FBM', '');
UPDATE [Echovin].dbo.[202012]
Set SKU = REPLACE(SKU, '_NEW', '');
UPDATE [Echovin].dbo.[202012]
Set SKU = REPLACE(SKU, ' - NEW', '');
