ALTER TABLE population
ADD PRIMARY KEY (Year, Gender, RaceEthnicity, County);

ALTER TABLE employment
ADD PRIMARY KEY (AreaName, Title, Year, Month);

ALTER TABLE crime
ADD PRIMARY KEY (County, Agency, Year);

ALTER TABLE insurancebenefits
ADD PRIMARY KEY (Year, Month, County);

ALTER TABLE insuranceduration
ADD PRIMARY KEY (Year, Month, County);


ALTER TABLE propertycrime
ADD PRIMARY KEY (County, Agency, Year);

ALTER TABLE violentcrime
ADD PRIMARY KEY (County, Agency, Year);

ALTER TABLE region
ADD PRIMARY KEY (County);

ALTER TABLE area
ADD PRIMARY KEY (Areaname);

ALTER TABLE title
ADD PRIMARY KEY (Title);
