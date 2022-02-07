with users as (
    select * from dbt_tlloyd.users
)

select * from dbt_tlloyd.users order by userid