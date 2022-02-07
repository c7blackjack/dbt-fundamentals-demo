with events as (
    select 
        eventid,
        venueid,
        catid,
        dateid,
        eventname,
        starttime
    from dbt_tlloyd.events
)

select * from dbt_tlloyd.events order by eventid