select month_desc, state_desc, style, sum(reg_sls_qty) as "reg_sls_qty"
from sales F, time T, store S, item I
where F.cur_trn_date = T.cur_trn_date and F.store_key = S.store_key and F.item_key = I.item_key and (T.year_key = 2000 or T.year_key = 2001)
group by rollup(month_desc, state_desc, style);

select month_desc, state_desc, style, sum(reg_sls_qty) as "reg_sls_qty"
from sales F, time T, store S, item I
where F.cur_trn_date = T.cur_trn_date and F.store_key = S.store_key and F.item_key = I.item_key and (T.year_key = 2000 or T.year_key = 2001)
group by cube(month_desc, state_desc, style);