-- Basic Operation
select * from job_posting_fact;

select project_id, hours_rate, hours_rate - 10 as pp
from job_posting_fact;

select project_id, hours_rate, hours_rate * 10 as pp
from job_posting_fact;

select project_id, hours_rate, hours_rate/10 as pp
from job_posting_fact;

-- Basic Aggregation

select nerd_role, avg(hours_rate)
from job_posting_fact
group by nerd_role
order by hours_rate desc;

select nerd_role, min(hours_rate) as min, max(hours_rate) as max
from job_posting_fact
group by nerd_role