SELECT avg(age) ageAverage FROM patients;

SELECT * FROM bloodtest ORDER BY testDate DESC;

SELECT * FROM bloodtest ORDER BY testDate DESC;

SELECT * FROM bloodtest WHERE testDate BETWEEN '2018-04-18' AND '2018-04-20';

SELECT * FROM patients WHERE email like '%@gmail.com';

SELECT * FROM bloodtest where fbs>(SELECT avg(fbs) from bloodtest) ;

SELECT * FROM bloodtest WHERE testDate BETWEEN '2018-04-18' AND '2018-04-19';

SELECT * FROM patients where gender='Male';

SELECT * FROM patients where gender='Male' or age>=40;

SELECT * FROM patients where gender='Male' and age>=40;

SELECT fbs+sgpt FROM bloodtest;

SELECT fbs+sgpt FROM bloodtest ;

SELECT * FROM bloodtest where hbvDna>(SELECT avg(hbvDna) from bloodtest) ;

UPDATE patients SET firstName='Vijay' where firstName like '%Nikil%';