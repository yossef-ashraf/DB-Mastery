
### Imperative ():
```sql
SELECT * FROM animals WHERE family = 'Sharks';
```

### Declarative ():
```javascript
function getSharks(animals) {
    return animals.filter(animal => animal.family === 'Sharks');
}
```

### Explanation:
- **Imperative SQL**: The SQL query directly selects all records from the `animals` table where the `family` column is equal to `'Sharks'`. It is imperative because it tells the database exactly what to do.

- **Declarative JavaScript**: The JavaScript function `getSharks` takes an array of `animals` and uses the `filter` method to return only those animals where the `family` property equals `'Sharks'`. This is declarative because it expresses the logic of the computation without describing its control flow.
