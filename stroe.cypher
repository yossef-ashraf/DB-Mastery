CREATE (:Employee { name: "John" })

MATCH (e:Employee { name: "John" })
MERGE (d:Department { name: "IT" })
MERGE (e)-[:BELONGS_TO]->(d)


MATCH (e:Employee { name: "John" })
UNWIND [ "Programming", "Database", "Networking" ] AS skill
MERGE (s:Skill { name: skill })
MERGE (e)-[:HAS_SKILL]->(s)

MATCH (e:Employee) ,  (c:Customer) 
AND id(e) = 
AND id(c) = 
CREATE (n)-[:AMADEUS_FLIGHT_CUSTOMER_RELATION]->(c)