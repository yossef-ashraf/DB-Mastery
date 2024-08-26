### [mapreduce-understanding-with-real-life-example](https://www.geeksforgeeks.org/mapreduce-understanding-with-real-life-example/)

### Is MapReduce Declarative or Imperative?
**MapReduce** is considered **imperative**. It defines how the data should be processed, specifying the `map` and `reduce` functions, and explicitly instructing the system on how to execute those functions on the data.

### SQL Query Example (Declarative):
This query uses SQL, which is declarative, to calculate the total number of animals observed each month for a specific family (e.g., 'Sharks').

```sql
SELECT
    date_trunc('month', observation_timestamp) AS observation_month,
    SUM(num_animals) AS total_animals
FROM
    observations
WHERE
    family = 'Sharks'
GROUP BY
    observation_month;
```

### MapReduce Example (Imperative):
Below is a MapReduce approach that would be used in a MongoDB-like environment to achieve similar results.

```javascript
db.observations.mapReduce(
    function map() {
        var year = this.observationTimestamp.getFullYear();
        var month = this.observationTimestamp.getMonth() + 1;
        emit(year + '-' + month, this.numAnimals);
    },
    function reduce(key, values) {
        return Array.sum(values);
    },
    {
        query: { family: "Sharks" },
        out: "monthlySharkReport"
    }
);
```

### Aggregation Example (Declarative):
MongoDB's aggregation framework is more declarative than MapReduce, allowing you to express the logic without explicitly defining the control flow.

```javascript
db.observations.aggregate([
    { $match: { family: "Sharks" } },
    {
        $group: {
            _id: {
                year: { $year: "$observationTimestamp" },
                month: { $month: "$observationTimestamp" }
            },
            totalAnimals: { $sum: "$numAnimals" }
        }
    }
]);
```


