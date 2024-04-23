CREATE TABLE region AS
SELECT DISTINCT Region, County
FROM insurancebenefits;

ALTER TABLE insurancebenefits DROP COLUMN Region;
ALTER TABLE insuranceduration DROP COLUMN Region;