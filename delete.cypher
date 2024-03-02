MATCH (n:Gal)-[:GAL_RELATIONSHIP]->(pass:Gal) DETACH DELETE n, pass;


MATCH (e:Employee { name: "John" })-[r:BELONGS_TO]->(d:Department { name: "IT" })
DELETE r

