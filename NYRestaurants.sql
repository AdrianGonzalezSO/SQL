/*        COLUMN NAMES nomnom
SELECT * FROM nomnom;
-name -neighborhood -cuisine -review -price -health
*/

/*        NEIGBORHOODS 
SELECT DISTINCT neighborhood FROM nomnom;
-Brooklyn -Midtown -Chinatown -Uptown -Queens -Downtown
*/

/*        CUISINE
SELECT DISTINCT cuisine FROM nomnom;
-Steak -Korean -Chinese -Pizza -Ethiopian -Vegetarian -Italian -Japanese -American -Mediterranean -Indian -Soul Food -Mexican
*/

/*        CHINESE RESTAURANTS
select * from nomnom where cuisine='Chinese';
*/

/*        4 STARS OR AVOVE REVIEWS
select * from nomnom where review>=4;
*/

/*        ITALIAN RESTAURANTS $$$
select * from nomnom where cuisine='Italian' and price='$$$';
*/

/*RESTAURANT THAT CONTAINS 'MEATBALL'
select * from nomnom where name='%meatball%';
*/

/*        NEAREST RESTAURANTS
select * from nomnom where neighborhood='Midtown' or neighborhood='Midtown' or neighborhood='Chinatown';
*/

/*        HEALTH PENDING
select * from nomnom where health IS null;
*/

/*        TOP 10 RESTAURANTS
select * from nomnom order by review desc limit 10;
*/

/*
SELECT name,
 CASE
  WHEN review > 4.5 THEN 'Extraordinary'
  WHEN review > 4 THEN 'Excellent'
  WHEN review > 3 THEN 'Good'
  WHEN review > 2 THEN 'Fair'
  ELSE 'Poor'
 END AS 'Review'
FROM nomnom;
*/
SELECT name,
 CASE
  WHEN review > 4.5 THEN 'Extraordinary'
  WHEN review > 4 THEN 'Excellent'
  WHEN review > 3 THEN 'Good'
  WHEN review > 2 THEN 'Fair'
  ELSE 'Poor'
 END AS 'Review'
FROM nomnom;