- Assign01 Pdf: https://docs.google.com/document/d/1sYuOakOqdG_ZogDdNtaxHEwuXoSqfPaAlCHj5V5jX34/edit?usp=sharing
- Assign02 Pdf: https://docs.google.com/document/d/1UnsLzexm3r02g6Vb92t3oItAOR5PnagShiz3hRrmyl4/edit?usp=sharing
- Assign03 Pdf: https://docs.google.com/document/d/1bR35R_ysbcV3Xih6-uoi8CZhM3ZayzJs2NguTh6NVB0/edit?usp=sharing
- Assign03 Presentation: https://docs.google.com/presentation/d/1clCQq4tHnF5j0QIGNuoMcljLgDB_yUemgw9jqTuv-1k/edit?usp=sharing
- ODPS website https://odps.informatik.uni-stuttgart.de/Login.do

# Assign03


Task 1.3, 2.3 and 3.3 (15 to 30 minutes per team).
# Sample Exam
```
# Task 4.1

SELECT manager, class, SUM(tot_sls_dlr)
FROM sales F, item I, store O
WHERE F.item_key = i.item_key AND F.store_key = o.store_key
GROUP BY (class, manager)

# Task 4.2

SELECT manager, class, style, region, SUM(tot_sls_dlr)
FROM sales F, item I, store O, time T
WHERE F.item_key = i.item_key AND F.store_key = o.store_key AND F.cur_trn_date = T.cur_trn_date AND T.year_key = 2001
GROUP BY (class, manager, style, region)

# Task 4.3
SELECT manager, class, year_key, SUM(tot_sls_dlr)
FROM sales F, item I, store O, time T
WHERE F.item_key = i.item_key AND F.store_key = o.store_key AND F.cur_trn_date = T.cur_trn_date
GROUP BY CUBE(class, manager, year_key)

# Task 4.4
SELECT store_desc, class, SUM(tot_sls_qty), RANK() OVER(PARTITION BY store_desc ORDER BY SUM(tot_sls_qty) desc) AS rank 
FROM sales F, item I, store O, time T
WHERE F.item_key = i.item_key AND F.store_key = o.store_key AND F.cur_trn_date = T.cur_trn_date AND T.year_key = 2015
GROUP BY class, store_desc

```
# Review

# L01 Introduction

- Motivation and basics
- Heterogeneous Data Sources
- Data Warehouse: The Basic Idea
- Information Pyramid
- Operational vs. Analytical Systems
- Defining Data Warehouse
	+ Ad atawarehouse is a subject oriented, integrated, non-volatile, andtimevariant collection of data in support of management's decisions.
	+ Data Warehousing
		+ Process of integrating data from several source systems, storing it in the data warehouse database, and using this integrated data source.
+ Introduction to Services

# L02 Data Warehouse Architecture

# L04 Logical Data Warehouse Design
- Reminder Process
- Conceptual Schema: Overview
- Logical Schema Types
	+ Star Schema
	+ Snow flakeSchema
	+ Informix Schema
+ Comparing Logical Schema Types
	+ General Comparison
	+ Facts, dimensions and hierarchies
	+ Schema Modifications

## Extended Dimension Table Design
+ Production Keys vs. Surrogate Keys
	+ Production key: Attributes that make up a primary key in the production system
	+ Surrogate key: Single attribute(often INTEGER)that is used as primary key in the data warehouse
+ Roles of Dimensions
+ Hierarchies
	+ Bridge Table for Hierarchies
+ Slowly Changing Dimensions
	+ Type One: Substitution of the old description by the new one
	+ Type Two: Product together with its new description gets a new ID
	+ Type Three: Associated product entry has an additional
attribute that holds the old description
+ Time Stamping in Large Dimensions
+ Large Dimensions with Frequent Changes
	+ Modeling approach: Break off dimension into several dimension tables
		+ Attributes are forced to discrete values
+ Many-to-Many Dimensions

## Extended Fact Table Design
- Various Units of Measure
- Modeling Events and Coverage
- Factless Fact Tables
- Multinational Currency Tracking

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


# L07-OLAP

# OnLine Analytic Processing (OLAP)
select facts, select dimensions, define filters, define presentation
- Data Warehouse Design
- Typical OLAP Operations
	- Slice
	- Dice
	- Roll-up: by climbing up hierarchy or by dimension reduction
	- Drill-down
	- Pivot/Rotate
	- Drill through
- FASMI Test
 
## Storage of OLAPcubes
- Relational vs. Multidimensional
- Sequence of typical star queries
- Multidimensional Database Systems
- Multidimensional Arrays
- Multidimensional Partitioning
	- Automatic partitioning
	- dimension semantics
	- User-defined partitioning
- Sparse Cubes
- N-dimensionalarrayisefficientfor dense cubes
- Two storage levels
	- first level: index structure for sparse dimensions
	- second level: index structures like B-trees
- Multidimensional Query Language



## Architecture
- MOLAP: data resides in multidimensional DBMS
	+ Pros: short response, efficient structure
	+ Cons: limited performance, large volume, preprocessing
- ROLAP: data resides in a relational DBMS, OLAP server provides SQL queries
	+ Pros: mature relational technology, no volumn limit
	+ Cons: increased response time
- HOLAP
	+ Pros: short response for aggregated data
	+ Cons: increased response time for detail data

## SQL-Support for OLAP

