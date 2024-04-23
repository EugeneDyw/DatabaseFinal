CREATE VIEW CrimeAlbany
       AS SELECT * FROM crime
       WHERE County = "Albany"
WITH CHECK OPTION;

SELECT * FROM CrimeAlbany;

CREATE VIEW CrimeYear2020
       AS SELECT * FROM crime
       WHERE Year = "2020"
WITH CHECK OPTION;

SELECT * FROM CrimeYear2020;

CREATE VIEW Employement10k
       AS SELECT * FROM employment
       WHERE CurrentEmployment >= "10000"
WITH CHECK OPTION;

SELECT * FROM Employement10k;

CREATE VIEW CountyBenefit
       AS SELECT * FROM insurancebenefits
       WHERE County = "Saratoga"
WITH CHECK OPTION;

SELECT * FROM CountyBenefit;

CREATE VIEW FemalePopulation
       AS SELECT * FROM population
       WHERE Gender = "Female"
WITH CHECK OPTION;

SELECT * FROM FemalePopulation;

CREATE VIEW Population2010
       AS SELECT * FROM population
       WHERE Year = "2010"
WITH CHECK OPTION;

SELECT * FROM Population2010;

CREATE VIEW LarcenyCrime
       AS SELECT * FROM propertycrime
       WHERE Larceny >= "5000"
WITH CHECK OPTION;

SELECT * FROM LarcenyCrime;
