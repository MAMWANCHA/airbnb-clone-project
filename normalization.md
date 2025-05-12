# NORMALIZATION.md

## Objective
Normalize the database to Third Normal Form (3NF) to eliminate redundancy and ensure data integrity.

## Steps Taken

1. **First Normal Form (1NF)**  
   - All columns contain atomic values. No repeating groups.

2. **Second Normal Form (2NF)**  
   - Each table has a single-column primary key (UUID), so no partial dependencies exist.

3. **Third Normal Form (3NF)**  
   - All non-key attributes depend only on the primary key.
   - We reviewed each table and confirmed there are no transitive dependencies.
   - One minor exception: `total_price` in Booking could be derived from other values but is retained for performance.

## Conclusion
The schema complies with 3NF principles while making one pragmatic denormalization choice for performance reasons.

