SELECT SUM(reg_sls_dlr) AS SUM_Y1999
FROM sales AS S, time AS T
WHERE S.CUR_TRN_DATE = S.CUR_TRN_DATE AND T.YEAR_KEY = 1999