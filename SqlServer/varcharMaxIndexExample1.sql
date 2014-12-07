http://explainextended.com/2009/05/01/indexing-varcharmax/

    CREATE SCHEMA [20090501_max]
    CREATE TABLE t_bigdata (
    id INT NOT NULL PRIMARY KEY,
    value NVARCHAR(MAX),
    value_index AS CAST(value AS NVARCHAR(450))
    )
    GO
    CREATE INDEX IX_bigdata_value ON [20090501_max].t_bigdata(value_index)