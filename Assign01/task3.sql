/*https://popsql.com/learn-sql/sql-server/how-to-calculate-cumulative-sum-running-total-in-sql-server*/

SELECT year_key, date_desc, division_desc, sum_pml_sls_dlr, AVG(sum_pml_sls_dlr) OVER (
PARTITION BY year_key, division_desc
ORDER BY trn_date
ROWS 31 PRECEDING
) AS avg_up_to_date

FROM(
SELECT year_key, F.CUR_TRN_DATE as trn_date, date_desc, division_desc, sum(pml_sls_dlr) as sum_pml_sls_dlr
FROM sales F, time T, store S, item I
WHERE F.cur_trn_date = T.cur_trn_date and F.store_key = S.store_key and F.item_key = I.item_key
GROUP BY  year_key, division_desc, F.CUR_TRN_DATE, date_desc)