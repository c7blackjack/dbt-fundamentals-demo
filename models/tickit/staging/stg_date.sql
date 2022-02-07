with date as (
    select 
        dateid,
        caldate,
        day,
        week,
        month,
        qtr,
        year,
        holiday
    from dbt_tlloyd.dates
)

select * from dbt_tlloyd.dates order by dateid