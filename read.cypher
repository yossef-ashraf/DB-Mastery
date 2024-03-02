MATCH (n:Gal)-[:GAL_RELATIONSHIP]->(pass:Gal)
return n, pass;

match (n) where id(n) = 11414614 return n

OPTIONAL MATCH (n:Gal)-[:GAL_RELATIONSHIP]->(pass:Gal)

AND n.deleted_at is NULL

pass.name =~ '(?i)ppp'

AND n.date <= '2023-02-20’ 

AND n.date <> '2023-02-20’  

any(nat IN p.nat WHERE nat = 'unique')

exists(pattern)

exists((p)-[:ACTED_IN]->()) AS has_acted_in_rel

NOT isEmpty(p.nat)

WITH
collect(distinct ta) as tas
collect(DISTINCT {id: id(pass), sell: COALESCE(pass.sell, 0)}) as unique

WITH n,
reduce(total = toFloat(0), ta in tas | total + toFloat(ta.am)) as tas,
collect({ details: n.det}) as n,
collect(DISTINCT properties(data)) as data, 
REDUCE(sell = 0, p IN unique | sell + p.sell) AS sell

ORDER BY n.date DESC LIMIT 1;


MATCH (n:Fli)
WHERE 
n.deleted_at IS NULL
AND EXISTS(n.t) 
AND n.t <> 0 
AND n.t <> ""
RETURN n;

MATCH (n:M)-[:Nat_RELATIONSHIP]-(e:Nat) 
RETURN COUNT( DISTINCT n) as count
