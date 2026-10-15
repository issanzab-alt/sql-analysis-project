-- (Section 1) Exploration --
SELECT *
FROM md_water_services.global_water_access;

-- (Section 2) Water Sources --
SELECT * 
FROM md_water_services.water_source;

-- (Section 3) Vists --
SELECT *
FROM visits WHERE time_in_queue > 500;
SELECT *
FROM visits WHERE time_in_queue = 0;

-- (Section 4) Quality --
SELECT *
FROM md_water_services.water_quality;
SELECT *
FROM water_quality WHERE subjective_quality_score =10 AND visit_count >1;

-- (Section 5) Pollution --
SELECT *
FROM md_water_services.well_pollution;
SELECT *
FROM well_pollution WHERE results='Clean' AND biological >0.01;

-- (Section 5) Pollution --
SELECT *
FROM well_pollution where description in ('Clean Bacteria: E. coli','Clean Bacteria: Giardia Lamblia');

-- (Section 6) Data Cleaning --
SELECT * 
FROM md_water_services.well_pollution;
CREATE TABLE md_water_services.well_pollution_copy AS (SELECT * 
FROM md_water_services.well_pollution);
UPDATE well_pollution_copy SET description='Bacteria: E. coli' WHERE description='Clean Bacteria: E. coli';
UPDATE well_pollution_copy SET description='Bacteria: Giardia Lamblia' WHERE description='Clean Bacteria: Gardia Lamblia';
UPDATE well_pollution_copy SET results='Contaminated Biological' WHERE results='Clean' AND biological>0.01;