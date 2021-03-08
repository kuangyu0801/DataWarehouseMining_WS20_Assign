- Assign01 Pdf: https://docs.google.com/document/d/1sYuOakOqdG_ZogDdNtaxHEwuXoSqfPaAlCHj5V5jX34/edit?usp=sharing
- Assign02 Pdf: https://docs.google.com/document/d/1UnsLzexm3r02g6Vb92t3oItAOR5PnagShiz3hRrmyl4/edit?usp=sharing
- Assign03 Pdf: https://docs.google.com/document/d/1bR35R_ysbcV3Xih6-uoi8CZhM3ZayzJs2NguTh6NVB0/edit?usp=sharing
- Assign03 Presentation: https://docs.google.com/presentation/d/1clCQq4tHnF5j0QIGNuoMcljLgDB_yUemgw9jqTuv-1k/edit?usp=sharing
- ODPS website https://odps.informatik.uni-stuttgart.de/Login.do

# Assign03


Task 1.3, 2.3 and 3.3 (15 to 30 minutes per team).

# Review
## 05 Physical Data Warehouse Design
- Overview
### PhysicalDesignandDatabaseSupport
- Physical Design
- Levels of Database Support

### Partitioning
- Partitioning Methods
	- Horizontal vs. Vertical partitioning
	- Range partitioning
	- Hash partitioning

### Materialized Summary Data
- Advantages
- Challenges
Extract, transform, load
- Explicit vs. Implicit Summary Data
	- Explicit Summary Data
		- Provided asadditional tables
		- Refreshing summary data
		- Usage: Applications include queries that refer both detailed and summary

	- Implicit Summary Data
		- Refreshingsummarydata
		- Usage: Applications include queries that always refer to detailed data
- Materialized Views
- Derivability
	- Derivability and Predicates
	- Classfifcation of Aggregate Functions
		- Additive-computable: std, cov, avg  
		- Semi-additive: min, max
			-  F(A U B) = F(F(A),F(B))
		- Additive: sum, count
			- F(A U B) = F(F(A),F(B))
			- 有反函數
	- Derivability and Aggregate Functions
	- Derivability and Base Tables
	- Derivability and Groupings
		- Sample Dependency Graph
		- Groupings and Sparsity
	- Materialized View Selection Approaches
		- Dynamic
		- Static: based on benefit, refreshing cost, multi-query graph
	- Materialized View Selection
	- Dynamic Approaches
	- Refreshing Summary Data

### Indexes
- Scan
	- Table scan
	- Index scan
- Indexes
- Indexes on Dimension Tables
- Indexes on Fact Tables
- Bitmap Indexes
- Sample Bitmaps
- Bitmap Usage
- Sample Query
- Combining One-dimensional Indexes
- Multidimensional Indexes