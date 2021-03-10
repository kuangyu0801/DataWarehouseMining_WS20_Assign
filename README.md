- Assign01 Pdf: https://docs.google.com/document/d/1sYuOakOqdG_ZogDdNtaxHEwuXoSqfPaAlCHj5V5jX34/edit?usp=sharing
- Assign02 Pdf: https://docs.google.com/document/d/1UnsLzexm3r02g6Vb92t3oItAOR5PnagShiz3hRrmyl4/edit?usp=sharing
- Assign03 Pdf: https://docs.google.com/document/d/1bR35R_ysbcV3Xih6-uoi8CZhM3ZayzJs2NguTh6NVB0/edit?usp=sharing
- Assign03 Presentation: https://docs.google.com/presentation/d/1clCQq4tHnF5j0QIGNuoMcljLgDB_yUemgw9jqTuv-1k/edit?usp=sharing
- ODPS website https://odps.informatik.uni-stuttgart.de/Login.do

# Assign03


Task 1.3, 2.3 and 3.3 (15 to 30 minutes per team).

# Review
# 05 Physical Data Warehouse Design
- Overview
### PhysicalDesignandDatabaseSupport
- Physical Design
- Levels of Database Support

## Partitioning
- Partitioning Methods
	- Horizontal vs. Vertical partitioning
	- Range partitioning
	- Hash partitioning

## Materialized Summary Data
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

|   complete  |           |           |     x    |
|:-----------:|:---------:|:---------:|:--------:|
| incremental |     x     |     x     |          |
|             | immediate | on-commit | deferred |

## Indexes
- Scan
	- Table scan: retrieve, extract all rows and apply predicate each 
	- Index scan: using index to identify
- Indexes
	- Indexes on Dimension Tables
	- Indexes on Fact Tables
- Bitmap Indexes
	- Sample Bitmaps
	- Bitmap Usage
	- Sample Query
- Combining One-dimensional Indexes
	- MDB-Tree
	- UB-Tree
- Multidimensional Indexes: Symmetric treatment of all dimensions
	- Quadtree, Octtree, K-D-B-Tree


# L06: Phases of Data Warehousing
- Architecture

## Monitoring: Discover changes in data source incrementally
- Appoaches
	+ Trigger
		- triggers defined in source DBMS
		- trigger writes a copy of changed data to files
	+ Replica
		- replication support of source DBMS
		- replication provides changed rows in a separate table
	+ Timestamp
		- timestamp assigned to each row
		- use timestamp to identify changes (supported by temporal DBMS)
	+ Log
		- log of source DBMS
		- read log
	+ Snapshot
		- periodic snapshot of data source
		- compare snapshots
		- Snapshot Differentials
			- Window Algorithm

## Extraction
- ETL Processing
- Extraction
- Export and Import
- Import vs. Load
- Filter and 
- Direct Integration
	- external tables
	- table functions
	- federated database

## Load: from data staging area to data warehouse
- Update and Insert
- MERGE INTO
- Multiple Inserts
- Replication
	- data distributed: source update only ->
	- update anywhere: <->
	- data consolidation: update from multiple source ->

## Transformation: convert data into useful and valuable
- Semantics: identify proper semantics
- Structure: schema integration
- Data: data integration and data cleansing

## Data Integration
- Normalization, Surrogate key, data type conversion, coding, convert strings, convert date format

## Data Cleansing
- Elementizing, Standardizing, Verification, Householding, Documenting
- Dimensions of Data Cleansing


|                 | Single<br>Source                                 | Multiple<br>Source                                                |
|-----------------|--------------------------------------------------|-------------------------------------------------------------------|
| Single Record   | missing/illegal values<br>attribute dependencies | primary key,foreign key<br>duplicates/matching<br>standardization |
| Multiple Record | primary key,foreign key<br>duplicates/matching   | primary key,foreign key<br>duplicates/matching                    |

## Data Quality
- consistency, correctness, completeness, exactness, reliability, understandability, relevance

## Tools
- ETL Market
- ETL Tools
- Gartner Magic Quadrant for Data Integration Tools