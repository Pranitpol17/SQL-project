use alumini;

SELECT 'higer studies' as 'cureer choice', (SELECT COUNT(*) FROM college_a_hs_v)/
((SELECT COUNT(*) FROM college_a_hs_v) +
 (SELECT COUNT(*) FROM college_a_se_v) + 
 (SELECT COUNT(*) FROM college_a_sj_v)) 
 * 100 'College A Percentage',
 (SELECT COUNT(*) FROM college_b_hs_v)/
((SELECT COUNT(*) FROM college_b_hs_v) +
 (SELECT COUNT(*) FROM college_b_se_v) + 
 (SELECT COUNT(*) FROM college_b_sj_v)) 
 * 100 'College b Percentage'
 union
SELECT 'self employed', (SELECT COUNT(*) FROM college_a_se_v)/
((SELECT COUNT(*) FROM college_a_hs_v) +
 (SELECT COUNT(*) FROM college_a_se_v) + 
 (SELECT COUNT(*) FROM college_a_sj_v)) 
 * 100 'College A Percentage',
 (SELECT COUNT(*) FROM college_b_se_v)/
((SELECT COUNT(*) FROM college_b_hs_v) +
 (SELECT COUNT(*) FROM college_b_se_v) + 
 (SELECT COUNT(*) FROM college_b_sj_v)) 
 * 100 'College b Percentage'
 union
 SELECT 'service job', (SELECT COUNT(*) FROM college_a_sj_v)/
((SELECT COUNT(*) FROM college_a_hs_v) +
 (SELECT COUNT(*) FROM college_a_se_v) + 
 (SELECT COUNT(*) FROM college_a_sj_v)) 
 * 100 'College A Percentage',
 (SELECT COUNT(*) FROM college_b_sj_v)/
((SELECT COUNT(*) FROM college_b_hs_v) +
 (SELECT COUNT(*) FROM college_b_se_v) + 
 (SELECT COUNT(*) FROM college_b_sj_v)) 
 * 100 'College b Percentage';