

CREATE TABLE tbl_news
    ([ID] int)
;
    
INSERT INTO tbl_news
    ([ID])
VALUES
    (1),
    (2),
    (3),
    (4),
    (5)
;


CREATE FUNCTION dbo.getRandomList (
    @seed INT
    ,@size INT
)
RETURNS @Data TABLE(  ID  INT    ,randnum float )
AS
BEGIN
	DECLARE @counter smallint;
	SET @counter = 1;
	SELECT RAND(@seed);
	WHILE @counter < @size
	   BEGIN
		  INSERT INTO @Data SELECT @Counter,RAND() 
		  SET @counter = @counter + 1
	   END;



END;



SELECT * FROM dbo.getRandomList(100,5)