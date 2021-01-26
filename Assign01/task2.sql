select manager, class, sum(tot_sls_dlr) as tot_sls_dlr, row_number() over
                                                    (partition by manager
                                                     order by sum(tot_sls_dlr) desc) as rank
from sales T, item I, store O
where t.item_key = i.item_key and t.store_key = o.store_key
group by class, manager
order by manager asc, class asc;
