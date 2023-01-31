select 
  SUM(boydyards) as "Boyd Yards", 
  SUM(higginsyards) as "Higgins Yards", 
  SUM(chaseyards) as "Chase Yards", 
  SUM (
    case when result = 'Win' then 1 else 0 end
  ) || '-' || sum (
    case when result = 'Loss' then 1 else 0 end
  ) as "Win/Loss" 
from 
  joe_seroski js