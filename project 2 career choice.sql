SELECT 'Higher studies',
    (SELECT COUNT(*) FROM college_a_hs) / ((SELECT COUNT(*) FROM college_a_hs) + (SELECT COUNT(*) FROM college_a_se) + 
    (SELECT COUNT(*) FROM college_a_sj)) * 100 'college A percentage',
    (SELECT COUNT(*) FROM college_b_hs) / ((SELECT COUNT(*) FROM college_b_hs) + (SELECT COUNT(*) FROM college_b_se) + 
    (SELECT COUNT(*) FROM college_b_sj)) * 100 'college B percentage'
    union
SELECT 'self employes' ,
	 (SELECT COUNT(*) FROM college_a_se) / ((SELECT COUNT(*) FROM college_a_hs) + (SELECT COUNT(*) FROM college_a_se) + 
    (SELECT COUNT(*) FROM college_a_sj)) * 100 'college A percentage',
    (SELECT COUNT(*) FROM college_b_se) / ((SELECT COUNT(*) FROM college_b_hs) + (SELECT COUNT(*) FROM college_b_se) + 
    (SELECT COUNT(*) FROM college_b_sj)) * 100 'college B percentage'
    union
SELECT 'service/Job' ,
	 (SELECT COUNT(*) FROM college_a_sj) / ((SELECT COUNT(*) FROM college_a_hs) + (SELECT COUNT(*) FROM college_a_se) + 
    (SELECT COUNT(*) FROM college_a_sj)) * 100 'college A percentage',
    (SELECT COUNT(*) FROM college_b_sj) / ((SELECT COUNT(*) FROM college_b_hs) + (SELECT COUNT(*) FROM college_b_se) + 
    (SELECT COUNT(*) FROM college_b_sj)) * 100 'college B percentage'