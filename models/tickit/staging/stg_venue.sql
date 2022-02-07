with venue as (
    select * from dbt_tlloyd.venue
)

select * from dbt_tlloyd.venue order by venueid