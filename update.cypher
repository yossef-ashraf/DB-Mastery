MATCH (article:Article {title: "Dates, Datetimes, and Durations in Neo4j"})
SET article.datePublished = date("2019-10-01")
RETURN article.datePublished;

WITH apoc.date.parse("01 October 2019", "dd MMMM yyyy") AS ms
MATCH (article:Article {title: "Dates, Datetimes, and Durations in Neo4j"})
SET article.datePublished = date(datetime({epochmillis: ms}))
RETURN article.datePublished;
