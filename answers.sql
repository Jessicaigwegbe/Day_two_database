-- select database
USE hospital;
-- select patients table
SELECT * FROM patients
;
-- select first-name,last-mame,date-of-birth from patients table

SELECT first_name,last_name,date_of_birth
 FROM patients; 
 
 -- select provider_id,first_name,provider_speciality from providers table

SELECT provider_id,first_name,provider_specialty
 FROM providers; 
 
 -- retrieve all patients whose first_name starts with Ab
 
 SELECT * 
 FROM patients 
 WHERE first_name >= "Ab";
 
   -- retrieve all providers whose specialities ends with y
 SELECT * 
 FROM providers
 WHERE provider_specialty = "Y";
 
  -- retrieve all patients born after 1st january 1980
 SELECT *
 FROM patients
 WHERE date_of_birth >= "1980-01-01";
 
  -- retrieve visits where acuity level is 2 or higher
 SELECT *
 FROM ed_visits
 WHERE acuity >= "2";
 
 -- retrieve all patients who speak spanish
 SELECT *
 FROM patients
 WHERE language = "spanish";
 
  -- retrieve visits where reason is migraine and disposition admitted
 SELECT *
 FROM ed_visits
 WHERE reason_for_visit = "Migraine" and ed_disposition = "Admitted";
 
 
 -- retrieve patients that were born between 1975 and 1980
 SELECT *
 FROM patients
 WHERE date_of_birth >= "1975-01-31" and  date_of_birth <= "1980-12-31";
 

-- retrieve patients names sorted alphabetically by last_name
 SELECT Last_name, first_name
 FROM patients
 ORDER BY last_name ASC;
 
 
 -- retrieve all visits sorted by most recent date_of_visit
SELECT *
FROM visits
ORDER BY date_of_visit DESC;

-- retrieve all admissions where primary diagonsis is stroke
SELECT *
FROM admissions
WHERE primary_diagnosis = "Stroke"; 

-- retrieve all discahrges where discharge_disposition is home
SELECT *
FROM discharges
WHERE discharge_disposition = "Home";


-- retrieve providers who joined after 1995 and specialize in either pediatrics or cardiology
 SELECT *
 FROM providers
 WHERE date_joined >= "1995-12-31"
 AND provider_specialty = "Pediatrics or Cardiology";
 
 
SELECT *
FROM providers
WHERE provider_specialty = "Pediatrics or Cardiology";


SELECT *
FROM discharges
WHERE discharge_date >= "2018-03-01" AND discharge_date = "2018-03-07";
