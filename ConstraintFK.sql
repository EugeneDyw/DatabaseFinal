
ALTER TABLE employment
ADD CONSTRAINT fk_area
FOREIGN KEY (AreaName) REFERENCES area(Areaname);

ALTER TABLE employment
ADD CONSTRAINT fk_title
FOREIGN KEY (Title) REFERENCES title(Title);

