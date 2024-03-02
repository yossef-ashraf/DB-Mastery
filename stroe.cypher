CREATE (:Employee { name: "John" })

MATCH (e:Employee { name: "John" })
MERGE (d:Department { name: "IT" })
MERGE (e)-[:BELONGS_TO]->(d)


MATCH (e:Employee { name: "John" })
UNWIND [ "Programming", "Database", "Networking" ] AS skill
MERGE (s:Skill { name: skill })
MERGE (e)-[:HAS_SKILL]->(s)


