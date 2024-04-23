CREATE TABLE area AS
SELECT DISTINCT Area, Areaname
FROM employment;

CREATE TABLE title AS
SELECT DISTINCT Series, Title
FROM employment;

ALTER TABLE employment DROP COLUMN Area;
ALTER TABLE employment DROP COLUMN Series;
