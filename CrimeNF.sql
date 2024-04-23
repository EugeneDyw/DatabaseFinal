
CREATE TABLE violentcrime AS
SELECT DISTINCT County, Agency, Year, MonthsReported, ViolentTotal, Murder, Rape, Robbery, AggravatedAssault
FROM crime;

CREATE TABLE propertycrime AS
SELECT DISTINCT County, Agency, Year, MonthsReported, PropertyTotal, Burglary, Larceny, MotorVehicleTheft
FROM crime;

ALTER TABLE crime DROP COLUMN Region;
ALTER TABLE crime DROP COLUMN Murder;
ALTER TABLE crime DROP COLUMN Rape;
ALTER TABLE crime DROP COLUMN Robbery;
ALTER TABLE crime DROP COLUMN AggravatedAssault;
ALTER TABLE crime DROP COLUMN Burglary;
ALTER TABLE crime DROP COLUMN Larceny;
ALTER TABLE crime DROP COLUMN MotorVehicleTheft;