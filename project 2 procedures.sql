use alumini;
select Count(*) from College_A_HS;
describe College_A_HS;
-- create view College_A_HS_V

CREATE VIEW College_A_HS_V AS
SELECT *
FROM College_A_HS
WHERE RollNo IS NOT NULL
  AND lastUpdate IS NOT NULL
  AND Name IS NOT NULL
  AND FatherName IS NOT NULL
  AND MotherName IS NOT NULL
  AND Batch IS NOT NULL
  AND Degree IS NOT NULL
  AND PresentStatus IS NOT NULL
  AND HSDegree IS NOT NULL
  AND EntranceExam IS NOT NULL
  AND Institute IS NOT NULL
  AND Location IS NOT NULL;
  
  select count(*) from College_A_HS_V;
  
  -- create view College_A_SE_V
  
  select * from College_A_se;
  CREATE VIEW College_A_SE_V AS
SELECT *
FROM College_A_SE
WHERE RollNo IS NOT NULL
  AND lastUpdate IS NOT NULL
  AND Name IS NOT NULL
  AND FatherName IS NOT NULL
  AND MotherName IS NOT NULL
  AND Batch IS NOT NULL
  AND Degree IS NOT NULL
  AND PresentStatus IS NOT NULL
  AND Organization IS NOT NULL
  AND Location IS NOT NULL;
  
   select * from College_A_se_v;
-- create view college_a_sj_v

select * from college_a_sj;
CREATE VIEW College_A_SJ_V AS
SELECT *
FROM College_A_SJ
WHERE RollNo IS NOT NULL
  AND lastUpdate IS NOT NULL
  AND Name IS NOT NULL
  AND FatherName IS NOT NULL
  AND MotherName IS NOT NULL
  AND Batch IS NOT NULL
  AND Degree IS NOT NULL
  AND PresentStatus IS NOT NULL
  AND Organization IS NOT NULL
  AND Designation IS NOT NULL
  AND Location IS NOT NULL;
  
  select * from College_A_SJ_V;
  
  -- create view College_B_hs
  
  select * from college_b_hs;
  
  
CREATE VIEW College_B_HS_V AS
SELECT *
FROM College_B_HS
WHERE RollNo IS NOT NULL
  AND lastUpdate IS NOT NULL
  AND Name IS NOT NULL
  AND FatherName IS NOT NULL
  AND MotherName IS NOT NULL
  AND Batch IS NOT NULL
  AND Degree IS NOT NULL
  AND PresentStatus IS NOT NULL
  AND HSDegree IS NOT NULL
  AND EntranceExam IS NOT NULL
  AND Institute IS NOT NULL
  AND Location IS NOT NULL;
  select * from College_B_HS_V;

  select count(*) from College_B_HS_V;
  
  -- crate view college_b_se
  
   select * from College_B_se;
  CREATE VIEW College_B_SE_V AS
SELECT *
FROM College_B_SE
WHERE RollNo IS NOT NULL
  AND lastUpdate IS NOT NULL
  AND Name IS NOT NULL
  AND FatherName IS NOT NULL
  AND MotherName IS NOT NULL
  AND Batch IS NOT NULL
  AND Degree IS NOT NULL
  AND PresentStatus IS NOT NULL
  AND Organization IS NOT NULL
  AND Location IS NOT NULL;
  
  select count(*) from College_B_SE_V;
  
  -- create view college_b_sj

  select * from college_B_sj;
CREATE VIEW College_B_SJ_V AS
SELECT *
FROM College_B_SJ
WHERE RollNo IS NOT NULL
  AND lastUpdate IS NOT NULL
  AND Name IS NOT NULL
  AND FatherName IS NOT NULL
  AND MotherName IS NOT NULL
  AND Batch IS NOT NULL
  AND Degree IS NOT NULL
  AND PresentStatus IS NOT NULL
  AND Organization IS NOT NULL
  AND Designation IS NOT NULL
  AND Location IS NOT NULL;
  
  select count(*) from College_B_SJ_V;
  
  
  -- Create a procedure to convert specified columns to lowercase
DELIMITER $$

CREATE PROCEDURE College_A_HS_VP()
BEGIN
  -- Convert columns in College_A_HS_V

  select LOWER(Name),
     LOWER(FatherName),
      LOWER(MotherName) from College_A_HS_V;
      END  ;
call College_A_HS_VP();

DELIMITER $$

CREATE PROCEDURE College_A_se_VP()
BEGIN

  select LOWER(Name),
     LOWER(FatherName),
      LOWER(MotherName) from College_A_SE_V;
      END  ;
call College_A_se_VP();

DELIMITER $$

CREATE PROCEDURE College_A_sj_VP()
BEGIN

  select LOWER(Name),
     LOWER(FatherName),
      LOWER(MotherName) from College_A_SJ_V;
      END  ;
call College_A_SJ_VP();
  
  
  DELIMITER $$

CREATE PROCEDURE College_B_HS_VP()
BEGIN
  -- Convert columns in College_A_HS_V

  select LOWER(Name),
     LOWER(FatherName),
      LOWER(MotherName) from College_B_HS_V;
      END  ;
call College_B_HS_VP();

DELIMITER $$

CREATE PROCEDURE College_B_se_VP()
BEGIN

  select LOWER(Name),
     LOWER(FatherName),
      LOWER(MotherName) from College_B_SE_V;
      END  ;
call College_B_se_VP();

DELIMITER $$

CREATE PROCEDURE College_B_sj_VP()
BEGIN

  select LOWER(Name),
     LOWER(FatherName),
      LOWER(MotherName) from College_B_SJ_V;
      END  ;
call College_B_SJ_VP();
  