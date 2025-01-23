-- Basic Join
select * from job_facts;
select * from company_dim;
select * from skills_dim;
select * from skill_job_dim;

/*
select 
 	c.name,
	job.job_title_short,
	job.job_location,
	job.salary_year_avg
from job_facts as job
inner join company_dim as c on c.company_id = job.company_id
inner join skill_job_dim as sj on job.job_id = sj.job_id
inner join skills_dim as s on sj.skill_id = s.skill_id
limit 100;
*/

-- left join
SELECT
	j.job_id,
    j.job_title_short,
    c.name
from job_facts as j
left join
	company_dim as c on c.company_id = j.company_id
order by j.job_id asc;

-- right join
SELECT
	j.job_id,
    j.job_title_short,
    c.name
from job_facts as j
right join
	company_dim as c on c.company_id = j.company_id;

-- inner join
select
	j.job_id,
    j.job_title,
    sj.skill_id
from job_facts as j
inner join skill_job_dim as sj
	on j.job_id = sj.job_id
inner join skills_dim as s
	on sj.skill_id = s.skill_id;
    
	 