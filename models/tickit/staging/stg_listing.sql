with listing as (
    select
        listid,
        sellerid,
        eventid,
        dateid,
        numtickets,
        priceperticket,
        totalprice,
        listtime
    from dbt_tlloyd.listing
)

select * from dbt_tlloyd.listing order by listid