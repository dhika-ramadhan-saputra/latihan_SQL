-- Basic Select --
select * from job_posting_fact;

select * from job_posting_fact limit 10;

select distinct nerd_role, project_tool 
from job_posting_fact
where nerd_role = "Data Analyst";

select distinct nerd_role
from job_posting_fact;

/*
ini comment paragraf
*/

select nerd_role , avg(hours_spent) as avg_hours_spent
from job_posting_fact
group by nerd_role
order by hours_spent desc;

select distinct nerd_role
from job_posting_fact
where nerd_role <> "Data Analyst" and nerd_role <> "Senior Data Analyst";

select project_id, nerd_role, hours_spent
from job_posting_fact
where hours_spent >= 500
order by hours_spent desc;

select project_id, nerd_role, hours_spent
from job_posting_fact
where hours_spent >= 500 and hours_spent <= 700;

select nerd_role, project_tool
from job_posting_fact
where project_tool in ('sql', 'tableau')
group by nerd_role;
group by ner