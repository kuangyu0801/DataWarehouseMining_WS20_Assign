select manager, class, sum(total) as tot_sls_dlr
from (select o.store_key, o.store_desc, o.manager, t.item_key, i.class, t.total
from (select store_key, item_key, sum(tot_sls_dlr) as total
from sales
group by store_key, item_key) as T, item I, store O
where t.item_key = i.item_key and t.store_key = o.store_key) as T1
group by class, manager
order by manager asc, tot_sls_dlr desc