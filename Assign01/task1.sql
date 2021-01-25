select t1.department_desc, t1.type_desc, t1.turnover as "99_reg_sls_dlr", t2.turnover as "00_reg_sls_dlr", t3.turnover as "01_reg_sls_dlr", 100*(t2.turnover - t1.turnover) / t1.turnover as "99-00-inc-percent", 100*(t3.turnover - t2.turnover) / t2.turnover as "00-01-inc-percent"
from (
    select I.department_desc, O.type_desc, sum(reg_sls_dlr) as turnover
    from sales S, time T, item I, store O
    where S.CUR_TRN_DATE = T.CUR_TRN_DATE AND T.YEAR_KEY = 1999 AND S.ITEM_KEY = I.ITEM_KEY AND S.STORE_KEY = O.STORE_KEY
    group by I.department_desc, O.type_desc
    ) as t1,
    (select I.department_desc, O.type_desc, sum(reg_sls_dlr) as turnover
    from sales S, time T, item I, store O
    where S.CUR_TRN_DATE = T.CUR_TRN_DATE AND T.YEAR_KEY = 2000 AND S.ITEM_KEY = I.ITEM_KEY AND S.STORE_KEY = O.STORE_KEY
    group by I.department_desc, O.type_desc) as t2,
    (select I.department_desc, O.type_desc, sum(reg_sls_dlr) as turnover
    from sales S, time T, item I, store O
    where S.CUR_TRN_DATE = T.CUR_TRN_DATE AND T.YEAR_KEY = 2001 AND S.ITEM_KEY = I.ITEM_KEY AND S.STORE_KEY = O.STORE_KEY
    group by I.department_desc, O.type_desc) as t3
where t1.department_desc = t2.department_desc and t1.type_desc = t2.type_desc and t1.department_desc = t3.department_desc and t1.type_desc = t3.type_desc;

/*
group reg_sls_dlr by department_desc and type_desc to calculate sum of each combination
then use department_desc and type_desc as unique key to calculate difference and increase
*/